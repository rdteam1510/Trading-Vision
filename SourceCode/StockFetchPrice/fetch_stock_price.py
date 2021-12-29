from connect_mongodb import import_to_mongodb
import requests, json
import pandas as pd
import numpy as np

# a: stock tickers | b: previous close | c: ceiling price|
# d: floor price| v: highest price| w: lowest price|
# n: volumn| l: match price
keys = ["Time", "a", "b", "c", "d", "v", "w", "n", "l"]


def read_stocks_text_file(namefile):
    """
    Read stocks from text file, remove end-line breaks, convert them into a list
    :param: namefile
    :return: a list of stocks
    """
    file = open(f"stockstickers/{namefile}.txt", "r")
    content = file.read()
    stocks_list = content.split(", ")
    stocks_list = np.array(stocks_list)
    file.close()
    return stocks_list


def change_columns_name(dict):
    """
    Change column name to make it more readable

    :param dict: dict
    :return None
    """
    ticker = dict.pop("a")
    prv_close = dict.pop("b")
    ceiling = dict.pop("c")
    floor = dict.pop("d")
    highest = dict.pop("v")
    lowest = dict.pop("w")
    vol = dict.pop("n")
    match = dict.pop("l")
    dict.update(
        {
            "Ticker": ticker,
            "PreviousClose": prv_close,
            "Ceiling": ceiling,
            "Floor": floor,
            "Highest": highest,
            "Lowest": lowest,
            "Match": match,
            "Volume": vol,
        }
    )


def fetch_function(stock_exchange, url, se_stocks, time_stamp):
    """
    Fetch function stock prices according to url of that stock exchange and import into MongoDB

    :param url: str
    :param se_stocks: list
    :return: se: pandas.DataFrame
    """
    try:
        response = requests.get(url, timeout=3)
        response.raise_for_status()
    except requests.exceptions.ConnectionError as errc:
        print("Error Connecting:", errc)
    else:
        response = np.array(response.json())
        for stock in se_stocks:
            filtered = filter(
                lambda data: data["a"] == stock and data["Time"] != None,
                response,
            )
            for data in filtered:
                final = {key: data[key] for key in data if key in keys}
                final["TimeStamp"] = time_stamp
                final["StockExchange"] = stock_exchange
                change_columns_name(final)
                # print(final)
                import_to_mongodb(final)
