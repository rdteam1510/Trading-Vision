from datetime import datetime
import datetime
from pymongo import MongoClient
client = MongoClient("mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?authSource=admin&replicaSet=atlas-kkwgbw-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true")
db = client["PredictedStockPrice"]
a = [6.15, 5.95, 5.64, 5.55, 5.67] 
b = ['2022-01-24 07:00:00','2022-01-25 07:00:00','2022-01-26 07:00:00','2022-01-27 07:00:00','2022-01-28 07:00:00']
dt = {}
l = []
new_columns = ["PredictedPrice","Date","Ticker","TimeStamp"]
for i in range(len(a)):
    dt["PredictedPrice"] = a[i]
    dt["Date"] = b[i]
    dt["Ticker"] = 'ACB'
    dt["TimeStamp"] = datetime.datetime.now()
    new_item = dict(zip(new_columns, list(dt.values())))
    print(dt)
    print(new_item)
    #l.append(new_item)


#db["PredictedStockPrice"].insert_many(l)