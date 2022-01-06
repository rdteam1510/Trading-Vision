# Machine learning
from sklearn.svm import SVC
from sklearn.linear_model import LinearRegression
from sklearn.metrics import accuracy_score
from sklearn.metrics import mean_squared_error,mean_absolute_percentage_error
import math

  
# For data manipulation
import pandas as pd
import numpy as np
from datetime import datetime
  
# To plot
import matplotlib.pyplot as plt
plt.style.use('seaborn-darkgrid')
  
# To ignore warnings
import warnings
warnings.filterwarnings("ignore")



# Choose time and close price columns 
col_lists = ['<Ticker>','<DTYYYYMMDD>','<Open>','<High>','<Low>','<Close>']
# Specify date format
def parser(x):
	return datetime.strptime(x,'%Y%m%d')
df = pd.read_csv('HSX.csv',  header=0, index_col='<DTYYYYMMDD>', parse_dates=['<DTYYYYMMDD>'], squeeze=True, date_parser=parser, usecols=col_lists)
#Get ticker AIC
ticker = "ACB"
df = df[df['<Ticker>']==ticker]

# Delete column Ticker
df.drop('<Ticker>', axis = 1, inplace = True)

# Sort DataFrame by date
df = df.sort_values('<DTYYYYMMDD>')


# Create predictor variables
df['Open-Close'] = df['<Open>'] - df['<Close>']
df['High-Low'] = df['<High>'] - df['<Low>']

# Store all predictor variables in a variable X
X = df[['Open-Close', 'High-Low']]


# Target variables
y = np.where(df['<Close>'].shift(-1) > df['<Close>'], 1, 0)

#Divide data fpr train and test
split_percentage = 0.8
split = int(split_percentage*len(df))
  
# Train data set
X_train = X[:split]
y_train = y[:split]
  
# Test data set
X_test = X[split:]
y_test = y[split:]
# Instantiate the model
cls=LinearRegression(n_jobs=-1)
# cls = SVC()
# Train/Fit the model 
cls.fit(X_train, y_train)


# #find accurancy of the prediction
# accuracy_train = accuracy_score(y_train, cls.predict(X_train))
# accuracy_test = accuracy_score(y_test, cls.predict(X_test))
# print(accuracy_train,accuracy_test)

#predict for user buy or sell
df['Predicted_Signal'] = cls.predict(X)
# print (X)
# print(df)
# Calculate daily returns
df['Return'] = df['<Close>'].pct_change()
# print(df)

# Calculate strategy returns
df['Strategy_Return'] = df.Return *df.Predicted_Signal.shift(1)
# print(df)

# Calculate Cumulutive returns
df['Cum_Ret'] = df['Return'].cumsum()
# print(df)
# Plot Strategy Cumulative returns 
df['Cum_Strategy'] = df['Strategy_Return'].cumsum()
# print(df)
# df['Cum_Ret'].fillna(0,inplace=True)
# print(df['Cum_Ret'])

# df['Cum_Strategy'].fillna(0,inplace=True)
# print(df['Cum_Strategy'])

# testScore1 = math.sqrt(mean_squared_error(y_train, cls.predict(X_train)))
# print('Test Score Train: %.2f RMSE' % (testScore1))
testScore2 = math.sqrt(mean_squared_error(y_test, cls.predict(X_test)))
# MAE=mean_absolute_error(y_test, cls.predict(X_test))

# print RMSE
print('Test Score Test: %.2f RMSE' % (testScore2))
# print('Test Score Test: %.2f MAE' % (MAE))



# In print MAPE

mape = mean_absolute_percentage_error(y_test,cls.predict(X_test))
print('MAPE: %.2f' % (mape))

 
plt.plot(df['Cum_Ret'],color='blue', label = "Training")
plt.plot(df['Cum_Strategy'],color='red',label="Testing")
# Khong phai training testing ma la stragetry va the stock of Reliance Industries
plt.legend(loc=4)
plt.xlabel('Date')
plt.ylabel('Close')
plt.show()