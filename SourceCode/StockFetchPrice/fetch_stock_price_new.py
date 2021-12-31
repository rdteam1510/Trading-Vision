import requests
import time, datetime
from pymongo import MongoClient

client = MongoClient()

TIME_STAMP = time.time()

# These time are used to limit redundant request in HOSE stock exchange.
hose_start_time = "02:14"
hose_stop_time = "07:50"
test = datetime.datetime.utcfromtimestamp(TIME_STAMP).strftime("%H:%M")

columns = [
    "TimeStamp",
    "Time",
    "StockExchange",
    "a",
    "b",
    "c",
    "d",
    "v",
    "w",
    "n",
    "l",
]


columns = [
    "TimeStamp",
    "Time",
    "StockExchange",
    "a",
    "b",
    "c",
    "d",
    "v",
    "w",
    "n",
    "l",
]

new_columns = [
    "TimeStamp",
    "Time",
    "StockExchange",
    "Ticker",
    "PreviousClosed",
    "Ceiling",
    "Floor",
    "Highest",
    "Lowest",
    "Volume",
    "Match",]


stock_exchanges = {
    "hose": "https://banggia.cafef.vn/stockhandler.ashx?center=1",
    "hnx": "https://banggia.cafef.vn/stockhandler.ashx?center=2",
    "upcom": "https://banggia.cafef.vn/stockhandler.ashx?center=9",
}


def read_stocks_text_file(namefile):
    """
    Read stocks from text file, remove end-line breaks, convert them into a list
    :param: namefile
    :return: a list of stocks
    """
    file = open(
        f"stockstickers/{namefile}.txt",
        "r",
    )
    content = file.read()
    stocks_list = content.split(", ")
    file.close()
    return stocks_list


def fetch_stock(url, se):
    my_data = []

    try:
        response = requests.get(url, timeout=3)
        response.raise_for_status()
    except requests.exceptions.ConnectionError as errc:
        print("Error Connecting:", errc)
    else:
        results = response.json()
        for item in results:
            item.update({"TimeStamp": TIME_STAMP})
            item.update({"StockExchange": se})
            new_item = {key: item[key] for key in columns}
            if new_item["Time"] != None:
                new_item["Time"] = time.mktime(
                    datetime.datetime.strptime(
                        new_item["Time"], "%H:%M %d/%m/%Y"
                    ).timetuple()
                )
            else:
                new_item["Time"] = TIME_STAMP
            new_item = dict(zip(new_columns, list(new_item.values())))
            my_data.append(new_item)

        se_stock = read_stocks_text_file(se)
        my_data = [i for i in my_data if i["Ticker"] in se_stock]

        db = client["Stocks"]
        db["Stocks"].insert_many(my_data)


for name, se_url in stock_exchanges.items():
    if name == "hose" and hose_start_time <= test <= hose_stop_time:
        fetch_stock(se_url, name)
    elif name == "hnx" or name == "upcom":
        fetch_stock(se_url, name)
