from keras.models import load_model
from train_model import * 
import itertools, time

start = time.time()
client

stocks_list = []
db = client['CompanyInfo']
data = db['CompanyInfo'].find({},
                              {"Ticker":1,
                               "_id":0})

for i in data:
    stocks_list.append(i.values())
    
stocks_list = list(itertools.chain(*stocks_list))

if __name__ == "__main__":
    # Choose time and close price columns 
    for ticker in stocks_list:   
        # Get data for retraining
        close_data, close_date = get_data(ticker)
                    
        # Retrain model
        model = load_model('././Model/{}_model'.format(ticker))
        model = only_train(close_data, model, ticker)
        # Predict price
        num_prediction = 6
        forecast, forecast_dates = make_predict(num_prediction, model, close_data, close_date)

        # Save new model
        model.save('././Model/{}_model'.format(ticker))
        print(f"----------------{ticker}----------------")
        print("Model exported")
        print(close_data, close_date)
        print(forecast, forecast_dates)
        
        dt = {}
        l = []
        new_columns = ["PredictedPrice","Date","Ticker","TimeStamp"]
        for i in range(len(forecast)):
            dt["PredictedPrice"] = forecast[i]
            dt["Date"] = forecast_dates[i]
            dt["Ticker"] = ticker
            dt["TimeStamp"] = datetime.datetime.now()
            new_item = dict(zip(new_columns, list(dt.values())))
            l.append(new_item)


        db["PredictedStockPrice"].insert_many(l)
            
    print(f"{round(time.time()-start,2)}s")