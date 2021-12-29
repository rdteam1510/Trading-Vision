from pymongo import MongoClient

# Connect to MongoClient
client = MongoClient(
  
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
