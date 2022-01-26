import pandas as pd
import numpy as np

from datetime import datetime, date
from sklearn.model_selection import train_test_split


# Linear Regression (LR)
# Lasso (LASSO)
# Elastic Net (EN)
# KNN (K-Nearest Neighbors)
# CART (Classification and Regression Trees)
# SVR (Support Vector Regression)
from sklearn.linear_model import LinearRegression
from sklearn.linear_model import Lasso
from sklearn.linear_model import ElasticNet
from sklearn.tree import DecisionTreeRegressor
from sklearn.neighbors import KNeighborsRegressor
from sklearn.svm import SVR

from sklearn.model_selection import KFold
from sklearn.model_selection import cross_val_score

# start date should be within 5 years of current date according to iex API we have used
# The more data we have, the better results we get!


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


prices = df[df.columns[0:1]]
prices.reset_index(level=0, inplace=True)
time= pd.to_datetime(prices['<DTYYYYMMDD>'])
prices["timestamp"] = time.astype(np.int64) // (10**9)
print(prices)
prices = prices.drop(['<DTYYYYMMDD>'], axis=1)


dataset = prices.values
X = dataset[:,1].reshape(-1,1)
Y = dataset[:,0:1]

validation_size = 0.15
seed = 7
print(prices)
X_train, X_validation, Y_train, Y_validation = train_test_split(X, Y, test_size=validation_size, random_state=seed)

# Test options and evaluation metric
num_folds = 10
seed = 7
scoring = "r2"

# Spot-Check Algorithms
models = []
models.append((' LR ', LinearRegression()))
models.append((' LASSO ', Lasso()))
models.append((' EN ', ElasticNet()))
models.append((' KNN ', KNeighborsRegressor()))
models.append((' CART ', DecisionTreeRegressor()))
models.append((' SVR ', SVR()))

# evaluate each model in turn
results = []
names = []
for name, model in models:
    kfold = KFold(n_splits=num_folds, random_state=seed, shuffle=True)
    cv_results = cross_val_score(model, X_train, Y_train, cv=kfold, scoring=scoring)
    # print(cv_results)
    results.append(cv_results)
    names.append(name)
    msg = "%s: %f (%f)" % (name, cv_results.mean(), cv_results.std())
    print(msg)
    
# Future prediction, add dates here for which you want to predict
dates = ["2021-12-19", "2021-12-29", "2022-03-14",]
#convert to time stamp
for dt in dates:
  datetime_object = datetime.strptime(dt, "%Y-%m-%d")
  timestamp = datetime.timestamp(datetime_object)
  # to array X
  np.append(X, int(timestamp))

from matplotlib import pyplot as plt
from sklearn.metrics import mean_squared_error

# Define model
model = DecisionTreeRegressor()
# Fit to model
model.fit(X_train, Y_train)
# predict
predictions = model.predict(X)
print(mean_squared_error(Y, predictions))

# %matplotlib inline 
fig= plt.figure(figsize=(24,12))
plt.plot(X,Y)
plt.plot(X,predictions)
plt.show()