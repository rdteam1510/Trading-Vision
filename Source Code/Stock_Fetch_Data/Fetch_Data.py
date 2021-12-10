import requests
import pandas as pd
from pymongo import MongoClient
import datetime

# Connect to MongoClient
client = MongoClient(
    "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?retryWrites=true&w=majority"
)

# All columns needs fetching data
headers = [
    "TimeStamp",
    "Time",
    "Name",
    "PreviousClosed",
    "Ceiling",
    "Floor",
    "Highest",
    "Lowest",
    "Volume",
    "Match",
]

stock_exchanges = {
    "hose": "https://banggia.cafef.vn/stockhandler.ashx?center=1",
    "hnx": "https://banggia.cafef.vn/stockhandler.ashx?center=2",
    "upcom": "https://banggia.cafef.vn/stockhandler.ashx?center=9",
}

# Function: read stocks from txt file
def read_stocks_text_file(namefile):
    """
    Read stocks from a text file, remove end-line breaks, convert them into a list
    """
    file = open(f".\stockstickers\{namefile}.txt", "r")
    content = file.read()
    stocks_list = content.split(", ")
    file.close()
    return stocks_list


# Lay du lieu ve roi return vao bien se (Stock Exchange). se la 1 bien DataFrame cua Pandas.
def fetch_function(url, se_stocks):
    url_se = url

    response = requests.get(url_se)
    se = pd.DataFrame.from_dict(
        pd.json_normalize(response.json()), orient="columns"
    )
    se = se[["Time", "a", "b", "c", "d", "v", "w", "n", "l"]]
    se = se[se["a"].isin(se_stocks)]
    se.insert(
        0, "TimeStamp", datetime.datetime.now().strftime("%H:%M %d/%m/%Y")
    )
    se.columns = headers
    return se


# Function: import data to mongodb
def import_to_mongodb(se, name):
    db = client["StockPrice_demo"]
    data = se.to_dict(orient="records")
    for row in data:
        existing_document = db[f"{name}"].find_one(row)
        if not existing_document:
            db[f"{name}"].insert_one(row)
        else:
            print(str(row) + "existed")


# Main function: get stocks according to se_name, and se_url
def main(namefile, se_url):
    list_stocks = read_stocks_text_file(namefile)
    se = fetch_function(se_url, list_stocks)
    import_to_mongodb(se, namefile)


for name, se_url in stock_exchanges.items():
    main(name, se_url)
