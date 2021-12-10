from bs4 import BeautifulSoup
import requests
from pymongo import MongoClient
import pandas as pd

# Connect to MongoClient
client = MongoClient(
    "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?retryWrites=true&w=majority"
)

stock_exchanges = ["hose", "hnx", "upcom"]


def read_stocks_text_file(namefile):
    """
    Read stocks from a text file, remove end-line breaks, convert them into a list
    """
    file = open(f".\stocktickers\{namefile}.txt", "r")
    content = file.read()
    stocks_list = content.split(", ")
    file.close()
    return stocks_list


headers = [
    "Ticker",
    "CompanyName",
    "Category",
    "Info",
    "Address",
    "Link",
    "Revenue",
    "Profit",
    "ROE",
    "MarketCap",
    "EPS",
    "P/E",
]

# Function: Set link for beautifulSoup
def set_bs4(ticker, pagetype):
    url = f"https://www.stockbiz.vn/Stocks/{ticker}/{pagetype}.aspx"
    result = requests.get(url)
    doc = BeautifulSoup(result.text, "html.parser")
    return doc


# Function: Get company info
def fetch_company_info(ticker):
    doc = set_bs4(ticker, "Snapshot")
    doc2 = set_bs4(ticker, "Overview")
    # Get company name
    company_name = doc.find("td", {"valign": "top"}).b.text
    # Get category
    category = doc.find("div", {"class": "industry"}).a.text
    # Get company brief info
    info = doc.find("div", {"class": "text_content"}).text
    # Get company address
    addr = doc.find("td", {"valign": "top"}).b.next_sibling
    # Get company link
    link = doc.find_all("td", {"class": "right"})[2].a.text
    # Get revenue for latest 4 quarters
    revenue = doc2.find_all("td", {"class": "td_right"})[5].text
    # Get profit for latest 4 quarters
    profit = doc2.find_all("td", {"class": "td_right"})[6].text
    # Get roe for latest 4 quarters
    roe = doc2.find_all("td", {"class": "td_right"})[8].text
    # Get company market capital
    market_cap = doc2.find_all("td", {"class": "td_right"})[0].text
    # Get company eps
    eps = doc2.find_all("td", {"class": "td_right"})[3].text
    # Get company P/E
    pe = doc2.find_all("td", {"class": "td_right"})[4].text

    result = [
        ticker,
        company_name.strip(),
        category.strip(),
        info.strip(),
        addr.strip(),
        link.strip(),
        revenue.strip(),
        profit.strip(),
        roe.strip(),
        market_cap.strip(),
        eps.strip(),
        pe.strip(),
    ]
    return result


def my_pandas_dataFrame(namefile):
    df = pd.DataFrame(columns=headers)
    se_list = read_stocks_text_file(namefile)
    for stock in se_list:
        result = fetch_company_info(stock)
        df = df.append(
            pd.Series(result, index=df.columns), ignore_index=True
        )
    return df


# Function: import data to mongodb
def import_to_mongodb(se, name):
    db = client["CompanyInfo_demo"]
    data = se.to_dict(orient="records")
    for row in data:
        existing_document = db[f"{name}"].find_one(row)
        if not existing_document:
            db[f"{name}"].insert_one(row)


# Main function
def main():
    for stock_exchange in stock_exchanges:
        my_df = my_pandas_dataFrame(stock_exchange)
        import_to_mongodb(my_df, stock_exchange)


main()
