from pymongo import MongoClient
import pandas as pd
from fetch_company_info import *

# Connect to MongoClient
client = MongoClient(
    "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?retryWrites=true&w=majority"
)

headers = [
    "Ticker",
    "CompanyName",
    "Category",
    "Info",
    "Link",
    "MarketCap",
    "TotalSharesOutstanding",
    "P/E",
    "P/B",
    "P/S",
    "NetDebt",
    "TotalDebt",
    "TotalAssets",
    "ROA",
    "ROE",
    "BasicEPS",
    "EPS Diluted",
    "NetIncome",
    "GrossProfit",
    "TotalRevenue",
]

def read_stocks_text_file(namefile):
    """
    Read stocks from a text file, remove end-line breaks, convert them into a list
    """
    file = open(f".\stocktickers\{namefile}.txt", "r")
    content = file.read()
    stocks_list = content.split(", ")
    file.close()
    return stocks_list


def my_pandas_dataFrame(namefile):
    df = pd.DataFrame(columns=headers)
    se_list = read_stocks_text_file(namefile)
    if namefile != 'UPCOM':
        for stock in se_list:
            result = fetch_company_info(stock, namefile)
            df = df.append(
                pd.Series(result, index=df.columns), ignore_index=True
            )
    else:
        for stock in se_list:
            result = fetch_company_info_upcom(stock, namefile)
            df = df.append(
                pd.Series(result, index=df.columns), ignore_index=True
            )
    return df


# Function: import data to mongodb
def import_to_mongodb(se, name):
    db = client["MinhCompanyInfo_demo"]
    data = se.to_dict(orient="records")
    for row in data:
        existing_document = db[f"{name}"].find_one(row)
        if not existing_document:
            db[f"{name}"].insert_one(row)