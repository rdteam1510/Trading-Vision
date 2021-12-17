# from pymongo import MongoClient
# import pandas as pd
# import datetime

# client = MongoClient(
#     "mongodb+srv://tradingvision:123@cluster0.xmnn8.mongodb.net/TradingVision?retryWrites=true&w=majority"
# )
# db = client['PriceStock_2']
# data = db.hose.find().sort('TimeStamp', 1).limit(200)
# df = pd.DataFrame(data)
# # df = df.sort_values(by=['Name'])
# df.to_csv('text.csv')
# print(df)