from pymongo import MongoClient
from bs4 import BeautifulSoup
import numpy as np
import requests, time, cchardet

my_request = requests.Session()
client = MongoClient(
    "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?authSource=admin&replicaSet=atlas-kkwgbw-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true"
)
db = client["CompanyInfo"]
se_list = ["hose", "hnx", "upcom"]
# se_list = ['test']
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
        f"stockstickers/{namefile}.txt",
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
        se = (
            doc2.find("h3", {"class": "typo_title myriad_pro_condensed"})
            .text.split(" ")[-1]
            .strip("()")
            .lower()
        )
        name = doc2.find_all("td")[1].text.strip()
        addr = doc2.find_all("td")[7].text.strip()
        website = doc2.find_all("td")[13].text.strip()
        industry = doc2.find_all("td")[15].text.strip()
        try:
            info = doc2.find_all(
                "div", {"class": "profile_content_detail_wrap"}
            )[3].p.text.strip()
        except:
            info = doc2.find_all(
                "div", {"class": "profile_content_detail_wrap"}
            )[3].text.strip()
        # FINANCIALS
        try:
            basic_eps = doc1.find_all("td")[7].text.strip()
            diluted_eps = doc1.find_all("td")[9].text.strip()
            pe = doc1.find_all("td")[11].text.strip()
            book_value = doc1.find_all("td")[13].text.strip()
            listed_shares = doc1.find_all("td")[15].text.strip()
            shares_outstanding = doc1.find_all("td")[17].text.strip()
            market_capital = doc1.find_all("td")[19].text.strip()
            total_assets = (
                doc1.find("td", text="Total Assets")
                .find_next("td")
                .text.strip()
            )
            roa = doc1.find("td", text="ROA").find_next("td").text.strip()
            roe = doc1.find("td", text="ROE").find_next("td").text.strip()
        except:
            basic_eps = (
                diluted_eps
            ) = (
                pe
            ) = (
                book_value
            ) = (
                listed_shares
            ) = (
                shares_outstanding
            ) = (
                market_capital
            ) = total_assets = roa = roe = ""
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


start = time.perf_counter()

total_stocks = np.array([])
for se in se_list:
    total_stocks = np.concatenate(
        (total_stocks, read_stocks_text_file(se)), axis=0
    )
    # print(total_stocks)

print(total_stocks)

result = fetch_company_info(total_stocks)
db['CompanyInfo'].delete_many({})
db["CompanyInfo"].insert_many(result)

stop = time.perf_counter()

print(f"Finish in {round(stop-start, 4)} seconds")
