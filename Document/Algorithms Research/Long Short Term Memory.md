# Long Short Term Memory
- [[LSTM Theory]]
- [[LSTM Implementation]]

<<<<<<< HEAD
=======
Không giống như các mạng nơron truyền tới truyền thống, LSTM có các kết nối phản hồi. Nó có thể xử lý các điểm dữ liệu đơn lẻ (chẳng hạn như hình ảnh) cũng như chuỗi dữ liệu đầy đủ (chẳng hạn như giọng nói hoặc video).

# Program Implementation
Bây giờ chúng ta sẽ đi đến phần mà chúng ta sẽ sử dụng Học máy bằng Python để ước tính giá trị cổ phiếu bằng cách sử dụng LSTM.

## Importing the Libraries

Như chúng ta đã biết, bước đầu tiên là nhập các thư viện cần thiết để xử lý trước dữ liệu cổ phiếu của Microsoft Corporation và các thư viện khác cần thiết để xây dựng và hiển thị các kết quả đầu ra của mô hình LSTM. Chúng tôi sẽ sử dụng thư viện Keras từ khung TensorFlow cho việc này. Tất cả các mô-đun được nhập từ thư viện Keras.

```
#Importing the Libraries
import pandas as PD
import NumPy as np
%matplotlib inline
import matplotlib. pyplot as plt
import matplotlib
from sklearn. Preprocessing import MinMaxScaler
from Keras. layers import LSTM, Dense, Dropout
from sklearn.model_selection import TimeSeriesSplit
from sklearn.metrics import mean_squared_error, r2_score
import matplotlib. dates as mandates
from sklearn. Preprocessing import MinMaxScaler
from sklearn import linear_model
from Keras. Models import Sequential
from Keras. Layers import Dense
import Keras. Backend as K
from Keras. Callbacks import EarlyStopping
from Keras. Optimisers import Adam
from Keras. Models import load_model
from Keras. Layers import LSTM
from Keras. utils.vis_utils import plot_model
```
## Getting to Visualising the Stock Market Prediction Data

Bằng cách sử dụng thư viện *Pandas* Data Reader, chúng tôi sẽ tải lên dữ liệu kho từ hệ thống cục bộ dưới dạng tệp Giá trị được phân tách bằng dấu phẩy (.csv) và lưu vào tệp dữ liệu gấu trúc *DataFrame*. Cuối cùng, chúng tôi sẽ kiểm tra dữ liệu.

```
#Get the Dataset
df=pd.read_csv(“MicrosoftStockData.csv”,na_values=[‘null’],index_col=’Date’,parse_dates=True,infer_datetime_format=True)
df.head()
```
## Check for Null Values by printing the DataFrame Shape
Trong bước này, trước hết chúng ta sẽ in cấu trúc của tập dữ liệu. Chúng tôi kiểm tra các giá trị null trong khung dữ liệu để đảm bảo rằng không có giá trị nào. Sự tồn tại của các giá trị null trong tập dữ liệu gây ra các vấn đề trong quá trình đào tạo vì chúng hoạt động như các giá trị ngoại lai, tạo ra một sự khác biệt lớn trong quá trình đào tạo.
```
#Print the shape of Dataframe  and Check for Null Values
print(“Dataframe Shape: “, df. shape)
print(“Null Value Present: “, df.IsNull().values.any())
**Output:** >> Dataframe Shape: (7334, 6)
>>Null Value Present: False
```
**Step 4 – Plot of the True Adjusted Close Value**

Giá trị đóng đã điều chỉnh là giá trị đầu ra cuối cùng sẽ được dự báo bằng cách sử dụng mô hình Học máy. Con số này cho biết giá đóng cửa của cổ phiếu vào ngày giao dịch cụ thể trên thị trường chứng khoán.
```
#Plot the True Adj Close Value
df[‘Adj Close’].plot()
```
## Setting the Target Variable and Selecting the Features
Cột đầu ra sau đó được gán cho biến mục tiêu trong bước sau. Đây là giá trị tương đối đã điều chỉnh của Cổ phiếu Microsoft trong tình huống này. Hơn nữa, chúng tôi chọn các tính năng đóng vai trò là biến độc lập cho biến mục tiêu (biến phụ thuộc). Chúng tôi chọn bốn đặc điểm để giải thích cho các mục đích đào tạo:
- Open
- High
- Low
- Volumn
```
#Set Target Variable
output_var = PD.DataFrame(df[‘Adj Close’])
#Selecting the Features
features = [‘Open’, ‘High’, ‘Low’, ‘Volume’]
```
## Scaling
Để giảm chi phí tính toán của dữ liệu trong bảng, chúng tôi sẽ chia tỷ lệ các giá trị trong kho thành các giá trị từ 0 đến 1. Do đó, tất cả dữ liệu với số lượng lớn được giảm xuống và do đó mức tiêu thụ bộ nhớ cũng giảm. Ngoài ra, bởi vì dữ liệu không được trải rộng trong các giá trị lớn, chúng tôi có thể đạt được độ chính xác cao hơn bằng cách thu nhỏ. Để thực hiện điều này, chúng tôi sẽ sử dụng lớp MinMaxScaler của thư viện sci-kit-learning.

