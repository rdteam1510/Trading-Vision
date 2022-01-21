from pymongo import MongoClient
import datetime, time

client = MongoClient('localhost',27017)


db = client["Stocks"]
se_lists = ["hose", "hnx", "upcom"]

new_columns = ["Time","StockExchange","Ticker","Close"]


def Processing():
    """
    Get the latest 100 stocks according to the TimeStamp and put them into DataFrame. Just chose values from 3 columns Time, Name, PreviousClosed (changed it to Closed). Sort documents by their ticker labels aphabetical order. Finally, append them in to `main_df`

    :param se: str
    :return: None
    """
    total_data = []
    for se in se_lists:
        data = (
            db["Stocks"]
            .find(
                {"StockExchange": se},
                {
                    "_id": 0,
                    "StockExchange": 1,
                    "Time": 1,
                    "Ticker": 1,
                    "PreviousClose": 1,
                },
            )
            .sort("TimeStamp", -1)
            .limit(100)
        )
        for item in data:
            is_monday = datetime.datetime.utcfromtimestamp(
                item["Time"]
            ).strftime("%A")
            if is_monday == "Monday":
                item["Time"] = (
                    datetime.datetime.fromtimestamp(item["Time"])
                    - datetime.timedelta(days=3)
                ).strftime("%d/%m/%Y")
            else:
                item["Time"] = (
                    datetime.datetime.fromtimestamp(item["Time"])
                    - datetime.timedelta(days=1)
                ).strftime("%d/%m/%Y")
            item["Time"] = time.mktime(
                        datetime.datetime.strptime(
                            item["Time"], "%d/%m/%Y"
                        ).timetuple()
                    ) 
            item = dict(zip(new_columns, list(item.values())))
            total_data.append(item)
    db2 = client["ForPrediction"]
    db2["ForPrediction"].insert_many(total_data)


Processing()