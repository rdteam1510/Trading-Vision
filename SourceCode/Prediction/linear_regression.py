import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.dates as mdates
import pandas_ta
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score, mean_absolute_error


stock_name = 'HAG'

data = pd.read_csv('hose.csv')
data.rename(columns={'<Ticker>':'Ticker', '<DTYYYYMMDD>':'Time', '<Open>':'Open', '<Close>':'Close', '<High>':'High', '<Low>':'Low', '<Volume>':'Volume'}, inplace=True)
data.drop(['High','Low','Volume','Open'], axis=1, inplace=True)
df = data.loc[data['Ticker'] == stock_name]
df['Time'] = pd.to_datetime(df['Time'].astype(str), format='%Y%m%d')
df.ta.ema(close='Close', length=10, append=True)
df2 = df.copy()
df2.drop(['Ticker'], axis=1, inplace=True)
df.set_index(pd.DatetimeIndex(df['Time']), inplace=True)
df.drop(['Ticker', 'Time'], axis=1, inplace=True)
print(df.head())
print(df.info())

# plt.title(f'Line char for stock {stock_name}')
# ax = plt.gca()
# cut = df2[df2['Time']>'2021-11-01']
# x_values = cut['Time']
# # print(x_values)
# y_values = cut['Close']
# e_values = cut['EMA_10']
# formater = mdates.DateFormatter('%Y-%m-%d')
# ax.xaxis.set_major_formatter(formater)
# locator = mdates.DayLocator()
# ax.xaxis.set_major_locator(locator)
# ax.xaxis.set_tick_params(rotation=45)
# plt.xlabel('Datetime')
# plt.ylabel('Price')
# plt.plot(x_values, y_values)
# plt.plot(x_values, e_values)
# plt.show()
df.dropna(inplace=True)
X_train, X_test, y_train, y_test = train_test_split(df[['Close']],df[['EMA_10']], test_size=.2)

# print(X_test.describe())
# print(X_train.describe())

model = LinearRegression()

model.fit(X_train, y_train)

y_pred = model.predict(X_test)

print("Model Coefficients:", model.coef_)
print("Mean Absolute Error:", mean_absolute_error(y_test, y_pred))
print("Coefficient of Determination:", r2_score(y_test, y_pred))