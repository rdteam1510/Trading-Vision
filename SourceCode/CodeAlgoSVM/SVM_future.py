import numpy as np # linear algebra
import pandas as pd # data processing, CSV file I/O (e.g. pd.read_csv)
import math,datetime
from datetime import datetime
import time
import arrow

from sklearn import preprocessing,model_selection,svm 
from sklearn.metrics import mean_absolute_percentage_error,mean_squared_error

# Preprocessing for scaling data,Accuracy,Processing speed ,cross validation for training and testing
from sklearn.linear_model import LinearRegression #
import matplotlib.pyplot as plt
from matplotlib import style
plt.style.use('seaborn-darkgrid')



# Choose time and close price columns 
col_lists = ['<Ticker>','<DTYYYYMMDD>','<Open>','<High>','<Low>','<Close>','<Volume>']
# Specify date format
def parser(x):
	return datetime.strptime(x,'%Y%m%d')
df = pd.read_csv('HSX_old.csv',  header=0, index_col='<DTYYYYMMDD>', parse_dates=['<DTYYYYMMDD>'], squeeze=True, date_parser=parser, usecols=col_lists)
#Get ticker AIC
ticker = "VNM"
df = df[df['<Ticker>']==ticker]

# Delete column Ticker
df.drop('<Ticker>', axis = 1, inplace = True)

# Sort DataFrame by date
df = df.sort_values('<DTYYYYMMDD>')
# print (df.head())

#Calculating percent volatility
# df['HIGHLOW_PCT']=(df['<High>']-df['<Close>'])/(df['<Close>'])*100
#Calculating new and old prices
# df['PCT_Change']=(df['<Close>']-df['<Open>'])/(df['<Open>'])*100
# Extracting required data from file
df=df[['<Close>']]
# print (df.head())


#forecast volume to calculate future stocks
# forecast_col='<Close>'
df['<Close>'].fillna(-99999,inplace=True)
# df['HIGHLOW_PCT'].fillna(-99999,inplace=True)
# df['PCT_Change'].fillna(-99999,inplace=True)
# df['<Volume>'].fillna(-99999,inplace=True)

# forecast_out=int(math.ceil(0.01*len(df)))
# print (forecast_out)
df['label']=df['<Close>']



X = np.array(df.drop(['label'],1))
X = preprocessing.scale(X)
# X = X[:-forecast_out]
# X_lately=X[-forecast_out:]



# df.dropna(inplace=True)
y=np.array(df['label'])

#Train and test data set
X_train,X_test,y_train,y_test = model_selection.train_test_split(X, y,test_size=0.2)
#classification inorder to get X_train and Y_train
# clf=LinearRegression(n_jobs=-1)
clf=svm.SVR()
clf.fit(X_train,y_train)
# accuracy=clf.score(X_test,y_test)
# print (accuracy)

#We can pass single value or array of values or we are passing 99days of value
# forecast_set=clf.predict(X_test)
forecast_set=clf.predict(X_test)
future_arr = preprocessing.scale(np.array([[84.983], 
                       [84.8847], 
                       [84.8847], 
                       [85.1798], 
                       [84.2945]#5
                       ,[84.2945],[84.0978],[83.9994],[83.3109],[84.5896],[84.688],[84.0978],[83.8027],[83.9011],[84.983]
                       ]))
# # 

# future_arr = preprocessing.scale(np.array([[33.4], 
#                        [33.3], 
#                        [33.4], 
#                        [33], 
#                        [33.2]#5
#                        ,[33.1],[32.8], [32.7],[32.5],[33],[33.15],[33.65],[33.8],[33.9],[34.5]
#                        ]))
# 
real_pred = clf.predict(future_arr)
# print (forecast_set,accuracy,forecast_out)



# In print MAPE

# print(y_test)
# testScore2 = math.sqrt(mean_squared_error(y_test, forecast_set))

# mapeacb = mean_absolute_percentage_error(np.array([[33.4], 
#                        [33.3], 
#                        [33.4], 
#                        [33], 
#                        [33.2]#5
#                        ,[33.1],[32.8], [32.7],[32.5],[33],[33.15],[33.65],[33.8],[33.9],[34.5]
#                        ]),real_pred)
# ,[33.1],[32.8], [32.7],[32.5],[33],[33.15],[33.65],[33.8],[33.9],[34.5]
mapevnm = mean_absolute_percentage_error(np.array([[84.983], 
                       [84.8847], 
                       [84.8847], 
                       [85.1798], 
                       [84.2945]#5
                       ,[84.2945],[84.0978],[83.9994],[83.3109],[84.5896],[84.688],[84.0978],[83.8027],[83.9011],[84.983]
                       ]),real_pred)
# # ,[84.2945],[84.0978],[83.9994],[83.3109],[84.5896],[84.688],[84.0978],[83.8027],[83.9011],[84.983]
print('MAPE: ',(mapevnm))
# print('RMSE: ' ,(testScore2))

#draw
# print(df)
df['Forecast']=np.nan
one_day=86400

last_date=df.iloc[-1].name
# print(last_date)
last_unix = last_date.timestamp()
# print(last_unix)
next_unix = last_unix + 3 * one_day


flag = 1
for i in real_pred:
    next_date=datetime.fromtimestamp(next_unix)
    if flag != 5:
        next_unix += one_day
    else:
        next_unix += 3 * one_day
    df.loc[next_date]=[np.nan for _ in range(len(df.columns)-1)] + [i]
    flag += 1


print(df['Forecast'])
print(len(forecast_set))
plt.plot(df['<Close>'], label = "Data")
plt.plot(df['Forecast'], label = "Prediction")
plt.legend(loc=4)
plt.xlabel('Date')
plt.ylabel('Close')
plt.show()


    