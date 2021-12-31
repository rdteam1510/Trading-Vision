from connect_mongodb import import_to_mongodb
import requests, json
import pandas as pd
import numpy as np

# a: stock tickers | b: previous close | c: ceiling price|
# d: floor price| v: highest price| w: lowest price|
# n: volumn| l: match price
keys = ["Time", "a", "b", "c", "d", "v", "w", "n", "l"]


new_columns = [
    "Ticker",
    "PreviousClose",
    "Ceiling",
    "Floor",
    "Match",
    "Volume",
    "Highest",
    "Lowest",
    "Time",
    "TimeStamp",
    "StockExchange",
]


def read_stocks_text_file(namefile):
    """
    Read stocks from text file, remove end-line breaks, convert them into a list
    :param: namefile
    :return: a list of stocks
    """

    file = open(f"E:\ITEC\AUT\RD\R&D - Trading Vision Project\SourceCode\stockstickers\{namefile}.txt", "r")

    file = open(f"stockstickers/{namefile}.txt", "r")

    content = file.read()
    stocks_list = content.split(", ")
    stocks_list = np.array(stocks_list)
    file.close()
    return stocks_list


def fetch_function(stock_exchange, url, se_stocks, time_stamp):
    """
    Fetch function stock prices according to url of that stock exchange and import into MongoDB

    :param url: str
    :param se_stocks: list
    :return: se: pandas.DataFrame
    """
    save = []
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
                final = dict(zip(new_columns, list(final.values())))
                save.append(final)
        return save
