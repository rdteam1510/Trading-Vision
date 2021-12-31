from pymongo import MongoClient
import pandas as pd
from fetch_company_info import *

# Connect to MongoClient
client = MongoClient(

)

headers = [
    "StockExchange",
    "Ticker",
    "CompanyName",
    "Address",
    "Website",
    "Industry",
    "Info",
    "BasicEPS",
    "DilutedEPS",
    "P/E",
    "BookValue",
    "ListedShares",
    "OutstandingShares",
    "MarketCapitalization",
    "LatestDivident",
    "NetProfit",
    "TotalAssets",
    "ROA",
    "ROE",
]


def read_stocks_text_file(namefile):
    """
    Read stocks from a text file, remove end-line breaks, convert them into a list
    """
    file = open(f"E:\ITEC\AUT\RD\R&D - Trading Vision Project\SourceCode\stockstickers\{namefile}.txt", "r")
    content = file.read()
    stocks_list = content.split(", ")
    file.close()
    return stocks_list


df = pd.DataFrame(columns=headers)


def my_pandas_dataFrame(namefile):
    global df
    se_list = read_stocks_text_file(namefile)
    for stock in se_list:
        result = fetch_company_info(stock, namefile)
        df = df.append(
            pd.Series(result, index=df.columns), ignore_index=True
        )
        print("Complete", stock)
    import_to_mongodb(df, "CompaniesInfo")


# Function: import data to mongodb
def import_to_mongodb(se, name):
    db = client["CompanyInfo_DEMO"]
    data = se.to_dict(orient="records")
    for row in data:
        db[f"{name}"].find_one_and_replace(
            {"Ticker": row["Ticker"]}, row, upsert=True
        )
