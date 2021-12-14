# Support Vector Machine 
[[SVM Theory]]
[[SVM Implementation]]
Reference:[# Stock Market Prediction Using Machine Learning Model(SVM)](https://medium.com/@rupesh1684/stock-market-prediction-using-machine-learning-model-svm-e4aaca529886)
Các hàm từ `pandas_datareader.data` và `pandas_datareader.wb` trích xuất dữ liệu từ các nguồn Internet khác nhau thành Pandas DataFrame 
Hãy xem dữ liệu trong đó xx là tên cổ phiếu, lấy tên cổ phiếu từ https://in.finance.yahoo.com/quote/%5ENSEI/

```
# Import Python Libraries_import numpy as np  
from sklearn.model_selection import train_test_split  
_from sklearn.svm import SVR  
_import pandas_datareader.data as web  
import datetime as dt  
_stock='^NSEI'_df1=web.DataReader('xx.NS','yahoo',start='1996-01-01',end='2020-06-19')_
```
xx.NS là tên cổ phiếu, yahoo là tên phương thức, start / end là ngày bắt đầu & kết thúc trích xuất dữ liệu.

Hãy tạo thêm một cột có giá trị hàng tồn kho trước 15 ngày, bằng cách dịch chuyển 15 hàng lên trên.
Hãy tạo mô hình LR học máy dựa trên các giá trị hiện tại và 15 ngày sau và dự đoán các giá trị trước 15 ngày.
```_#Create one more column Prediction shifted 15 days up.  
df[‘Prediction’] = df[[‘Adj Close’]].shift(-15)  
#print data set  
print(df)_
```
![[Pasted image 20211127173438.png]]
```_#Create a data set X and convert it into numpy array , which will be having actual values  
X = np.array(df.drop([‘Prediction’],1))  
#Remove the last 15 rows  
X = X[:-15]  
print(X)_
```

```
_# Create a dataset y which will be having Predicted values and convert into numpy array  
y = np.array(df[‘Prediction’])  
# Remove Last 15 rows  
y = y[:-15]  
print(y)_
```

```
_# Split the data into train and test with 90 & 10 % respectively  
x_train, x_test, y_train, y_test = train_test_split(X, y, test_size=0.1)_
```

Áp dụng SVM model lên bộ train 
```
_#_ [_https://scikit-learn.org/stable/modules/generated/sklearn.svm.SVR.html_](https://scikit-learn.org/stable/modules/generated/sklearn.svm.SVR.html)_# SVM Model  
svr = SVR(kernel=’rbf’, C=1e3, gamma=0.1)  
# Train the model   
svr.fit(x_train, y_train)_
```
![[Pasted image 20211127173649.png]]
Radial basis function kernel, hay hạt nhân RBF, là một hàm hạt nhân phổ biến được sử dụng trong các thuật toán học chữ cái khác nhau. Đặc biệt, nó được sử dụng phổ biến trong phân loại máy vector hỗ trợ.

* C: Tham số điều chỉnh. Độ mạnh của chính quy tỷ lệ nghịch với C. Phải là cực dương. Hình phạt là hình phạt l2 bình phương.
* gamma: Hệ số nhân cho ‘rbf’, ‘poly’ và ‘sigmoid’.
* Mô hình thử nghiệm: Trả về hệ số xác định R² của dự đoán.

```
_# The best possible score is 1.0__svm_confidence = svr.score(x_test, y_test)  
print(“svm confidence: “, svm_confidence)_
```

![[Pasted image 20211127173935.png]]
lấy 15 hàng cuối cùng của tập dữ liệu gốc từ Adj. Đóng cột và chuyển đổi thành mảng numpy
```
_forecast = np.array(df.drop([‘Prediction’],1))[-15:]  
print(forecast)_
```
![[Pasted image 20211127174034.png]]
```
_# support vector model predictions for the next ‘15’ days  
svm_prediction = svr.predict(forecast)  
print(svm_prediction)_
```
![[Pasted image 20211127174127.png]]
