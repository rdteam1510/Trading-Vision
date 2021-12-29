import requests
import time, pytz, datetime
from pymongo import MongoClient

start_time = time.time()

TIME_STAMP = datetime.datetime.now(
    pytz.timezone("Asia/Ho_Chi_Minh")
).strftime("%H:%M %d/%m/%Y")


columns = ["TimeStamp","Time","StockExchange", "a", "b", "c", "d", "v", "w", "n", "l"]
new_columns = ["TimeStamp",
    "Time",
    "StockExchange",
    "Ticker",
    "PreviousClosed",
    "Ceiling",
    "Floor",
    "Highest",
    "Lowest",
    "Volume",
    "Match",]
client = MongoClient(
    "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?authSource=admin&replicaSet=atlas-kkwgbw-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true"
)

stock_exchanges = {
    "hose": "https://banggia.cafef.vn/stockhandler.ashx?center=1",
    "hnx": "https://banggia.cafef.vn/stockhandler.ashx?center=2",
    "upcom": "https://banggia.cafef.vn/stockhandler.ashx?center=9",
} 

def read_stocks_text_file(namefile):
    """
    Read stocks from text file, remove end-line breaks, convert them into a list
    :param: namefile
    :return: a list of stocks
    """
    file = open(f"E:\ITEC\AUT\RD\R&D - Trading Vision Project\SourceCode\stockstickers\{namefile}.txt", "r")
    content = file.read()
    stocks_list = content.split(", ")
    file.close()
    return stocks_list


def fetch_stock(url,se):
    my_data = []
    data = requests.get(url)
    results = data.json()

    for item in results:
        item.update({'TimeStamp':TIME_STAMP})
        item.update({'StockExchange': se})
        new_item = {key : item[key] for key in columns}
        new_item = dict(zip(new_columns, list(new_item.values())))
        #print(new_item,"\n") 
        my_data.append(new_item)


    se_stock = read_stocks_text_file(se)
    my_data = [i for i in my_data if i["Ticker"] in se_stock and i["Time"]!=None]

    db = client["Stocks_DEMO"]
    # for row in my_data:
    #     existing_document = db[f'{se}'].find_one(row)
    #     if not existing_document:
    #         db[f'{se}'].insert_one(row)
    db["Stocks_Price"].insert_many(my_data)

    print("----------%s seconds------------" % (time.time() - start_time))


 

for name, se_url in stock_exchanges.items():
    fetch_stock(se_url,name)