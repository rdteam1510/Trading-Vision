import requests
import pandas as pd
import pymongo
from pymongo import MongoClient
import os, json
client = MongoClient("mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingStock?retryWrites=true&w=majority")

hose_URL = "https://banggia.cafef.vn/stockhandler.ashx?center=1"
hnx_URL = "https://banggia.cafef.vn/stockhandler.ashx?center=2"
upcom_URL = "https://banggia.cafef.vn/stockhandler.ashx?center=9"

# Lay du lieu ve roi return vao bien se (Stock Exchange). se la 1 bien DataFrame cua Pandas.
def fetch_function(url):
    url_se = url
    response = requests.get(url_se)
    se = pd.DataFrame.from_dict(
        pd.json_normalize(response.json()), orient="columns"
    )
    se = se[["Time", "a", "b", "c", "d", "v", "w", "n", "l"]]
    se = se.nlargest(100, "n")
    return se

# Ham chuyen DataFrame thanh file csv
def my_to_csv(se, name):
    se.to_csv(
        "E:\ITEC\AUT\R&D\R&D - Trading Vision Project\Source Code\Backup\Data\{sename}_data.csv".format(
            sename=name
        ),
        mode="a",
        index=False,
        header=False,
    )
    
# Ham main chay lay du lieu tu 3 san
def fetch_real_data():
    hose_name = "hose"
    hnx_name = "hnx"
    upcom_name = "upcom"

    hose = fetch_function(hose_URL)
    my_to_csv(hose, hose_name)
    hnx = fetch_function(hnx_URL)
    my_to_csv(hnx, hnx_name)
    upcom = fetch_function(upcom_URL)
    my_to_csv(upcom, upcom_name)


fetch_real_data()


# db = client['TradingVision']
# df = pd.read_csv("E:\ITEC\AUT\R&D\R&D - Trading Vision Project\Source Code\Backup\Data\hose_data.csv")
# data = df.to_dict(orient = "records")
# db.HOSE.insert_many(data)


def import_to_mongodb(name):
    db = client['TradingVision']
    df = pd.read_csv("E:\ITEC\AUT\R&D\R&D - Trading Vision Project\Source Code\Backup\Data\{sename}_data.csv".format(
            sename=name
        ))
    data = df.to_dict(orient = "records")
    db['{}'.format(name)].insert_many(data) 
import_to_mongodb('hose')
import_to_mongodb('hnx')
import_to_mongodb('upcom')