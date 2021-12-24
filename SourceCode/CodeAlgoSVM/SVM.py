# Machine learning
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score
  
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
df = pd.read_csv('UPCOM.csv',  header=0, index_col='<DTYYYYMMDD>', parse_dates=['<DTYYYYMMDD>'], squeeze=True, date_parser=parser, usecols=col_lists)
#Get ticker AIC
ticker = "BMS"
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
cls = SVC()
# Train/Fit the model 
cls.fit(X_train, y_train)
#find accurancy of the prediction
accuracy_train = accuracy_score(y_train, cls.predict(X_train))
accuracy_test = accuracy_score(y_test, cls.predict(X_test))
print(accuracy_train,accuracy_test)

#predict for user buy or sell
df['Predicted_Signal'] = cls.predict(X)
# print (X)
# print(df)
# Calculate daily returns
df['Return'] = df['<Close>'].pct_change()

# Calculate strategy returns
df['Strategy_Return'] = df.Return *df.Predicted_Signal.shift(1)
print(df)

# Calculate Cumulutive returns
df['Cum_Ret'] = df['Return'].cumsum()
# # print(df)
# Plot Strategy Cumulative returns 
df['Cum_Strategy'] = df['Strategy_Return'].cumsum()
# # print(df)

  
plt.plot(df['Cum_Ret'],color='red')
plt.plot(df['Cum_Strategy'],color='blue')

plt.show()