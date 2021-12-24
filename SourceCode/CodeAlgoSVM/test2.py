import pandas as pd
from datetime import datetime
import numpy as np
from sklearn.preprocessing import StandardScaler
# from tensorflow.keras.models import Sequential
# from tensorflow.keras.layers import Dense
# from tensorflow.keras.layers import LSTM
import math
from sklearn.metrics import mean_squared_error
# Choose time and close price columns 
col_lists = ['<Ticker>','<DTYYYYMMDD>','<Open>','<High>','<Low>','<Close>']
# Specify date format
def parser(x):
	return datetime.strptime(x,'%Y%m%d')
df = pd.read_csv('UPCOM.csv',  header=0, index_col='<DTYYYYMMDD>', parse_dates=['<DTYYYYMMDD>'], squeeze=True, date_parser=parser, usecols=col_lists)
df1=df.reset_index()['<Close>']

scaler=StandardScaler()
df1=scaler.fit_transform(np.array(df1).reshape(-1,1))
training_size=int(len(df1)*0.65)
test_size=len(df1)-training_size
train_data,test_data=df1[0:training_size,:],df1[training_size:len(df1),:1]



def create_dataset(dataset, time_step=1):
    dataX, dataY = [], []
    for i in range(len(dataset)-time_step-1):
        a = dataset[i:(i+time_step), 0]
        dataX.append(a)
        dataY.append(dataset[i + time_step, 0])
    return np.array(dataX), np.array(dataY)
time_step = 100
X_train, y_train = create_dataset(train_data, time_step)
X_test, ytest = create_dataset(test_data, time_step)


# X_train =X_train.reshape(X_train.shape[0],X_train.shape[1] , 1)
# X_test = X_test.reshape(X_test.shape[0],X_test.shape[1] , 1)

# model=Sequential()
# model.add(LSTM(50,return_sequences=True,input_shape=(100,1)))
# model.add(LSTM(50,return_sequences=True))
# model.add(LSTM(50))
# model.add(Dense(1))
# model.compile(loss='mean_squared_error',optimizer='adam')

# train_predict=model.predict(X_train)
# test_predict=model.predict(X_test)
# train_predict=scaler.inverse_transform(train_predict)
# test_predict=scaler.inverse_transform(test_predict)


# math.sqrt(mean_squared_error(y_train,train_predict))
