from pymongo import MongoClient

# Connect to MongoClient
client = MongoClient(
<<<<<<< HEAD
    "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?authSource=admin&replicaSet=atlas-kkwgbw-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true"
)
=======
    )
>>>>>>> 4b84711287805359f4fd6fac23619823223fc12b


def import_to_mongodb(data):
    # Function: import data to mongodb
    """
    Import stock prices to mongodb

    :param row: list
    :return: None
    """

    db = client["Stocks"]
<<<<<<< HEAD
    db["Stocks"].insert_many(data)
=======
    existing_document = db["Stocks"].find_one(row)
    if not existing_document:
        db["Stocks"].insert_one(row)

>>>>>>> 4b84711287805359f4fd6fac23619823223fc12b
