from pymongo import MongoClient
import pandas as pd
import datetime

client = MongoClient(
)


def import_to_mongodb(se):
    # Function: import data to mongodb
    """
    Import stock prices to mongodb

    :param se: pandas.DataFrame
    :param name: str
    :return: None
    """
    db = client["Processed_Stock_Price"]
    data = se.to_dict(orient="records")
    for row in data:
        existing_document = db["Processed_Stock_Price"].find_one(row)
        if not existing_document:
            db["Processed_Stock_Price"].insert_one(row)
