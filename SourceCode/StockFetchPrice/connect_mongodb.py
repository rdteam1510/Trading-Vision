from pymongo import MongoClient

# Connect to MongoClient
client = MongoClient(
<<<<<<< HEAD
    "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?authSource=admin&replicaSet=atlas-kkwgbw-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true"
=======
  
>>>>>>> 592e6b3276e45731d511b3f128b94732e40f640c
)


def import_to_mongodb(row):
    # Function: import data to mongodb
    """
    Import stock prices to mongodb

    :param se: pandas.DataFrame
    :param name: str
    :return: None
    """
<<<<<<< HEAD
    db = client["Stocks_DEMO2"]
    data = se.to_dict(orient="records")
    for row in data:
        existing_document = db[f"{name}"].find_one(row)
        if not existing_document:
            db[f"{name}"].insert_one(row)
=======
    db = client["Stocks"]
    existing_document = db["Stocks"].find_one(row)
    if not existing_document:
        db["Stocks"].insert_one(row)
>>>>>>> 592e6b3276e45731d511b3f128b94732e40f640c
