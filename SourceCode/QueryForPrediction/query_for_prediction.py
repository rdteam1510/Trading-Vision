from pymongo import MongoClient
import pandas as pd
import datetime

client = MongoClient(

)

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
    global main_df
    data = db["Stocks"].find().sort("TimeStamp", -1).limit(300)
    df = pd.DataFrame(data)
    df = df[["StockExchange", "Time", "Ticker", "PreviousClose"]]
    df = df.rename(columns={"PreviousClose": "Closed"})
    df = df.sort_values(by=["Ticker"])
    main_df = main_df.append(df)


def Processed_Data():
    Processing()
    main_df["Time"] = pd.to_datetime(pd.to_datetime(main_df['Time']).dt.strftime("%Y-%m-%d")) - pd.Timedelta(1, unit='d')
    return main_df

