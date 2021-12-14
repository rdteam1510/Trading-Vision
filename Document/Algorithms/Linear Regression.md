Reference:[# Predicting Stock Prices with Linear Regression in Python](https://www.alpharithms.com/predicting-stock-prices-with-linear-regression-214618/)

Việc xác định lại giá cổ phiếu trong Python bằng cách sử dụng hồi quy tuyến tính rất dễ dàng. Tìm kiếm sự kết hợp phù hợp của các tính năng để làm cho những dự đoán đó có lợi lại là một câu chuyện khác. Trong bài viết này, chúng tôi sẽ đào tạo mô hình hồi quy sử dụng dữ liệu giá lịch sử và các chỉ báo kỹ thuật để đưa ra dự đoán về giá trong tương lai

# Highlights
* Chúng tôi sẽ tải dữ liệu định giá trước đây vào DataFrame của Pandas và thêm các chỉ số kỹ thuật để sử dụng làm các tính năng trong mô hình Hồi quy tuyến tính của chúng tôi.
* Chúng tôi sẽ chỉ trích xuất dữ liệu mà chúng tôi dự định sử dụng từ DataFrame
* Chúng tôi sẽ đề cập đến một số lỗi phổ biến về cách xử lý dữ liệu trước khi đào tạo mô hình của chúng tôi và chỉ ra cách một số "định hình lại" đơn giản có thể giải quyết một thông báo lỗi khó chịu.
* Chúng tôi sẽ đào tạo một mô hình hồi quy tuyến tính đơn giản bằng cách sử dụng đường trung bình động hàm mũ 10 ngày làm công cụ dự đoán cho giá đóng cửa.
* Chúng tôi sẽ phân tích độ chính xác của mô hình của mình, vẽ biểu đồ kết quả và xem xét mức độ sai sót của chúng tôi
* Cuối cùng, chúng tôi sẽ chạy một chiến lược giao dịch mô phỏng để xem chúng tôi có thể tạo ra loại lợi nhuận nào bằng cách tận dụng sức mạnh dự đoán của mô hình của chúng tôi. Cảnh báo spoiler: hóa ra khá tốt!
# Introduction
Hồi quy tuyến tính được sử dụng trong kinh doanh, khoa học và bất kỳ lĩnh vực nào khác có liên quan đến dự đoán và dự báo. Nó giúp xác định các mối quan hệ giữa một biến phụ thuộc và một hoặc nhiều biến độc lập. Hồi quy tuyến tính đơn giản được xác định bằng cách sử dụng một tính năng để dự đoán một kết quả. 

Dự báo thị trường chứng khoán là một ứng dụng hấp dẫn của hồi quy tuyến tính. Các gói học máy hiện đại như `scikit-learn` giúp cho việc triển khai các phân tích này có thể thực hiện được trong một vài dòng mã. 

Việc thực hiện các phân tích này dễ dàng như vậy, việc lựa chọn các tính năng có đủ khả năng dự đoán để thu lợi nhuận là một nghệ thuật hơn là khoa học. 

Lưu ý: Thông tin trong bài viết này chỉ dành cho mục đích thông tin và không phải là lời khuyên tài chính. Xem công bố tài chính của chúng tôi để biết thêm thông tin. 

# Step 1: Get Historic Pricing Data
Để bắt đầu, chúng tôi cần dữ liệu. Điều này sẽ xuất hiện dưới dạng dữ liệu giá lịch sử cho Tesla Motor’s ($ TSLA). 
```import pandas as pd

# Load local .csv file as DataFrame
df = pd.read_csv('TSLA.csv')

# Inspect the data
print(df)

# List of entries
           Date        Open        High  ...       Close   Adj Close     Volume
0    2020-01-02   84.900002   86.139999  ...   86.052002   86.052002   47660500
1    2020-01-03   88.099998   90.800003  ...   88.601997   88.601997   88892500
2    2020-01-06   88.094002   90.311996  ...   90.307999   90.307999   50665000
3    2020-01-07   92.279999   94.325996  ...   93.811996   93.811996   89410500
4    2020-01-08   94.739998   99.697998  ...   98.428001   98.428001  155721500
..          ...         ...         ...  ...         ...         ...        ...
248  2020-12-24  642.989990  666.090027  ...  661.770020  661.770020   22865600
249  2020-12-28  674.510010  681.400024  ...  663.690002  663.690002   32278600
250  2020-12-29  661.000000  669.900024  ...  665.989990  665.989990   22910800
251  2020-12-30  672.000000  696.599976  ...  694.780029  694.780029   42846000
252  2020-12-31  699.989990  718.719971  ...  705.669983  705.669983   49649900

[253 rows x 7 columns]

# Show some summary statistics
print(df.describe())

             Open        High         Low       Close   Adj Close        Volume
count  253.000000  253.000000  253.000000  253.000000  253.000000  2.530000e+02
mean   289.108428  297.288412  280.697937  289.997067  289.997067  7.530795e+07
std    167.665389  171.702889  163.350196  168.995613  168.995613  4.013706e+07
min     74.940002   80.972000   70.101997   72.244003   72.244003  1.735770e+07
25%    148.367996  154.990005  143.222000  149.792007  149.792007  4.713450e+07
50%    244.296005  245.600006  237.119995  241.731995  241.731995  7.025550e+07
75%    421.390015  430.500000  410.579987  421.200012  421.200012  9.454550e+07
max    699.989990  718.719971  691.119995  705.669983  705.669983  3.046940e+08

```
# Step 2: Prepare the data
Trước khi bắt đầu phát triển mô hình hồi quy, chúng tôi sẽ cắt bớt một số dữ liệu. Cột "Ngày tháng" sẽ được chuyển đổi thành một DatetimeIndex và cột "Điều chỉnh đóng (Adj Price)" sẽ là các giá trị số duy nhất mà chúng tôi giữ lại. Mọi thứ khác đang bị giảm xuống.
```# Reindex data using a DatetimeIndex
df.set_index(pd.DatetimeIndex(df['Date']), inplace=True)

# Keep only the 'Adj Close' Value
df = df[['Adj Close']]

# Re-inspect data
print(df)

             Adj Close
Date                  
2020-01-02   86.052002
2020-01-03   88.601997
2020-01-06   90.307999
2020-01-07   93.811996
2020-01-08   98.428001
...                ...
2020-12-24  661.770020
2020-12-28  663.690002
2020-12-29  665.989990
2020-12-30  694.780029
2020-12-31  705.669983

[253 rows x 1 columns]

# Print Info
print(df.info())

<class 'pandas.core.frame.DataFrame'>
DatetimeIndex: 253 entries, 2020-01-02 to 2020-12-31
Data columns (total 1 columns):
 #   Column     Non-Null Count  Dtype  
---  ------     --------------  -----  
 0   Adj Close  253 non-null    float64
dtypes: float64(1)
memory usage: 4.0 KB
```

Những gì chúng ta thấy ở đây là cột 'Ngày tháng' của chúng ta đã được chuyển đổi thành DatetimeIndex với 253 mục nhập và cột 'Đóng điều chỉnh' là giá trị được giữ lại duy nhất của kiểu float64 (`np.float64.`).

![[Pasted image 20211125221737.png]]
The plot of $TSLA historic pricing from 2020-2021.

Chúng ta có thể thấy một xu hướng tăng đáng kể ở đây phản ánh mức tăng giá trong 12 tháng từ 86,052002 lên 705,669983. Đó là mức tăng tương đối ~ 720%. Hãy xem liệu chúng ta có thể không phát triển mô hình hồi quy tuyến tính có thể giúp dự đoán các xu hướng tăng như thế này không!

### Aside: Linear Regression Assumptions & Autocorrelation
Hồi quy tuyến tính đòi hỏi một loạt các giả định được thực hiện để có hiệu quả. Người ta chắc chắn có thể áp dụng một mô hình tuyến tính mà không cần xác thực những giả định này nhưng những hiểu biết hữu ích thì không có khả năng có được.

Một trong những giả định này là các biến trong dữ liệu là độc lập. Cụ thể, điều này cho thấy rằng phần dư (chênh lệch giữa giá trị dự đoán và giá trị quan sát) cho bất kỳ biến đơn lẻ nào là không liên quan.

Đối với dữ liệu Chuỗi thời gian, đây thường là một vấn đề vì các giá trị quan sát của chúng ta có bản chất dọc (_longitudinal_)- nghĩa là chúng là các giá trị quan sát cho cùng một thứ, được ghi lại theo trình tự. Điều này tạo ra một đặc tính được gọi là tự tương quan mô tả cách một biến có liên quan đến chính nó (tự liên quan.) (Chatterjee, 2012)

[Phân tích tự tương quan](https://www.alpharithms.com/autocorrelation-time-series-python-432909/) rất hữu ích trong việc xác định các xu hướng như theo mùa hoặc các kiểu thời tiết. Tuy nhiên, khi nói đến ngoại suy các giá trị để dự đoán giá, nó là một vấn đề. Điều rút ra ở đây là giá trị ngày tháng của chúng tôi không phù hợp làm [biến số độc lập](https://www.alpharithms.com/independent-variable-313214/) và chúng tôi cần nghĩ ra một cái gì đó khác và sử dụng giá trị đóng đã điều chỉnh làm biến số độc lập. 

# Step 3: Adding Technical Indicators
Chỉ báo kỹ thuật là các giá trị được tính toán mô tả các chuyển động trong dữ liệu định giá lịch sử cho các chứng khoán như cổ phiếu, trái phiếu và ETF. Các nhà đầu tư sử dụng các số liệu này để dự đoán chuyển động của cổ phiếu nhằm xác định tốt nhất thời điểm mua, bán hoặc nắm giữ.

Các chỉ báo kỹ thuật thường được sử dụng bao gồm đường trung bình động (SMA, EMA, MACD), Chỉ số Sức mạnh Tương đối (RSI), Dải Bollinger (BBANDS) và một số chỉ số khác. Chắc chắn không thiếu các chỉ báo kỹ thuật phổ biến trên mạng để bạn lựa chọn. Để thêm các chỉ báo kỹ thuật của chúng tôi, chúng tôi sẽ sử dụng thư viện pandas_ta. Để bắt đầu, hãy thêm đường trung bình động theo cấp số nhân (EMA) vào dữ liệu của chúng tôi:
```import pandas_ta

# Add EMA to dataframe by appending
# Note: pandas_ta integrates seamlessly into
# our existing dataframe
df.ta.ema(close='adj_close', length=10, append=True)

# Inspect Data once again
             adj_close      EMA_10
date                              
2020-01-02   86.052002         NaN
2020-01-03   88.601997         NaN
2020-01-06   90.307999         NaN
2020-01-07   93.811996         NaN
2020-01-08   98.428001         NaN
...                ...         ...
2020-12-24  661.770020  643.572394
2020-12-28  663.690002  647.230141
2020-12-29  665.989990  650.641022
2020-12-30  694.780029  658.666296
2020-12-31  705.669983  667.212421

[253 rows x 2 columns]

<class 'pandas.core.frame.DataFrame'>
DatetimeIndex: 253 entries, 2020-01-02 to 2020-12-31
Data columns (total 2 columns):
 #   Column     Non-Null Count  Dtype  
---  ------     --------------  -----  
 0   adj_close  253 non-null    float64
 1   EMA_10     244 non-null    float64
dtypes: float64(2)
```

Như rõ ràng từ các bản in ở trên, giờ đây chúng tôi có một cột mới trong dữ liệu của mình có tên “EMA_10”. Đây là giá trị mới được tính toán của chúng tôi đại diện cho đường trung bình động theo cấp số nhân được tính trong khoảng thời gian 10 ngày.

Lưu ý: Thư viện pandas_ta sẽ thay đổi tên cột. Ở đây, chúng tôi thấy cột “Điều chỉnh đóng” được đổi tên thành “adj_close”. Đây là hành vi được mong đợi nhưng có thể gây ra sự cố nếu một người không biết về chức năng này.

Đây là một tin tuyệt vời nhưng cũng đi kèm với một cảnh báo: 9 mục nhập đầu tiên trong dữ liệu của chúng tôi sẽ có giá trị NaN vì không có giá trị tiếp tục nào mà từ đó EMA có thể được tính toán.
```# Print the first 10 entries of our data
print(df.head(10))

             adj_close     EMA_10
date                             
2020-01-02   86.052002        NaN
2020-01-03   88.601997        NaN
2020-01-06   90.307999        NaN
2020-01-07   93.811996        NaN
2020-01-08   98.428001        NaN
2020-01-09   96.267998        NaN
2020-01-10   95.629997        NaN
2020-01-13  104.972000        NaN
2020-01-14  107.584000        NaN
2020-01-15  103.699997  96.535599
```

Chúng tôi có thể thực hiện một số cách tiếp cận để thay thế các giá trị NaN trong dữ liệu của mình. Chúng bao gồm thay thế bằng số không, giá trị trung bình cho chuỗi, lấp đầy từ giá trị sẵn có tiếp theo, v.v. 

Với mục tiêu của chúng tôi là dự đoán giá cả trong thế giới thực không phải là một lựa chọn hấp dẫn. Thay vào đó, chúng tôi sẽ chỉ bỏ tất cả các hàng mà chúng tôi có giá trị NaN và sử dụng tập dữ liệu nhỏ hơn một chút bằng cách thực hiện phương pháp sau:

Bây giờ, chúng tôi đã sẵn sàng để bắt đầu phát triển mô hình hồi quy của mình để xem mức độ hiệu quả của đường EMA trong việc dự đoán giá cổ phiếu. Trước tiên, chúng ta hãy xem nhanh sơ đồ dữ liệu của chúng tôi bây giờ để có ý tưởng về cách giá trị EMA theo dõi với giá đóng cửa đã điều chỉnh.
![[Pasted image 20211125222651.png]]
Chúng ta có thể thấy ở đây đường EMA theo dõi rất độc đáo và chúng ta chỉ mất một chút dữ liệu nhỏ ở vị trí dẫn đầu.

# Step 4: Test-Train Split
Mô hình học máy yêu cầu tối thiểu hai bộ dữ liệu để có hiệu quả: dữ liệu đào tạo và dữ liệu thử nghiệm. Do có thể khó kiếm được dữ liệu mới, nên một cách tiếp cận phổ biến để tạo các tập dữ liệu con này là chia một tập dữ liệu thành nhiều tập (Xu, 2018).

Việc sử dụng tám mươi phần trăm dữ liệu để đào tạo và hai mươi phần trăm còn lại để thử nghiệm là điều phổ biến.
Phần tách 80/20 là nơi chúng ta sẽ bắt đầu. Thay vì cố gắng chia nhỏ đối tượng `DataFrame` của chúng tôi theo cách thủ công, chúng tôi sẽ chỉ dùng hàm `scikit-learning test_train_split` để xử lý công việc nặng nhọc:
```# Split data into testing and training sets
X_train, X_test, y_train, y_test = train_test_split(df[['adj_close']], df[['EMA_10']], test_size=.2)

# Test set
print(X_test.describe())

          adj_close
count     49.000000
mean     272.418612
std      140.741107
min       86.040001
25%      155.759995
50%      205.009995
75%      408.089996
max      639.830017

# Training set
print(X_train.describe())

          adj_close
count    194.000000
mean     291.897732
std      166.033359
min       72.244003
25%      155.819996
50%      232.828995
75%      421.770004
max      705.669983
```
Chúng tôi có thể thấy rằng dữ liệu của chúng tôi đã được chia thành các đối tượng DataFrame riêng biệt với giá trị số nguyên gần nhất của các hàng phản ánh mức phân chia 80/10 của chúng tôi (49 mẫu thử nghiệm, 192 mẫu đào tạo.) Lưu ý rằng kích thước thử nghiệm 0,20 (20%) đã được chỉ định làm đối số cho hàm `train_test_split`.

Lưu ý: Dữ liệu X_train, X_test, y_train và y_test là các đối tượng Pandas DataFrame trong bộ nhớ. Điều này là kết quả của việc sử dụng ký hiệu truy cập trong ngoặc kép `df[['adj_close']]` trái ngược với ký hiệu trong ngoặc đơn `df['adj_close']`. Ký hiệu trong ngoặc đơn sẽ trả về một đối tượng Dòng và sẽ yêu cầu định hình lại trước khi chúng tôi có thể tiến hành để phù hợp với mô hình của mình.

# Step 5: Training the Model
Chúng tôi có dữ liệu của mình và bây giờ chúng tôi muốn xem nó có thể phù hợp với mô hình tuyến tính như thế nào. Lớp `LinearRegression` của `Scikit-learn` làm cho điều này đủ đơn giản — chỉ yêu cầu 2 dòng mã (không bao gồm nhập):
```from sklearn.linear_model import LinearRegression

# Create Regression Model
model = LinearRegression()

# Train the model
model.fit(X_train, y_train)
```

Giờ đây, chúng ta có thể đánh giá mức độ phù hợp với dữ liệu của mô hình bằng cách kiểm tra các hệ số của mô hình và một số thống kê như sai số tuyệt đối trung bình (**mean absolute error -MAE**) và hệ số xác định (**coefficient of determination -r2**).

# Step 5: Validating the Fit
Mô hình tuyến tính tạo ra các hệ số cho mỗi đối tượng trong quá trình huấn luyện và trả về các giá trị này dưới dạng một mảng. Trong trường hợp của chúng tôi, chúng tôi có một đặc điểm sẽ được phản ánh bởi một giá trị duy nhất. Chúng tôi có thể truy cập điều này bằng cách sử dụng thuộc tính `model.regr_`.

Ngoài ra, chúng tôi có thể sử dụng các giá trị dự đoán từ mô hình được đào tạo của chúng tôi để tính toán sai số bình phương trung bình và hệ số xác định bằng cách sử dụng các chức năng khác từ mô-đun `sklearn.metrics`. 

```from sklearn.metrics import mean_squared_error, r2_score, mean_absolute_error

# Printout relevant metrics
print("Model Coefficients:", model.coef_)
print("Mean Absolute Error:", mean_absolute_error(y_test, y_pred))
print("Coefficient of Determination:", r2_score(y_test, y_pred))

# Results
Model Coefficients: [[0.94540376]]
Mean Absolute Error: 12.554147460577513
Coefficient of Determination: 0.9875188616393644
```


MAE là trung bình cộng của các sai số tuyệt đối trong mô hình của chúng tôi, được tính bằng cách lấy tổng chênh lệch tuyệt đối giữa các giá trị quan sát được của X và Y chia cho tổng số quan sát.

MAE có thể được mô tả bằng tổng sai số tuyệt đối của tất cả các giá trị quan sát được chia cho tổng số quan sát. Hãy xem bài viết này của [Shravankumar Hiregoudar](https://towardsdatascience.com/ways-to-evaluate-regression-models-77a3ff45ba70) để có cái nhìn sâu hơn về việc sử dụng MAE, cũng như các số liệu khác, để đánh giá các mô hình hồi quy.

Hiện tại, chúng ta hãy nhận ra rằng giá trị MAE càng thấp càng tốt và hệ số giá trị tương quan của chúng ta càng gần với 1,0 càng tốt. Các số liệu ở đây cho thấy rằng mô hình của chúng tôi rất phù hợp với dữ liệu của chúng tôi, mặc dù MAE hơi cao.

Hãy xem xét biểu đồ về các giá trị quan sát của chúng tôi so với các giá trị dự đoán để xem giá trị này được thể hiện trực quan như thế nào:
![[Pasted image 20211125223544.png]]
The red lines represent the residuals (error) of our predicted values (black line) and our observed values (yellow dots).

Điều này trông giống như một sự phù hợp khá tốt! Với giá trị r2 tương đối cao của chúng tôi, không có gì ngạc nhiên. 

# Step 6: Interpretation
Tại thời điểm này, chúng tôi đã đào tạo một mô hình về dữ liệu giá lịch sử bằng cách sử dụng Giá trị đóng cửa được điều chỉnh và Đường trung bình trượt theo cấp số nhân trong khoảng thời gian giao dịch 10 ngày. Mục tiêu của chúng tôi là phát triển một mô hình có thể sử dụng EMA của bất kỳ ngày nhất định nào (phụ thuộc vào giá của 9 ngày trước đó) và dự đoán chính xác giá đóng cửa của ngày đó. Hãy chạy mô phỏng một chiến lược giao dịch rất đơn giản để đánh giá xem chúng ta có thể đã thực hiện tốt như thế nào khi sử dụng chiến lược này.

Chiến lược: Nếu mô hình của chúng tôi dự đoán giá trị đóng cửa cao hơn giá trị mở cửa, chúng tôi thực hiện giao dịch cho một cổ phiếu vào ngày đó — mua tại thị trường mở và bán ngay trước khi thị trường đóng cửa.

# Results
Trong 49 ngày giao dịch có thể xảy ra, chiến lược của chúng tôi đã chọn thực hiện tổng cộng 4 giao dịch. Chiến lược này đưa ra hai giả định táo bạo:
* Chúng tôi đã có thể mua một cổ phiếu với giá mở cửa chính xác được ghi lại;
* Chúng tôi đã có thể bán cổ phiếu đó ngay trước khi đóng cửa với mức giá chính xác được ghi nhận.
Áp dụng chiến lược này — và những giả định này — mô hình của chúng tôi đã tạo ra $ 151,77. Nếu số vốn ban đầu của chúng tôi là 1.000 đô la, chiến lược này sẽ dẫn đến mức tăng ~ 15,18% tổng vốn.

# Review
Sử dụng hồi quy tuyến tính để dự đoán giá cổ phiếu là một nhiệm vụ đơn giản trong Python khi người ta tận dụng sức mạnh của các thư viện học máy như `scikit-learn`. Sự tiện lợi của thư viện pandas_ta cũng không thể nói quá — cho phép người ta thêm bất kỳ chỉ số kỹ thuật nào trong số hàng chục chỉ báo kỹ thuật trong các dòng mã đơn lẻ.

Trong bài viết này, chúng ta đã thấy cách tải dữ liệu, kiểm tra-đào tạo tách dữ liệu, thêm chỉ số, đào tạo mô hình tuyến tính và cuối cùng áp dụng mô hình đó để dự đoán giá cổ phiếu trong tương lai — với một số mức độ thành công!

Việc sử dụng đường trung bình động hàm mũ (EMA) được chọn hơi tùy tiện. Có nhiều chỉ báo kỹ thuật khác phổ biến trong giao dịch thuật toán và chiến lược giao dịch truyền thống. Các chỉ báo này có thể được sử dụng thay vì EMA, cùng với nó trong nhiều mô hình hồi quy hoặc kết hợp một cách sáng tạo với kỹ thuật tính năng. Hạn chế duy nhất đối với cách người ta chọn để tận dụng các chỉ số này trong việc phát triển các mô hình tuyến tính là trí tưởng tượng mà thôi!

# References
1.  Chatterjee. _Regression Analysis by Example, 5th Edition_. 5th ed., Wiley, 2012.
2.  Guyon, Isabelle. A Scaling Law for the Validation-Set Training-Set Size Ratio. _In AT & T Bell Laboratories_. (1997) doi:10.1.1.33.1337
3.  Xu, Yun, and Royston Goodacre. “On Splitting Training and Validation Set: A Comparative Study of Cross-Validation, Bootstrap and Systematic Sampling for Estimating the Generalization Performance of Supervised Learning.” _Journal of analysis and testing_ vol. 2,3 (2018): 249-262. doi:10.1007/s41664-018-0068-2
---------------------------------------------------------------------
Reference: [# Stock prediction using Linear Regression in Python](https://medium.com/codex/stock-predication-using-regression-algorithm-in-python-fb8b426453b9)
# Regression algorithm model implementation
Trước khi chúng ta đi đến phần kỹ thuật của việc triển khai mô hình hồi quy cho tập dữ liệu, hãy nói một chút về thuật toán hồi quy. Về cơ bản, hồi quy là một tập hợp các kỹ thuật để ước tính các mối quan hệ. 
Phương trình hồi quy tuyến tính có thể được viết như sau:
![[Pasted image 20211130151207.png]]

![[Pasted image 20211130151228.png]]
Trong đó, x1, x2,… .xn đại diện cho các biến độc lập trong khi các hệ số θ1, θ2, θn đại diện cho trọng số.
```from sklearn.linear_model import LinearRegression  
from sklearn.metrics import confusion_matrix, accuracy_score  
regression = LinearRegression()  
regression.fit(train_x, train_y)  
print("regression coefficient",regression.coef_)  
print("regression intercept",regression.intercept_)regression coefficient [-6.51840470e-01  8.48419125e-01  8.12048390e-01 -3.50557805e-10]  
regression intercept -0.0315814559475216

```
# Prediction and Estimation
## The coefficient of determination R²
Chúng tôi sẽ tính hệ số xác định được ký hiệu là R², hệ số này nhận các giá trị từ 0 đến 1, giá trị R² càng cao thì hồi quy tuyến tính càng thành công khi giải thích sự biến đổi của các giá trị Y, trong trường hợp của chúng tôi, các giá trị Y đại diện cho lượng hàng đóng giá của công ty chủ thể. Dưới đây là bài toán đằng sau Hệ số xác định R²
![[Pasted image 20211130151435.png]]

```_# the coefficient of determination R²_   
regression_confidence = regression.score(test_x, test_y)  
print("linear regression confidence: ", regression_confidence)linear regression confidence:  0.9836914831421212
```
Hệ số xác định R² cho dữ liệu của chúng tôi là 0,98, tương đương 98%, có nghĩa là mô hình của chúng tôi là mô hình tuyến tính giải thích sự biến đổi của tất cả các giá trị Y.

## Prediction
Như chúng ta có thể thấy bên dưới, danh sách dự đoán của các điểm dữ liệu từ mở, cao, thấp và vol không được sắp xếp dựa trên thời gian hoặc ngày, tại thời điểm này, việc sắp xếp các điểm dữ liệu này là không quan trọng, vì chúng tôi sẽ vẽ biểu đồ dựa trên các ngày liên quan bằng cách sử dụng phương thức scatter plot ().
```predicted=regression.predict(test_x)  
print(test_x.head())open       high        low        vol  
551  45.750000  46.720001  42.500000  271678300  
552  45.360001  48.919998  44.680000  233779100  
553  48.270000  50.590000  47.880001  209106300  
554  50.860001  55.700001  50.480000  270203000  
555  56.990002  57.200001  51.500000  243669700
```
## Prediction Table of Actual Prices vs Predicted values
```dfr=pd.DataFrame({'Actual_Price':test_y, 'Predicted_Price':predicted})  
dfr.head(10)
```
```dfr.describe()
```
![[Pasted image 20211130151735.png]]

# Model Evaluation
MAE và RMSE là các số liệu thống kê phổ biến nhất được sử dụng để đo lường các biến liên tục hoặc trong trường hợp của chúng tôi là độ chính xác của các mô hình hồi quy của chúng tôi.
Phép toán đằng sau cả hai Mô hình có thể khó hiểu hoặc hơi khó hiểu để hiểu được ý nghĩa của nó, nhưng hãy nghĩ về nó theo cách dễ hiểu này, Chúng ta có giá đóng cửa thực tế của cổ phiếu và giá cổ phiếu dự đoán được tính từ cùng giá cổ phiếu thực tế mà chúng ta đã nói, bây giờ chúng ta cần để tính toán sai số hoặc sự khác biệt giữa chúng để xem những dự đoán này chính xác như thế nào so với các giá trị thực tế hiện có.

## Mean Absolute Error (MAE)
MAE đo độ lớn trung bình của các lỗi trong một tập hợp các dự đoán mà không cần xem xét hướng của chúng.
![[Pasted image 20211130151858.png]]

## Root mean squared error (RMSE)
RMSE là quy tắc tính điểm bậc hai cũng đo độ lớn trung bình của lỗi.
![[Pasted image 20211130151934.png]]

## Mean squared error (MSE)
![[Pasted image 20211130152014.png]]
MSE Sai số trung bình bình phương (MSE) đo mức trung bình của các bình phương của các lỗi - tức là sự khác biệt bình phương trung bình giữa các giá trị ước tính và giá trị thực tế. MSE là một hàm rủi ro, tương ứng với giá trị dự kiến của tổn thất lỗi bình phương.

Tất cả các số liệu được đề cập ở trên có thể nằm trong khoảng từ 0 đến ∞ và không quan tâm đến hướng của lỗi. Chúng là những điểm số theo định hướng tiêu cực, có nghĩa là chúng thể hiện giá trị càng thấp càng tốt. **Hãy nhớ rằng RMSE sẽ luôn có giá trị lớn hơn MSE**, Ngoài ra, nó có thể phạt nhiều dữ liệu liên quan đến lỗi hơn nên **RMSE có thể là một thước đo tốt hơn MSE.**

Trong trường hợp của chúng tôi, kết quả đánh giá của chúng tôi được đề cập như sau:
```print('Mean Absolute Error (MAE):', metrics.mean_absolute_error(test_y, predicted))  
print('Mean Squared Error (MSE) :', metrics.mean_squared_error(test_y, predicted))  
print('Root Mean Squared Error (RMSE):', np.sqrt(metrics.mean_squared_error(test_y, predicted)))Mean Absolute Error (MAE): 0.7581175544856527  
Mean Squared Error (MSE) : 1.001586723642404  
Root Mean Squared Error (RMSE): 1.000793047359145
```
Tất cả các kết quả số liệu của chúng tôi đều hiển thị các giá trị nhỏ hơn 1, từ quan điểm diễn giải, tôi nghĩ MAE là một phép đo số liệu tốt hơn cho các vấn đề tuyến tính so với RMSE, vì RMSE không chỉ mô tả sai số trung bình và có các hàm ý khác khó xác định hơn và hiểu. Ngoài ra, RMSE có tầm quan trọng hơn nhiều đối với các lỗi lớn, vì vậy các mô hình sẽ cố gắng giảm thiểu những lỗi này nhiều nhất có thể.
### Model Accuracy
```x2 = dfr.Actual_Price.mean()  
y2 = dfr.Predicted_Price.mean()  
Accuracy1 = x2/y2*100  
print("The accuracy of the model is " , Accuracy1)The accuracy of the model is  99.68318915929602
```
```plt.scatter(dfr.Actual_Price, dfr.Predicted_Price,  color='Darkblue')  
plt.xlabel("Actual Price")  
plt.ylabel("Predicted Price")plt.show()
```
![[Pasted image 20211130152351.png]]
```plt.plot(dfr.Actual_Price, color='black')  
plt.plot(dfr.Predicted_Price, color='lightblue')  
plt.title("Nio prediction chart")  
plt.legend();
```
![[Pasted image 20211130152413.png]]
# Conclusion
Thị trường chứng khoán luôn là chủ đề nóng nhất khi nói đến dự báo chuỗi thời gian hoặc cố gắng cảm nhận thị trường nói chung đang diễn ra như thế nào. Không thể tìm ra công thức “đi tới” để dự đoán hướng đi của thị trường chứng khoán, bởi vì thị trường biến động liên tục, sự không chắc chắn của các biến số chuyển động có thể tác động đến sự biến động của thị trường chứng khoán từ rủi ro liên quan đến bất ổn chính trị và các yếu tố kinh tế vĩ mô, danh sách có thể tiếp tục.
Để có tầm nhìn tốt hơn về nơi thị trường đang đi, việc dựa vào các mô hình hồi quy và dự đoán các giá trị nhất định dựa trên hiệu suất trong quá khứ là không đủ tốt. Các điểm sau đây sẽ bổ sung cho một báo cáo mô hình hồi quy chính thức.

### 1- Fundamental analysis
Phân tích cơ bản là một phương pháp để phân tích và dự đoán giá trị nội tại của công ty dựa trên dữ liệu hoạt động trong quá khứ và hiện tại, những dữ liệu này ở dạng báo cáo tài chính và thông tin bảng cân đối kế toán. Do đó, thông tin có thể được phân tích để tính toán các bội số hiện tại của công ty như P / E, P / B, hệ số thanh khoản, tỷ lệ nợ, tỷ suất lợi nhuận, tỷ suất lợi nhuận, v.v. Thông tin này có thể cho bạn niềm tin vững chắc vào định hướng của công ty và giúp bạn đưa ra các quyết định quan trọng để cân nhắc đầu tư vào công ty hay không.

### 2- Technical Analysis
Phân tích kỹ thuật là phương pháp sử dụng các phương pháp thống kê và xu hướng dựa trên dữ liệu lịch sử, ví dụ, tổng khối lượng hoặc giá trị hàng ngày của một cổ phiếu được giao dịch và đánh giá các mẫu lịch sử để dự đoán biến động giá cổ phiếu trong tương lai.

### 3- Sentiment Analysis
Về cơ bản, Phân tích cảm xúc là việc sử dụng xử lý ngôn ngữ Tự nhiên cao cấp để xác định xem dữ liệu văn bản đã cho là tích cực, tiêu cực hay trung tính. Bạn có thể tiến hành phân tích này trong các đoạn văn, một tập hợp lớn dữ liệu văn bản viết, đánh giá từ khách hàng của bạn, luận án nghiên cứu, bài báo khoa học, v.v. Trong trường hợp của chúng tôi, bạn có thể sử dụng phương pháp này để phân tích tài khoản Twitter cho công ty chủ đề hoặc đánh giá từ tài khoản Facebook của nó, v.v.