```
#Scaling
scaler = MinMaxScaler()
feature_transform = scaler.fit_transform(df[features])
feature_transform= pd.DataFrame(columns=features, data=feature_transform, index=df.index)
feature_transform.head()
```
Như thể hiện trong bảng trên, giá trị của các biến đặc trưng được thu nhỏ xuống giá trị thấp hơn khi so sánh với giá trị thực đã cho ở trên.
## Creating a Training Set and a Test Set for Stock Market Prediction
Chúng ta phải chia toàn bộ tập dữ liệu thành các tập huấn luyện và thử nghiệm trước khi đưa nó vào mô hình huấn luyện. Mô hình LSTM của Máy học sẽ được đào tạo dựa trên dữ liệu trong bộ đào tạo và được kiểm tra về độ chính xác cũng như sự lan truyền ngược trên bộ kiểm tra.

Lớp *TimeSeriesSplit* của thư viện sci-kit-learning sẽ được sử dụng cho việc này. Chúng tôi đặt số lượng phân tách thành 10, cho thấy rằng 10% dữ liệu sẽ được sử dụng làm tập thử nghiệm và 90% dữ liệu sẽ được sử dụng để đào tạo mô hình LSTM. Ưu điểm của việc sử dụng phân tách Chuỗi thời gian này là các mẫu dữ liệu chuỗi thời gian phân tách được kiểm tra trong các khoảng thời gian đều đặn.

