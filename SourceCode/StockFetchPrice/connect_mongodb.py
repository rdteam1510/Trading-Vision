from pymongo import MongoClient

# Connect to MongoClient
client = MongoClient(
    "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?authSource=admin&replicaSet=atlas-kkwgbw-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true"
)


def import_to_mongodb(data):
    # Function: import data to mongodb
    """
    Import stock prices to mongodb

    :param row: list
    :return: None
    """
    db = client["Stocks"]
    db["Stocks"].insert_many(data)
