from pymongo import MongoClient
import itertools

client = MongoClient("mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?authSource=admin&replicaSet=atlas-kkwgbw-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true")

db = client['CompanyInfo']

data = db['CompanyInfo'].find({},
                              {"Ticker":1,
                               "_id":0})
print(data)
stocks_list = []
for i in data:
    stocks_list.append(i.values())
    
stocks_list = list(itertools.chain(*stocks_list))

print(stocks_list)