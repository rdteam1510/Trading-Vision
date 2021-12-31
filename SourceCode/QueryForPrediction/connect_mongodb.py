from pymongo import MongoClient
import pandas as pd
import datetime

client = MongoClient(
    "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?authSource=admin&replicaSet=atlas-kkwgbw-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true"
)


def import_to_mongodb(se):
    # Function: import data to mongodb
    """
    Import stock prices to mongodb

    :param se: pandas.DataFrame
    :param name: str
    :return: None
    """
    db = client["Processed_Stock_Price_DEMO"]
    data = se.to_dict(orient="records")
    for row in data:
        existing_document = db["Processed_Stock_Price_DEMO"].find_one(row)
        if not existing_document:
            db["Processed_Stock_Price_DEMO"].insert_one(row)
