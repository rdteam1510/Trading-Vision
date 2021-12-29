from pymongo import MongoClient

# Connect to MongoClient
client = MongoClient(
    "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?authSource=admin&replicaSet=atlas-kkwgbw-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true"
)


def import_to_mongodb(row):
    # Function: import data to mongodb
    """
    Import stock prices to mongodb

    :param se: pandas.DataFrame
    :param name: str
    :return: None
    """
    db = client["Stocks"]
    existing_document = db["Stocks"].find_one(row)
    if not existing_document:
        db["Stocks"].insert_one(row)
