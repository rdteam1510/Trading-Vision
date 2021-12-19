from pymongo import MongoClient
import pandas as pd
import datetime

client = MongoClient(
    "mongodb://localhost:27017/?readPreference=primary&appname=MongoDB%20Compass&directConnection=true&ssl=false"
)

db = client["Stock_Price"]
se_lists = ["hose", "hnx", "upcom"]
headers = ["Time", "Name", "Closed"]
main_df = pd.DataFrame(columns=headers)


def Processing(se):
    """
    Get the latest 100 stocks according to the TimeStamp and put them into DataFrame. Just chose values from 3 columns Time, Name, PreviousClosed (changed it to Closed). Sort documents by their ticker labels aphabetical order. Finally, append them in to `main_df`

    :param se: str
    :return: None
    """
    global main_df
    data = db[f"{se}"].find().sort("TimeStamp", -1).limit(100)
    df = pd.DataFrame(data)
    df = df[["Time", "Name", "PreviousClosed"]]
    df = df.rename(columns={"PreviousClosed": "Closed"})
    df = df.sort_values(by=["Name"])
    main_df = main_df.append(df)
    


def Processed_Data():
    for se in se_lists:
        Processing(se)
    main_df['Time'] = main_df['Time'] - pd.to_timedelta(1, unit='d')
    main_df['Time'] = pd.to_datetime(main_df['Time'].dt.strftime('%d/%m/%Y'))
    return main_df
    
    