```
#Splitting to Training set and Test set
timesplit= TimeSeriesSplit(n_splits=10)
for train_index, test_index in timesplit.split(feature_transform):
        X_train, X_test = feature_transform[:len(train_index)], feature_transform[len(train_index): (len(train_index)+len(test_index))]
        y_train, y_test = output_var[:len(train_index)].values.ravel(), output_var[len(train_index): (len(train_index)+len(test_index))].values.ravel()
```
_This article was published as a part of the [Data Science Blogathon](https://datahack.analyticsvidhya.com/contest/data-science-blogathon-13/)_

## **Introduction to Stock Market Prediction  
**

Stock market prediction and analysis are some of the most difficult jobs to complete. There are numerous causes for this, including market volatility and a variety of other dependent and independent variables that influence the value of a certain stock in the market. These variables make it extremely difficult for any stock market expert to anticipate the rise and fall of the market with great precision.

However, with the introduction of Machine Learning and its strong algorithms, the most recent market research and Stock Market Prediction advancements have begun to include such approaches in analyzing stock market data.

In summary, [Machine Learning Algorithms](https://www.analyticsvidhya.com/blog/2021/03/everything-you-need-to-know-about-machine-learning/) are widely utilized by many organizations in Stock market prediction. This article will walk through a simple implementation of analyzing and forecasting the stock prices of a Popular Worldwide Online Retail Store in Python using various Machine Learning Algorithms.

![Stock Price Prediction Cover Image](https://editor.analyticsvidhya.com/uploads/91867Screenshot%20(125).png)

Image 1

## **Problem statement for Stock Market Prediction  
**

Let us see the data on which we will be working before we begin implementing the software to anticipate stock market values. In this section, we will examine the stock price of Microsoft Corporation (MSFT) as reported by the National Association of Securities Dealers Automated Quotations (NASDAQ). The stock price data will be supplied as a Comma Separated File (.csv), that may be opened and analyzed in Excel or a Spreadsheet.

MSFT’s stocks are listed on NASDAQ and their value is updated every working day of the stock market. It should be noted that the market does not allow trading on Saturdays and Sundays, therefore there is a gap between the two dates. The Opening Value of the stock, the Highest and Lowest values of that stock on the same days, as well as the Closing Value at the end of the day, are all indicated for each date.

The Adjusted Close Value reflects the stock’s value after dividends have been declared (too technical!). Furthermore, the total volume of the stocks in the market is provided, With this information, it is up to the job of a Machine Learning/Data Scientist to look at the data and develop different algorithms that may extract patterns from the historical data of the Microsoft Corporation stock.

## **The long short term memory**

We will use the Long Short-Term Memory(LSTM) method to create a Machine Learning model to forecast Microsoft Corporation stock values. They are used to make minor changes to the information by multiplying and adding. Long-term memory (LSTM) is a deep learning artificial recurrent neural network (RNN) architecture.

Unlike traditional feed-forward neural networks, LSTM has feedback connections. It can handle single data points (such as pictures) as well as full data sequences (such as speech or video).

### **Program Implementation**

We will now go to the section where we will utilize Machine Learning in Python to estimate the stock value using the LSTM.

## **Importing the Libraries**

As we all know, the first step is to import the libraries required to preprocess Microsoft Corporation stock data and the other libraries required for constructing and visualizing the LSTM model outputs. We’ll be using the Keras library from the TensorFlow framework for this. All modules are imported from the Keras library.

#Importing the Libraries
import pandas as PD
import NumPy as np
%matplotlib inline
import matplotlib. pyplot as plt
import matplotlib
from sklearn. Preprocessing import MinMaxScaler
from Keras. layers import LSTM, Dense, Dropout
from sklearn.model_selection import TimeSeriesSplit
from sklearn.metrics import mean_squared_error, r2_score
import matplotlib. dates as mandates
from sklearn. Preprocessing import MinMaxScaler
from sklearn import linear_model
from Keras. Models import Sequential
from Keras. Layers import Dense
import Keras. Backend as K
from Keras. Callbacks import EarlyStopping
from Keras. Optimisers import Adam
from Keras. Models import load_model
from Keras. Layers import LSTM
from Keras. utils.vis_utils import plot_model

## **Getting to Visualising the** **Stock Market Prediction** **Data**

Using the Pandas Data Reader library, we will upload the stock data from the local system as a Comma Separated Value (.csv) file and save it to a pandas DataFrame. Finally, we will examine the data.

#Get the Dataset
df=pd.read_csv(“MicrosoftStockData.csv”,na_values=[‘null’],index_col=’Date’,parse_dates=True,infer_datetime_format=True)
df.head()

## **Check for Null Values by printing the DataFrame Shape**

In this step, firstly we will print the structure of the dataset. We check for null values in the data frame to ensure that there are none. The existence of null values in the dataset causes issues during training since they function as outliers, creating a wide variance in the training process.

#Print the shape of Dataframe  and Check for Null Values
print(“Dataframe Shape: “, df. shape)
print(“Null Value Present: “, df.IsNull().values.any())
**Output:** >> Dataframe Shape: (7334, 6)
>>Null Value Present: False

**Date**

**Open**

**High**

**Low**

**Close**

**Adj Close**

**Volume**

**1990-01-02**

0.605903

0.616319

0.598090

0.616319

0.447268

53033600

**1990-01-03**

0.621528

0.626736

0.614583

0.619792

0.449788

113772800

**1990-01-04**

0.619792

0.638889

0.616319

0.638021

0.463017

125740800

**1990-01-05**

0.635417

0.638889

0.621528

0.622396

0.451678

69564800

**1990-01-08**

0.621528

0.631944

0.614583

0.631944

0.458607

58982400

**Step 4 – Plot of the True Adjusted Close Value**

The Adjusted Close Value is the final output value that will be forecasted using the Machine Learning model. This figure indicates the stock’s closing price on that particular day of stock market trading.

#Plot the True Adj Close Value
df[‘Adj Close’].plot()

![Plotting Adj Close Value | Stock Price Prediction](https://editor.analyticsvidhya.com/uploads/19459chart.png)

## **Setting the Target Variable and Selecting the Features**

The output column is then assigned to the target variable in the following step. It is the adjusted relative value of the Microsoft Stock in this situation. Furthermore, we pick the features that serve as the independent variable to the target variable (dependent variable). We choose four characteristics to account for training purposes:

-   Open
-   High
-   Low
-   Volume

#Set Target Variable
output_var = PD.DataFrame(df[‘Adj Close’])
#Selecting the Features
features = [‘Open’, ‘High’, ‘Low’, ‘Volume’]

## **Scaling**

To decrease the computational cost of the data in the table, we will scale the stock values to values between 0 and 1. As a result, all of the data in large numbers is reduced, and therefore memory consumption is decreased. Also, because the data is not spread out in huge values, we can achieve greater precision by scaling down. To perform this we will be using the MinMaxScaler class of the sci-kit-learn library.

#Scaling
scaler = MinMaxScaler()
feature_transform = scaler.fit_transform(df[features])
feature_transform= pd.DataFrame(columns=features, data=feature_transform, index=df.index)
feature_transform.head()

**Date**

**Open**

**High**

**Low**

**Volume**

**1990-01-02**

0.000129

0.000105

0.000129

0.064837

**1990-01-03**

0.000265

0.000195

0.000273

0.144673

**1990-01-04**

0.000249

0.000300

0.000288

0.160404

**1990-01-05**

0.000386

0.000300

0.000334

0.086566

**1990-01-08**

0.000265

0.000240

0.000273

0.072656

As shown in the above table, the values of the feature variables are scaled down to lower values when compared to the real values given above.

## **Creating a Training Set and a Test Set for** **Stock Market Prediction**

We have to divide the entire dataset into training and test sets before feeding it into the training model. The Machine Learning LSTM model will be trained on the data in the training set and tested for accuracy and backpropagation on the test set.

The sci-kit-learn library’s TimeSeriesSplit class will be used for this. We set the number of splits to 10, indicating that 10% of the data will be used as the test set and 90% of the data would be used to train the LSTM model. The advantage of utilising this Time Series split is that the split time series data samples are examined at regular time intervals.

#Splitting to Training set and Test set
timesplit= TimeSeriesSplit(n_splits=10)
for train_index, test_index in timesplit.split(feature_transform):
        X_train, X_test = feature_transform[:len(train_index)], feature_transform[len(train_index): (len(train_index)+len(test_index))]
        y_train, y_test = output_var[:len(train_index)].values.ravel(), output_var[len(train_index): (len(train_index)+len(test_index))].values.ravel()

## Data Processing For LSTM
Sau khi hoàn tất các tập huấn luyện và kiểm tra, chúng tôi sẽ nhập dữ liệu vào mô hình LSTM. Trước khi chúng ta có thể làm điều đó, chúng ta phải chuyển đổi dữ liệu tập huấn luyện và kiểm tra thành một định dạng mà mô hình LSTM có thể diễn giải. Vì LSTM cần dữ liệu được cung cấp ở dạng 3D, trước tiên, chúng tôi chuyển đổi dữ liệu đào tạo và kiểm tra thành mảng NumPy và sau đó cấu trúc lại chúng để khớp với định dạng (Số lượng mẫu, 1, Số lượng Features). Bây giờ, 6667 là số lượng mẫu trong tập huấn luyện, bằng 90% của 7334 và số lượng Features là 4, do đó tập huấn luyện được định hình lại để phản ánh điều này (6667, 1, 4). Tương tự như vậy, tập kiểm tra được định hình lại.
```
#Process the data for LSTM
trainX =np.array(X_train)
testX =np.array(X_test)
X_train = trainX.reshape(X_train.shape[0], 1, X_train.shape[1])
X_test = testX.reshape(X_test.shape[0], 1, X_test.shape[1])
```
## Building the LSTM Model for Stock Market Prediction
Cuối cùng, chúng ta đến điểm khi chúng ta sẽ xây dựng Mô hình LSTM. Trong bước này, chúng tôi sẽ xây dựng mô hình Keras tuần tự với một lớp LSTM. Lớp LSTM có 32 đơn vị và được theo sau bởi một Lớp dày đặc của một nơ-ron.

Chúng tôi biên dịch mô hình bằng cách sử dụng Trình tối ưu hóa Adam và Lỗi bình phương trung bình làm hàm mất mát. Đối với mô hình LSTM, đây là sự kết hợp được ưu tiên nhất. Mô hình được vẽ và trình bày bên dưới.
```
#Building the LSTM Model
lstm = Sequential()
lstm.add(LSTM(32, input_shape=(1, trainX.shape[1]), activation=’relu’, return_sequences=False))
lstm.add(Dense(1))
lstm.compile(loss=’mean_squared_error’, optimizer=’adam’)
plot_model(lstm, show_shapes=True, show_layer_names=True)
```
![[Pasted image 20211122165431.png]]

## Training the Stock Market Prediction Model
Cuối cùng, chúng tôi sử dụng hàm fit để huấn luyện mô hình LSTM được tạo ở trên trên dữ liệu huấn luyện cho 100 kỷ nguyên với kích thước lô là 8.

Cuối cùng, chúng ta có thể quan sát thấy rằng giá trị tổn thất đã giảm theo cấp số nhân theo thời gian trong quy trình đào tạo 100 kỷ nguyên, đạt đến giá trị 0,4599.

## LSTM Prediction
Bây giờ chúng ta đã có sẵn mô hình của mình, chúng ta có thể sử dụng nó để dự báo Giá trị Đóng liền kề của cổ phiếu Microsoft bằng cách sử dụng một mô hình được đào tạo bằng cách sử dụng mạng LSTM trên tập thử nghiệm. Điều này được thực hiện bằng cách sử dụng chức năng dự đoán đơn giản trên mô hình LSTM đã được tạo.
```
#LSTM Prediction
y_pred= lstm.predict(X_test)
```
## Comparing Predicted vs True Adjusted Close Value – LSTM
Cuối cùng, bây giờ chúng tôi đã dự đoán các giá trị cho bộ thử nghiệm, chúng tôi có thể hiển thị biểu đồ để so sánh cả giá trị thực của Adj Close và giá trị dự đoán của Adj Close bằng cách sử dụng mô hình Máy học LSTM.

```
#Predicted vs True Adj Close Value – LSTM
plt.plot(y_test, label=’True Value’)
plt.plot(y_pred, label=’LSTM Value’)
plt.title(“Prediction by LSTM”)
plt.xlabel(‘Time Scale’)
plt.ylabel(‘Scaled USD’)
plt.legend()
plt.show()
```

Biểu đồ trên chứng minh rằng mô hình mạng LSTM đơn cực kỳ cơ bản được tạo ở trên phát hiện một số mẫu. Chúng tôi có thể mô tả chính xác hơn giá trị cổ phiếu của mọi công ty cụ thể bằng cách tinh chỉnh nhiều thông số và thêm nhiều lớp LSTM vào mô hình.

# Conclusion
Tuy nhiên, với sự ra đời của Học máy và các thuật toán mạnh mẽ của nó, các tiến bộ nghiên cứu thị trường và Dự đoán thị trường chứng khoán gần đây nhất đã bắt đầu đưa các phương pháp tiếp cận như vậy vào phân tích dữ liệu thị trường chứng khoán. Giá trị mở cửa của cổ phiếu, Giá trị cao nhất và thấp nhất của cổ phiếu đó vào cùng ngày, cũng như Giá trị đóng cửa vào cuối ngày, tất cả đều được chỉ ra cho mỗi ngày. Hơn nữa, tổng khối lượng cổ phiếu trên thị trường được cung cấp. Với thông tin này, công việc của Nhà khoa học về dữ liệu máy học là xem xét dữ liệu và phát triển các thuật toán khác nhau có thể giúp tìm kiếm giá trị cổ phiếu thích hợp.

Dự đoán thị trường chứng khoán là một thủ tục tốn nhiều thời gian và công sức cách đây vài năm hoặc thậm chí một thập kỷ. Tuy nhiên, với việc ứng dụng máy học vào dự báo thị trường chứng khoán, thủ tục đã trở nên đơn giản hơn rất nhiều. Máy học không chỉ tiết kiệm thời gian và tài nguyên mà còn vượt trội hơn con người về hiệu suất. nó sẽ luôn ưu tiên sử dụng một thuật toán máy tính được đào tạo vì nó sẽ tư vấn cho bạn chỉ dựa trên sự kiện, con số và dữ liệu và sẽ không ảnh hưởng đến cảm xúc hoặc thành kiến.

Reference: [# Machine Learning for Stock Market Prediction with Step-by-Step Implementation](https://www.analyticsvidhya.com/blog/2021/10/machine-learning-for-stock-market-prediction-with-step-by-step-implementation/).

---------------------------------------------------------------------
### Code mẫu: 
[# Stock Price Prediction – Machine Learning Project in Python](https://data-flair.training/blogs/stock-price-prediction-machine-learning-project-in-python/)
[# How to Predict Stock Prices in Python using TensorFlow 2 and Keras](https://www.thepythoncode.com/article/stock-price-prediction-in-python-using-tensorflow-2-and-keras)
>>>>>>> 4dfdfe63911e4b73bf4c30743b6baf2d84b1649f
