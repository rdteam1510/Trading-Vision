from keras.models import load_model
from train_model import * 
import itertools, time
import gc
import psutil
import tensorflow as tf
start = time.time()
client

db = client['TradingVision']
data = db['companyinfos'].find({},
                              {"Ticker":1,
                               "_id":0})
new_columns = ["Ticker","PredictedPrice","Date","TimeStamp"]
stocks_list = []

for i in data:
    stocks_list.append(i.values())
    
stocks_list = list(itertools.chain(*stocks_list))



if __name__ == "__mai)n__":
    print(stocks_list)