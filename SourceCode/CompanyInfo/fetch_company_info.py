from pymongo import MongoClient
from bs4 import BeautifulSoup
import numpy as np
import requests, cchardet
import time

my_request = requests.Session()
client = MongoClient(
    "localhost", 27017
)
db = client["TradingVision"]
se_list = ["hose", "hnx", "upcom"]
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
    "TotalAssets",
    "ROA",
    "ROE",
]

def read_stocks_text_file(namefile):
    """
    Read stocks from text file, remove end-line breaks, convert them into a list
    :param: namefile
    :return: a list of stocks
    """
    file = open(
        f"./stockstickers/{namefile}.txt",
        "r",
    )
    content = file.read()
    stocks_list = content.split(", ")
    file.close()
    return np.array(stocks_list)


def set_bs4(ticker):
    """
    Set link for beautifulSoup
    :param ticker: str
    :return: doc1, doc2: bs4.BeautifulSoup
    """

    url1 = f"https://vcbs.com.vn/en/Research/Index/0?stocksymbol={ticker}"
    url2 = f"https://vcbs.com.vn/en/Research/Company?stocksymbol={ticker}"

    result1 = my_request.get(url1)
    result2 = my_request.get(url2)

    doc1 = BeautifulSoup(result1.text, "lxml")
    doc2 = BeautifulSoup(result2.text, "lxml")
    return [doc1, doc2]


# Function: Get company info
def fetch_company_info(tickers):
    """
    Get company info and put it into the MongoDB
    :param ticker: str
    :param se: str
    :return: None
    """

    my_data = []
    for ticker in tickers:
        start = time.perf_counter()
        doc1, doc2 = set_bs4(ticker)

        # PROFILE
        try:
            se = (
                doc2.find("h3", {"class": "typo_title myriad_pro_condensed"})
                .text.split(" ")[-1]
                .strip("()")
                .lower()
            )
        except:
            se = ""
        try:
            name = doc2.find_all("td")[1].text.strip()
        except:
            name = ""
        try:
            addr = doc2.find_all("td")[7].text.strip()
        except:
            addr = ""
        try:
            website = doc2.find_all("td")[13].text.strip()
        except:
            website = ""
        try:
            industry = doc2.find_all("td")[15].text.strip()
        except:
            industry = ""
        try:
            info = doc2.find_all(
                "div", {"class": "profile_content_detail_wrap"}
            )[3].p.text.strip()
        except:
            info =""
        # FINANCIALS
        try:
            basic_eps = doc1.find_all("td")[7].text.strip()
        except:
            basic_eps = ""
        try:
            diluted_eps = doc1.find_all("td")[9].text.strip()
        except:
            diluted_eps = ""
        try:
            pe = doc1.find_all("td")[11].text.strip()
        except:
            pe = ""
        try:
            book_value = doc1.find_all("td")[13].text.strip()
        except:
            book_value = ""
        try:
            listed_shares = doc1.find_all("td")[15].text.strip()
        except:
            listed_shares = ""
        try:
            shares_outstanding = doc1.find_all("td")[17].text.strip()
        except:
            shares_outstanding = ""
        try:
            market_capital = doc1.find_all("td")[19].text.strip()
        except:
            market_capital = ""
        try:
            total_assets = (
                doc1.find("td", text="Total Assets")
                .find_next("td")
                .text.strip()
            )
        except:
            total_assets = ""
        try:
            roa = doc1.find("td", text="ROA").find_next("td").text.strip()
        except:
            roa = ""
        try:
            roe = doc1.find("td", text="ROE").find_next("td").text.strip()
        except:
            roe = ""
        transform_dict = dict(
            zip(
                headers,
                [
                    se,
                    ticker,
                    name,
                    addr,
                    website,
                    industry,
                    info,
                    basic_eps,
                    diluted_eps,
                    pe,
                    book_value,
                    listed_shares,
                    shares_outstanding,
                    market_capital,
                    total_assets,
                    roa,
                    roe,
                ],
            )
        )
        my_data.append(transform_dict)
        finish = time.perf_counter()
        print(f"Finish in {round(finish-start,4)}")
    return my_data



total_stocks = np.array([])
for se in se_list:
    total_stocks = np.concatenate(
        (total_stocks, read_stocks_text_file(se)), axis=0
    )


result = fetch_company_info(total_stocks)
db['companyinfos'].delete_many({})
db["companyinfos"].insert_many(result)

