from pymongo import MongoClient
import pandas as pd
import datetime, time

client = MongoClient()

db = client["Stocks"]

keys_drop = [
    "_id",
    "Ceiling",
    "Floor",
    "Match",
    "Volume",
    "Highest",
    "Lowest",
    "TimeStamp",
]


db = client["Stocks"]
se_lists = ["hose", "hnx", "upcom"]
headers = ["StockExchange", "Time", "Ticker", "Closed"]
main_df = pd.DataFrame(columns=headers)


def Processing():
    """
    Get the latest 100 stocks according to the TimeStamp and put them into DataFrame. Just chose values from 3 columns Time, Name, PreviousClosed (changed it to Closed). Sort documents by their ticker labels aphabetical order. Finally, append them in to `main_df`

    :param se: str
    :return: None
    """
    total_data = []
    data = db["Stocks"].find().sort("TimeStamp", -1).limit(300)
    for item in data:
        {item.pop(key) for key in keys_drop}
        item["Time"] = (
            datetime.datetime.utcfromtimestamp(item["Time"])
            - datetime.timedelta(days=1)
        ).strftime("%d/%m/%Y")
        total_data.append(item)

    db2 = client["ForPrediction"]
    db2["ForPrediction"].insert_many(total_data)


Processing()
