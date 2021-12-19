from pymongo import MongoClient

# Connect to MongoClient
client = MongoClient(
    "mongodb://localhost:27017/?readPreference=primary&appname=MongoDB%20Compass&directConnection=true&ssl=false"
    )


def import_to_mongodb(se, name):
    # Function: import data to mongodb
    """
    Import stock prices to mongodb

    :param se: pandas.DataFrame
    :param name: str
    :return: None
    """
    db = client["Stocks"]
    data = se.to_dict(orient="records")
    for row in data:
        existing_document = db[f"{name}"].find_one(row)
        if not existing_document:
            db[f"{name}"].insert_one(row)
