import requests, json, datetime, pytz
from fetch_stock_price import read_stocks_text_file
from pymongo import MongoClient

client = MongoClient(
    "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?authSource=admin&replicaSet=atlas-kkwgbw-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true"
)

TIME_STAMP = datetime.datetime.now(
    pytz.timezone("Asia/Ho_Chi_Minh")
).strftime("%H:%M %d/%m/%Y")


def import_to_mongodb(row):
    # Function: import data to mongodb
    """
    Import stock prices to mongodb

    :param se: pandas.DataFrame
    :param name: str
    :return: None
    """
    db = client["Stocks"]
    existing_document = db["Stocks"].find_one(row)
    if not existing_document:
        db["Stocks"].insert_one(row)


# response = requests.get(
#     "https://banggia.cafef.vn/stockhandler.ashx?center=1"
# ).json()

hose = read_stocks_text_file("hose")
keys = ["Time", "a", "b", "c", "d", "v", "w", "n", "l"]


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


# for stock in hose:
#     filtered = filter(
#         lambda data: data["a"] == stock and data["Time"] != None, response
#     )
#     for data in filtered:
#         final = {key: data[key] for key in data if key in keys}
#         final["TimeStamp"] = datetime.datetime.now(
#             pytz.timezone("Asia/Ho_Chi_Minh")
#         ).strftime("%H:%M %d/%m/%Y")
#         final["StockExchange"] = "hose"
#         change_columns_name()
#         print(final)
#         db = client["Stocks"]
#         existing_document = db["Stocks"].find_one(final)
#         if not existing_document:
#             db[f"Stocks"].insert_one(final)


def fetch_function(stock_exchange, url, se_stocks, time_stamp):
    """
    Fetch function stock prices according to url of that stock exchange and import into MongoDB

    :param url: str
    :param se_stocks: list
    :return: se: pandas.DataFrame
    """
    try:
        response = requests.get(url, timeout=10)
        response.raise_for_status()
    except requests.exceptions.ConnectionError as errc:
        print("Error Connecting:", errc)
    else:
        response = response.json()
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
                print(type(final))
                import_to_mongodb(final)


fetch_function(
    "hose",
    "https://banggia.cafef.vn/stockhandler.ashx?center=1",
    hose,
    TIME_STAMP,
)
