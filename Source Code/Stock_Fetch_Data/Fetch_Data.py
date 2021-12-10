import requests
import pandas as pd
import pymongo
from pymongo import MongoClient
import os, json, datetime
client = MongoClient("mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?retryWrites=true&w=majority")

headers = ["TimeStamp",
           "Time",
           "Name",
           "PreviousClosed",
           "Ceiling",
           "Floor",
           "Highest",
           "Lowest",
           "Volume",
           "Match"
           ]

stock_exchanges = ["hose", "hnx", "upcom"]

hose_URL = "https://banggia.cafef.vn/stockhandler.ashx?center=1"
hnx_URL = "https://banggia.cafef.vn/stockhandler.ashx?center=2"
upcom_URL = "https://banggia.cafef.vn/stockhandler.ashx?center=9"
url_se = [hose_URL,hnx_URL,upcom_URL]

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
    se.insert(0, 'TimeStamp', datetime.datetime.now().strftime("%H:%M %d/%m/%Y"))
    se.columns = headers
    return se

def import_to_mongodb(se,name):
    db = client['StockPrice_demo']
    data = se.to_dict(orient = "records")
    for row in data:
        existing_document = db[f'{name}'].find_one(row)
        if not existing_document:
            db[f'{name}'].insert_one(row)
        else:
            print(str(row) + "existed")
   
#-----------------------------------------------------------------------------------------------------------------------------------
#Fetch data    

#Import to MongoDB
for stock_exchange in stock_exchanges:
    se_list = read_stocks_text_file(stock_exchange)
    for stock in se_list:
        for i in url_se:
            result = fetch_function(i,stock)
        import_to_mongodb(result,se_list)
