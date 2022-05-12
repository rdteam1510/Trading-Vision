References: [# Support Vector Machine — Introduction to Machine Learning Algorithms](https://towardsdatascience.com/support-vector-machine-introduction-to-machine-learning-algorithms-934a444fca47)

# SVM Implementation in Python

Tập dữ liệu mà chúng tôi sẽ sử dụng để triển khai thuật toán SVM của chúng tôi là tập dữ liệu Iris. 
```import pandas as pd

df = pd.read_csv('/Users/rohith/Documents/Datasets/Iris_dataset/iris.csv')

df = df.drop(['Id'],axis=1)

target = df['Species']

s = set()

for val in target:

s.add(val)

s = list(s)

rows = list(range(100,150))

df = df.drop(df.index[rows])
```
Vì tập dữ liệu Iris có ba lớp, chúng tôi sẽ loại bỏ một trong các lớp. Điều này khiến chúng ta gặp phải vấn đề phân loại lớp nhị phân.
```import matplotlib.pyplot as plt

x = df['SepalLengthCm']

y = df['PetalLengthCm']

setosa_x = x[:50]

setosa_y = y[:50]

versicolor_x = x[50:]

versicolor_y = y[50:]

plt.figure(figsize=(8,6))

plt.scatter(setosa_x,setosa_y,marker='+',color='green')

plt.scatter(versicolor_x,versicolor_y,marker='_',color='red')

plt.show()
```

![[Pasted image 20211202212408.png]]

Ngoài ra, có bốn tính năng có sẵn để chúng tôi sử dụng. Chúng tôi sẽ chỉ sử dụng hai tính năng, tức là chiều dài Sepal và chiều dài cánh hoa. Chúng tôi lấy hai đặc điểm này và vẽ biểu đồ để hình dung. Từ biểu đồ trên, bạn có thể suy ra rằng một đường thẳng có thể được sử dụng để phân tách các điểm dữ liệu.

```from sklearn.utils import shuffle

from sklearn.cross_validation import train_test_split

import numpy as np

## Drop rest of the features and extract the target values

df = df.drop(['SepalWidthCm','PetalWidthCm'],axis=1)

Y = []

target = df['Species']

for val in target:

if(val == 'Iris-setosa'):

Y.append(-1)

else:

Y.append(1)

df = df.drop(['Species'],axis=1)

X = df.values.tolist()

## Shuffle and split the data into training and test set

X, Y = shuffle(X,Y)

x_train = []

y_train = []

x_test = []

y_test = []

x_train, x_test, y_train, y_test = train_test_split(X, Y, train_size=0.9)

x_train = np.array(x_train)

y_train = np.array(y_train)

x_test = np.array(x_test)

y_test = np.array(y_test)

y_train = y_train.reshape(90,1)

y_test = y_test.reshape(10,1)
```

Chúng tôi trích xuất các tính năng cần thiết và chia nó thành dữ liệu đào tạo và thử nghiệm. 90% dữ liệu được sử dụng để đào tạo và 10% còn lại được sử dụng để kiểm tra. Bây giờ chúng ta hãy xây dựng mô hình SVM của chúng tôi bằng cách sử dụng thư viện numpy.

```## Support Vector Machine

import numpy as np

train_f1 = x_train[:,0]

train_f2 = x_train[:,1]

train_f1 = train_f1.reshape(90,1)

train_f2 = train_f2.reshape(90,1)

w1 = np.zeros((90,1))

w2 = np.zeros((90,1))

epochs = 1

alpha = 0.0001

while(epochs < 10000):

y = w1 * train_f1 + w2 * train_f2

prod = y * y_train

print(epochs)

count = 0

for val in prod:

if(val >= 1):

cost = 0

w1 = w1 - alpha * (2 * 1/epochs * w1)

w2 = w2 - alpha * (2 * 1/epochs * w2)

else:

cost = 1 - val

w1 = w1 + alpha * (train_f1[count] * y_train[count] - 2 * 1/epochs * w1)

w2 = w2 + alpha * (train_f2[count] * y_train[count] - 2 * 1/epochs * w2)

count += 1

epochs += 1
```

α (0,0001) là tốc độ học và tham số chính quy λ được đặt thành 1 / epochs. Do đó, giá trị điều hòa làm giảm số lượng epochs tăng lên.

```from sklearn.metrics import accuracy_score

## Clip the weights

index = list(range(10,90))

w1 = np.delete(w1,index)

w2 = np.delete(w2,index)

w1 = w1.reshape(10,1)

w2 = w2.reshape(10,1)

## Extract the test data features

test_f1 = x_test[:,0]

test_f2 = x_test[:,1]

test_f1 = test_f1.reshape(10,1)

test_f2 = test_f2.reshape(10,1)

## Predict

y_pred = w1 * test_f1 + w2 * test_f2

predictions = []

for val in y_pred:

if(val > 1):

predictions.append(1)

else:

predictions.append(-1)

print(accuracy_score(y_test,predictions))
```

Bây giờ chúng ta cắt các trọng số vì dữ liệu thử nghiệm chỉ chứa 10 điểm dữ liệu. Chúng tôi trích xuất các tính năng từ dữ liệu thử nghiệm và dự đoán các giá trị. Chúng tôi thu thập các dự đoán và so sánh nó với các giá trị thực tế và in độ chính xác của mô hình của chúng tôi.

Có một cách đơn giản khác để triển khai thuật toán SVM. Chúng ta có thể sử dụng thư viện Scikit learning và chỉ cần gọi các hàm liên quan để thực hiện mô hình SVM. Số lượng dòng mã giảm đáng kể quá ít dòng.
```from sklearn.svm import SVC

from sklearn.metrics import accuracy_score

clf = SVC(kernel='linear')

clf.fit(x_train,y_train)

y_pred = clf.predict(x_test)

print(accuracy_score(y_test,y_pred))
```



