from keras.models import load_model
from train_model import * 
import itertools, time
import gc
import psutil
import tensorflow as tf
from datetime import date
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
stocks_list = stocks_list[0:20]

if __name__ == "__main__":
    # Choose time and close price columns 
    for ticker in stocks_list:   
        # Get data for retraining
        close_data, close_date = get_data(ticker)
                    
        # Retrain model
        
        model = load_model('/home/ubuntu/Model/{}_model'.format(ticker))
        model = only_train(close_data, model, ticker)
        # Predict price
        num_prediction = 6
        forecast, forecast_dates = make_predict(num_prediction, model, close_data, close_date)

        

        # Save new model
        model.save('/home/ubuntu/Model/{}_model'.format(ticker))
        gc.collect() 
    
    
        dt = {}
        l = []
        for i in range(len(forecast)):
            dt["Ticker"] = ticker
            dt["PredictedPrice"] = forecast[i]
            dt["Date"] = datetime.datetime.timestamp(forecast_dates[i])
            dt["TimeStamp"] = time.mktime(date.today().timetuple())
            new_item = dict(zip(new_columns, list(dt.values())))
            l.append(new_item)
            
        db["predictions"].insert_many(l)
        
        time.sleep(5)
    
    
    # print('The CPU usage is: ', psutil.cpu_percent(4))        
    # print(f"{round(time.time()-start,2)}s")