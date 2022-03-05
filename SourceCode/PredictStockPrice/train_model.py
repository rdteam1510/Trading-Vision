import pandas as pd
import numpy as np
import datetime
from tensorflow.keras.preprocessing.sequence import TimeseriesGenerator
from pymongo import MongoClient
from tensorflow.keras.callbacks import EarlyStopping, ModelCheckpoint, ReduceLROnPlateau

#client = MongoClient("localhost", 27017)
client = MongoClient("mongodb+srv://tradingvision:123@cluster0.4fh3n.mongodb.net/test?authSource=admin&replicaSet=atlas-fyx376-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true")

# Specify date format
# def parser(x):
# 	return datetime.strptime(x,'%Y%m%d')

#Get ticker ' ' 
def sort_data(ticker):
    db = client["TradingVision"]
    data = db["ForPrediction"]
    df = data.find({"Ticker":ticker}).sort('Time',-1).limit(7)
    return df
# Data Preprocessing
def get_data(get_ticker):
    df = sort_data(get_ticker)
    df = list(df)
    df.reverse()
    close_data = [i['Close'] for i in df]
    close_data = np.array(close_data)
    close_date = [i['Time'] for i in df]
    return close_data, close_date
# close_data = scaler.fit_transform(close_data)
# close_train = scaler.fit_transform(close_train)
# close_test = scaler.transform(close_test)
# Time series generator
def only_train(close_data, model, ticker):
    look_back = 6
<<<<<<< HEAD
    train_generator = TimeseriesGenerator(close_data, close_data, length = look_back, batch_size=15)
=======
    train_generator = TimeseriesGenerator(close_data, close_data, length = look_back, batch_size=14)
>>>>>>> 85952ce0a5120920722aa71ee052a5461e36fa22
    num_epochs = 20
    earlyStopping = EarlyStopping(
        monitor='loss',
        patience=10, 
        verbose=0, 
        mode='min')
    mcp_save = ModelCheckpoint(
        '././Checkpoint/model-{}.h5'.format(ticker), 
        save_best_only=True, 
        monitor='loss', 
        mode='min')
    reduce_lr_loss = ReduceLROnPlateau(
        monitor='loss', 
        factor=0.1, 
        patience=7, 
        verbose=1, 
        epsilon=1e-4, 
        mode='min')
    model.fit_generator(
        train_generator, 
        epochs=num_epochs, 
        verbose=1, 
        callbacks=[earlyStopping, mcp_save, reduce_lr_loss])
    return model
def predict(num_prediction, model, close_data):
    prediction_list = close_data[-num_prediction:]
    #prediction_list = np.array([])
    for _ in range(num_prediction-1):
        x = prediction_list[-num_prediction:]
        x = x.reshape((1, num_prediction, 1))
        out = model.predict(x)[0][0]
        prediction_list = np.append(prediction_list, out)
    prediction_list = prediction_list[num_prediction:]
        
    return prediction_list
    
def predict_dates(num_prediction, close_date):
    close_date = [datetime.datetime.fromtimestamp(i) for i in close_date]
    last_date = close_date[-1] + pd.DateOffset(days = 1)
    prediction_dates = pd.date_range(last_date, periods=num_prediction + 1)
    # Create a list of Saturday and Sunday 
    leap = []
    for day in prediction_dates:
       if (day.strftime('%A') == "Saturday") | (day.strftime('%A') == "Sunday"):
           leap.append(day)

    # Delete Saturday and Sunday
    prediction_dates = prediction_dates.drop(leap)

    # To list for drawing prediction
    prediction_dates = prediction_dates.tolist()

    return prediction_dates

def make_predict(num_prediction, model, close_data, close_date):
    forecast = predict(num_prediction, model, close_data)
    forecast = [round(elem, 2) for elem in forecast]
    num = ((num_prediction-1)/5-1)*2
    forecast_dates = predict_dates(num_prediction + num, close_date)
    return forecast, forecast_dates

# def mape(actual, pred):
#     actual, pred = np.array(actual), np.array(pred)
#     return np.mean(np.abs((actual - pred) / actual)) * 100
