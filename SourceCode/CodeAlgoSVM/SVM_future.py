import numpy as np # linear algebra
import pandas as pd # data processing, CSV file I/O (e.g. pd.read_csv)
import math,datetime
from datetime import datetime
import time
import arrow
from sklearn import preprocessing,model_selection,svm 

# Preprocessing for scaling data,Accuracy,Processing speed ,cross validation for training and testing
from sklearn.linear_model import LinearRegression #
import matplotlib.pyplot as plt
from matplotlib import style
style.use('ggplot')
import pickle


# Choose time and close price columns 
col_lists = ['<Ticker>','<DTYYYYMMDD>','<Open>','<High>','<Low>','<Close>','<Volume>']
# Specify date format
def parser(x):
	return datetime.strptime(x,'%Y%m%d')
df = pd.read_csv('HSX.csv',  header=0, index_col='<DTYYYYMMDD>', parse_dates=['<DTYYYYMMDD>'], squeeze=True, date_parser=parser, usecols=col_lists)
#Get ticker AIC
ticker = "VNM"
df = df[df['<Ticker>']==ticker]

# Delete column Ticker
df.drop('<Ticker>', axis = 1, inplace = True)

# Sort DataFrame by date
df = df.sort_values('<DTYYYYMMDD>')

#Calculating percent volatility
df['HIGHLOW_PCT']=(df['<High>']-df['<Close>'])/(df['<Close>'])*100
#Calculating new and old prices
df['PCT_Change']=(df['<Close>']-df['<Open>'])/(df['<Open>'])*100
# Extracting required data from file
df=df[['<Close>','HIGHLOW_PCT','PCT_Change','<Volume>']]
# print (df.head())

#forecast volume to calculate future stocks
forecast_col=['<Close>']
df.fillna(-99999,inplace=True)
forecast_out=int(math.ceil(0.2*len(df)))
print (forecast_out)
df['label']=df[forecast_col].shift(-forecast_out)
X = np.array(df.drop(['label'],1))
X = preprocessing.scale(X)
X = X[:-forecast_out]
X_lately=X[-forecast_out:]


df.dropna(inplace=True)
y=np.array(df['label'])
#Train and test data set
X_train,X_test,y_train,y_test=model_selection.train_test_split(X,y,test_size=0.3)
#classification inorder to get X_train and Y_train
clf=svm.SVR()
clf.fit(X_train,y_train)
accuracy=clf.score(X_test,y_test)
print (accuracy)
#We can pass single value or array of values or we are passing 99days of value
forecast_set=clf.predict(X_lately)
print (forecast_set,accuracy,forecast_out)
#predict
df['Forecast']=np.nan
last_date=df.iloc[-1].name
last_unix = last_date.timestamp()
one_day=86400
next_unix=last_unix + one_day

for i in forecast_set:
    next_date=datetime.fromtimestamp(next_unix)
    next_unix += one_day
    df.loc[next_date]=[np.nan for _ in range(len(df.columns)-1)] + [i]

df['<Close>'].plot()
df['Forecast'].plot()
plt.legend(loc=4)
plt.xlabel('Date')
plt.ylabel('Price')
plt.show()
    