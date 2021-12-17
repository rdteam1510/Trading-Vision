from pymongo import MongoClient
import pandas as pd
import datetime

client = MongoClient(
    "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?retryWrites=true&w=majority"
)

db = client["DemoStockPrice"]
se_lists = ["hose", "hnx", "upcom"]
headers = ["Time", "Name", "Closed"]
main_df = pd.DataFrame(columns=headers)


def read_stocks_text_file(namefile):
    """
    Read stocks from text file, remove end-line breaks, convert them into a list
    :param: namefile
    :return: a list of stocks
    """
    file = open(f"..\stockstickers\{namefile}.txt", "r")
    content = file.read()
    stocks_list = content.split(", ")
    file.close()
    return stocks_list


def Processing(se):
    """
    Get the latest 100 stocks according to the TimeStamp and put them into DataFrame. Just chose values from 3 columns Time, Name, PreviousClosed (changed it to Closed). Sort documents by their ticker labels aphabetical order. Finally, append them in to `main_df`

    :param se: str
    :return: None
    """
    data = db[f"{se}"].find({}).sort("TimeStamp", -1).limit(99)
    df = pd.DataFrame(data)
    df = df[["Time", "Name", "PreviousClosed"]]
    df = df.rename(columns={"PreviousClosed": "Closed"})
    df = df.sort_values(by=["Name"])
    global main_df
    main_df = main_df.append(df)


def main():
    for se in se_lists:
        Processing(se)


if __name__ == "__main__":
    main()
    main_df.to_csv("test.csv")
