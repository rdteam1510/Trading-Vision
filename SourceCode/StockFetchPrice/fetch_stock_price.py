import requests
import pandas as pd

# All column header names
headers = [
    "TimeStamp",
    "StockExchange",
    "Time",
    "Ticker",
    "PreviousClosed",
    "Ceiling",
    "Floor",
    "Highest",
    "Lowest",
    "Volume",
    "Match",
]


def read_stocks_text_file(namefile):
    """
    Read stocks from text file, remove end-line breaks, convert them into a list
    :param: namefile
    :return: a list of stocks
    """
    file = open(f"D:\PROJECT\CODE\SourceCode\stockstickers\{namefile}.txt", "r")
    content = file.read()
    stocks_list = content.split(", ")
    file.close()
    return stocks_list


def fetch_function(stock_exchange, url, se_stocks, time_stamp):
    """
    Fetch function stock prices according to url of that stock exchange.

    :param url: str
    :param se_stocks: list
    :return: se: pandas.DataFrame
    """
    url_se = url
    try:
        response = requests.get(url_se, timeout=10)
        response.raise_for_status()
    except requests.exceptions.ConnectionError as errc:
        print("Error Connecting:", errc)
    else:
        se = pd.DataFrame.from_dict(
            pd.json_normalize(response.json()), orient="columns"
        )
        # a: stock tickers | b: previous close | c: ceiling price|
        # d: floor price| v: highest price| w: lowest price|
        # n: volumn| l: match price
        se = se[["Time", "a", "b", "c", "d", "v", "w", "n", "l"]]
        se = se[se["a"].isin(se_stocks)]
        se.insert(
            0,
            "TimeStamp",
            time_stamp,
        )
        se.insert(1, "StockExchange", stock_exchange)
        se.columns = headers
        se = se[se["Time"].notna()]
        se["TimeStamp"] = pd.to_datetime(
            se["TimeStamp"], format="%H:%M %d/%m/%Y"
        )
        se["Time"] = pd.to_datetime(se["Time"], format="%H:%M %d/%m/%Y")
        return se
