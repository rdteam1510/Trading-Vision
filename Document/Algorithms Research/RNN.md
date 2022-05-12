References: [Stock prediction using recurrent neural networks](https://towardsdatascience.com/stock-prediction-using-recurrent-neural-networks-c03637437578) 

# The challenge
Thách thức tổng thể là xác định chênh lệch gradient giữa giá Đóng cửa và giá tiếp theo. Không phải là giá cổ phiếu thực tế. Tại sao? Rất dễ tự đánh lừa bản thân khi nghĩ rằng bạn có một mô hình khả thi khi bạn đang cố gắng dự đoán điều gì đó có thể dao động nhẹ (| <0,01% |) và / hoặc phần lớn (|> 5% |). Biểu đồ dưới đây đưa ra một ví dụ về điều này. Một mô hình cơ bản (không có gì đặc biệt) đã được đào tạo để dự đoán giá (chuẩn hóa) của Goldman Sachs: 
![[Pasted image 20211123101549.png]]

Giá thực tế của cổ phiếu nằm trên trục y, trong khi giá dự đoán nằm trên trục x. Rõ ràng có một xu hướng tuyến tính tốt ở đó. Và có thể một chiến lược giao dịch có thể được phát triển từ điều này. Nhưng điều gì sẽ xảy ra nếu chúng ta vẽ đồ thị gradient giữa hai điểm liên tiếp? 
![[Pasted image 20211123101722.png]]

Để dự đoán liệu giá sẽ tăng hay giảm cho hình nến tiếp theo (định nghĩa của gradient ở đây), mô hình của chúng tôi về cơ bản không tốt hơn là đoán. Đó là một vấn đề cơ bản khá lớn. Độ chính xác ở đây (51,5%) được tính bằng cách cộng các giá trị trong các góc phần tư chính xác (trên cùng bên phải và dưới cùng bên trái) và chia cho tất cả các điểm.
Thay vì cho bạn biết tại sao đây lại là một vấn đề khó khăn (có thể bạn đã biết), tôi sẽ đề cập đến hai cuộc đấu tranh cá nhân mà tôi phải đối mặt ở đây.
1. Dữ liệu. **Chất lượng của dữ liệu quyết định kết quả của mô hình của bạn**. Rõ ràng. Làm sạch và xử lý dữ liệu của bạn, hiểu nó, chơi với nó, vẽ nó, nâng niu nó. Hãy chắc chắn rằng bạn khám phá mọi khía cạnh của nó. Ví dụ; Tôi sử dụng những câu chuyện thời sự. Chúng được xuất bản ở các múi giờ khác nhau. Dữ liệu giá cổ phiếu đến từ một múi giờ khác. Đảm bảo rằng bạn đang đồng bộ hóa một cách chính xác và không tự lừa dối mình bằng cách sử dụng thông tin trong tương lai. Đó chỉ là một ví dụ điển hình. Một số khác: Đối với khi yêu cầu giá nến hàng giờ từ nhà môi giới của tôi, thanh đầu tiên là cửa sổ 30 phút. Nếu không có các bước kiểm tra để nắm bắt điều này, bạn sẽ phải vò đầu bứt tai một lúc.
2. Xây dựng một công cụ ước tính ngây thơ. Do đó, tôi có nghĩa là dự đoán của mô hình của bạn phần lớn dựa trên điểm trước đó. Đây dường như là vấn đề phổ biến nhất trong dự đoán chứng khoán. Xây dựng một mô hình giảm thiểu điều này và vẫn chính xác về cơ bản là chìa khóa, và do đó, là một phần khó khăn.
![[Pasted image 20211123102350.png]]
A naive estimator. The red line (the prediction) follows the blue line (the actual price) with a lag of 1 data point.

> Chúng ta có thể đào tạo một mô hình dự đoán chính xác sự thay đổi độ dốc tiếp theo, đồng thời giảm thiểu hiệu ứng ước lượng ngây thơ không? 
# Data
## Stock Price Information
Hầu hết thời gian dành cho dự án này là đảm bảo dữ liệu ở đúng định dạng, hoặc căn chỉnh đúng cách, hoặc không quá thưa thớt, v.v. .

Dữ liệu của tôi đến từ Interactive Brokers (IB). Bạn có thể thấy chức năng của tôi sử dụng (API)[https://interactivebrokers.github.io/tws-api/introduction.html] của họ để tải xuống giá cổ phiếu trong ý chính này. 
1) Kết nối với IB
2) Tạo một "hợp đồng"
3) Yêu cầu các thanh lịch sử bằng cách sử dụng hợp đồng đó.

Tất cả điều này được đưa vào một vòng lặp không đồng bộ đã vá (do đó là gói nest_asyncio), do mã của tôi đã nằm trên một chuỗi. Cách sử dụng trong ý chính ở trên đưa ra một ví dụ về cách một người sẽ gọi hàm này.
Bây giờ tôi có khung dữ liệu pandas  gồm các chân nến 1 giờ. 
![[Pasted image 20211123103533.png]]

Tôi sử dụng thư viện Plotly khá tuyệt vời. Bằng cách phóng to một phần, mục tiêu có thể được làm nổi bật hơn.
Tôi sẽ thử dự đoán độ dốc từ giá Đóng mới nhất mà tôi có, đến giá Đóng sắp tới. Điều này có thể được sử dụng để xây dựng chiến lược giao dịch. Ở giai đoạn sau, kích thước của gradient cũng có thể được tính đến.

## News
Giả thuyết cho rằng tin tức có tác động rất lớn đến cách giá cổ phiếu diễn biến. Có một số nguồn tin tức trên mạng, newsapi.org cho một, IB cũng có một số tùy chọn, Thomson Reuters, v.v.

Đối với mỗi cổ phiếu, tôi chọn các từ khóa nhất định và truy xuất các bài báo liên quan. Một siêu tham số là "độ trễ". Độ trễ bằng 0 có nghĩa là nếu tôi dự đoán Giá đóng cửa lúc 2 giờ chiều, thì chỉ những tin bài trước 2 giờ chiều cùng ngày mới được sử dụng. Độ trễ 1 có nghĩa là bao gồm tin tức trong một ngày trở lại, v.v. Câu hỏi đặt ra ở đây là: mất bao lâu để tin tức lan truyền trong xã hội và các thuật toán giao dịch, và ảnh hưởng của nó đối với chứng khoán trong bao lâu?
Dưới đây hiển thị số lượng câu chuyện của Goldman Sachs trong một khoảng thời gian nhất định và độ trễ là 2 ngày. Tôi tin rằng mức tăng đột biến âm trong khoảng thời gian từ ngày 15 đến ngày 18 tháng 4 có liên quan đến việc ngân hàng báo cáo kết quả kinh doanh quý đầu tiên hỗn hợp.
![[Pasted image 20211123103944.png]]
The number of positive and negative news articles with lag=2 for a given date range

# Building datasets
## Variables and features
Một vấn đề với việc dự đoán giá cổ phiếu là thực sự chỉ có một lượng dữ liệu hữu hạn.  Tôi có thể đào tạo trên nhiều hoặc một vài cổ phiếu được nối với nhau, với những cổ phiếu khác được sử dụng làm tính năng. Bằng cách nối các cổ phiếu, tôi tăng số lượng dữ liệu, cũng như có khả năng tìm hiểu những thông tin chi tiết mới. Mã giả cho trình tạo tập dữ liệu của tôi trông giống như sau:
```
# Specify stocks to concatenate and specify those to use as features.  
Training_assets=[...] # i.e. currencies, or other stocks  
Feature_assets[...] # i.e. related stocks  
For stock in Training_assets:  
Download/update stock from IB  
Merge in News sentiments  
Add extra variables like MACD, Boilinger Bands, etc.  
Download Feature_assets and append to stock  
Normalize  
Concatenate with the previous training stock
``` 
 ## Normalization
 Trong quá trình đào tạo, tôi chuẩn hóa từng tính năng và lưu các tham số vào một tệp vô hướng. Sau đó, khi suy luận, tôi đọc tệp và áp dụng các tham số cho biến. Điều này đẩy nhanh quá trình suy luận khi tôi có thể yêu cầu điểm mới nhất từ nhà môi giới của mình. Một tham số thú vị là ```Norm_window_size```. Điều này chỉ định bao nhiêu điểm trong đối tượng địa lý sẽ được chuẩn hóa cùng nhau. Một cửa sổ quá lớn có nghĩa là độ phân giải của bạn không đủ chi tiết. Nhiều yếu tố bên ngoài chưa được tính đến sẽ đóng một vai trò lớn hơn. Một cửa sổ quá nhỏ về cơ bản sẽ giống như tiếng ồn.
 ## Correlations
 Mối tương quan giữa mỗi biến được trình bày dưới đây. Hãy nhớ rằng, theo nghĩa rộng nhất, **hai biến có tương quan cao có nghĩa là nếu một biến tăng thì biến kia cũng vậy. Đối với phản tương quan, nếu một biến giảm, biến kia sẽ tăng lên**.
Tương quan dương, cao hơn là màu tối hơn, nhạt hơn cho tương quan âm / thấp hơn. Hiện tại, tôi sử dụng các tính năng Mở, Cao, Thấp. Chúng có tương quan cực kỳ cao với Giá đóng cửa, nhưng tôi có tất cả thông tin đó tại thời điểm suy luận, vậy này, tại sao không. Đào tạo trong tương lai có thể thấy tôi loại bỏ những thứ đó để xem điều gì sẽ xảy ra. Nói chung, sẽ không tốt nếu có các biến "lặp lại".
Các tính năng khác có vẻ thừa là các chỉ báo được xây dựng với Giá đóng cửa. Nhưng họ cung cấp cho tôi một cách dễ dàng để thay đổi độ dài chuỗi chỉ cho những biến đó, vì vậy tôi đã để chúng ở lại ngay bây giờ.

Nhưng có những nguồn “bên ngoài” nào (tức là không bắt nguồn từ (các) cổ phiếu mà chúng tôi đang cố gắng suy luận)? Đây là những biến quan trọng nhất.
Mối tương quan cao giữa các đặc điểm như tiền tệ, chỉ số và mối tương quan chống lại VIX là rất hứa hẹn.
Một số loại tiền tệ có thể bị loại bỏ để giảm quy mô mạng tổng thể (tức là USD và Rand Nam Phi có vẻ như không ảnh hưởng đến nhau, nhưng ai biết được) và các khóa đào tạo thêm về các biến khác nhau có thể loại bỏ một số trong số chúng.

Điều quan trọng cần nhớ là “*… mối tương quan không giống như một dự đoán giao dịch*”. như được chỉ ra bởi **Daniel Shapiro** trong *Khoa học dữ liệu cho giao dịch thuật toán*, tức là mối tương quan không phải là quan hệ nhân quả. Và do đó, một kỹ thuật lọc trong danh sách việc cần làm là xem xét các mối tương quan phát triển như thế nào theo thời gian đối với các biến riêng lẻ so với Giá đóng cửa của một cổ phiếu nhất định. Điều này sẽ cho phép chúng tôi loại bỏ các biến và giảm số lượng thứ nguyên.

## Sliding windows algorithm
At this point `pandas.head()` gives:
![[Pasted image 20211123104628.png]]
trong đó hiển thị 5 bước thời gian, với 7 tính năng chuẩn hóa (ngắn gọn).

Sau đó, chúng tôi tạo tập dữ liệu đào tạo, xác nhận và thử nghiệm.
Vì đây là bài toán dự đoán trình tự, chúng tôi sử dụng thuật toán cửa sổ trượt (*sliding window algorithm*). Tiền đề được thể hiện trong hình bên dưới. X số điểm (4 trong hình ảnh) được sử dụng, với X + 1 được lấy làm nhãn và tạo thành một mảng mới. Sau đó, cửa sổ được di chuyển về phía trước 1 điểm và phép tính lặp lại. Bằng cách này, bạn có một mảng lớn (X, là các đầu vào của bạn) cũng như các nhãn của bạn, Y.
![[Pasted image 20211123104814.png]]
Từ đây, và sau khi tách thành các kích thước đào tạo, xác nhận và kiểm tra (80%, 15%, 5%), dữ liệu có thể được đưa vào mạng nơ-ron.
## Architectures
Tôi đã thử với nhiều loại kiến trúc khác nhau (bao gồm cả GANs), cho đến khi cuối cùng giải quyết được trên một mạng nơ-ron lặp lại đơn giản (RNN). Về lý thuyết, một LSTM (một loại RNN) nên tốt hơn.
Mô hình của tôi trong Tensorflow (1.12) trông giống như thế này (không gian tên và biểu đồ, v.v. bị xóa):
```
def gru_cell(state_size):  
  cell = tf.contrib.rnn.GRUCell(state_size)  
  return cell# Inputs  
inputs = tf.placeholder(tf.float32, [None, seq_len, len(variables)])  
labels = tf.placeholder(tf.float32, [None ,n_outputs])# Placeholder for dropout to switch on and off for training/inference  
keep_prob = tf.placeholder(tf.float32)# Run the data through the RNN layers  
batch_size = tf.shape(inputs)[0]initial_state = tf.zeros([batch_size, num_layers * size])cell = tf.contrib.rnn.MultiRNNCell([gru_cell(size) for _ in range(num_layers)], state_is_tuple=False)outputs, final_state = tf.nn.dynamic_rnn(cell, inputs, initial_state=initial_state) # Then feed into a dropout layer  
dense_layer = tf.contrib.layers.dropout(outputs[:,-1], keep_prob=keep_prob)# ... and a dense layer  
dense_layer = tf.layers.dense(dense_layer, dense_units, activation=tf.nn.selu)# ... followed by a single node dense layer  
final_predictions = tf.layers.dense(dense_layer,n_outputs,activation=tf.sigmoid)
```

Biểu đồ trông như thế này:
![[Pasted image 20211123105134.png]]
Tensorboard graph visualization (The multi_rnn namespace is connected to accuracy by a variable placeholder, batch size).

Đó là một mạng khá đơn giản, trong đó RNN nhiều lớp (với các lớp GRU) được đưa vào một lớp dày đặc (bao gồm cả lớp bỏ mạng). Tất cả số lớp, số lần kích hoạt và tỷ lệ bỏ học đều được tối ưu hóa trong quá trình đào tạo.
Nút "Accuracy" là một tập hợp dài các phép toán TF phức tạp để chuyển đổi một dự đoán từ mạng dày đặc thành một chuyển động gradient nhị phân. Như một thử nghiệm, độ chính xác này thực sự hiện đang được sử dụng trong hàm chi phí của tôi như:
```
cost = (1-Accuracy) + tf.losses.mean_squared_error(labels, final_predictions)
```

trong đó nhãn là giá chuẩn hóa và final_predictions là các dự đoán giá thực tế đã chuẩn hóa. Tôi sử dụng AdamOptimiser với tốc độ học hàm theo chu kỳ. Đây có phải là cách tối ưu / tốt nhất để làm điều đó không?
# Training
Tôi cũng đã sử dụng Bayesian Optimization (BO) trong giai đoạn đào tạo. Tôi nghĩ đó là một thư viện tuyệt vời, NHƯNG, tôi có bị thuyết phục rằng nó hoạt động tốt cho loại vấn đề này và thực sự tiết kiệm một lượng lớn thời gian không? Không hẳn vậy. Tôi muốn tạo một số biểu đồ để xem quá trình đào tạo diễn ra như thế nào và (các) chức năng trông như thế nào.Tuy nhiên, có thể nó cung cấp một trình tạo số ngẫu nhiên hơi thiên lệch. Như đã nói, các tham số được sử dụng cho kết quả trong bài viết này là:
![[Pasted image 20211123105534.png]]

Đường cong tổn thất cho tập dữ liệu tàu (màu cam) và xác nhận (màu xanh lam) được hiển thị bên dưới. Các đường này rất nhanh và có thể sử dụng kích thước lô lớn hơn có thể giúp giải quyết việc đó. Cũng có một số khác biệt giữa hai tập dữ liệu. Điều này không có gì quá ngạc nhiên. Hãy nhớ rằng, tôi đã kết hợp (và xáo trộn) nhiều cổ phiếu với Goldman Sachs và vì vậy những gì chúng tôi đang đào tạo thực sự là mô hình cho một “lĩnh vực” nhất định, hoặc bất cứ điều gì bạn muốn gọi nó. Về lý thuyết, nó dễ tổng quát hơn và khó đào tạo hơn (đánh đổi để có được nhiều dữ liệu hơn). Vì vậy, nó có thể gợi ý về một số đào tạo quá mức; một cái gì đó cần được kiểm tra thêm. Tuy nhiên, người ta có thể thấy xu hướng mất xác thực giảm dần theo thời gian (cho đến một thời điểm nhất định)
![[Pasted image 20211123105806.png]]
Loss function for 4k iterations. Only the best model is saved.

# Results
Làm thế nào để mô hình mới nhất này hoạt động? Dưới đây là gradient thực tế so với gradient dự đoán. Độ chính xác 65% (với cùng định nghĩa được sử dụng trước đây) không phải là quá tệ.
![[Pasted image 20211123105956.png]]
Hình dưới đây cho thấy một confusion matrix giữa gradient thực tế và gradient dự đoán. Nó cho thấy rằng 59% thời gian chúng tôi dự đoán chính xác một gradient âm, trong khi 71% thời gian chúng tôi dự đoán chính xác một gradient dương. Sự mất cân bằng này có thể xuất phát từ bản chất của tập dữ liệu và mô hình, tức là có thể ba gradient dương nhỏ tiến hành một gradient âm duy nhất. Mô hình học được điều này, và do đó độ chính xác của trích dẫn có thể hơi sai lệch. Điều này sẽ trở nên rất quan trọng khi thực sự phát triển các chiến lược giao dịch.
![[Pasted image 20211123110054.png]]

Sơ đồ trang bìa được hiển thị một lần nữa, chỉ tập trung vào bộ dữ liệu kiểm tra và xác thực. Nhưng có những lúc các xu hướng thay đổi độ dốc thực sự được theo sau. Đối với tôi, bất cứ khi nào một đồ thị như thế này được hiển thị với sự chồng chéo dường như hoàn hảo, một hồi chuông báo động sẽ vang lên trong đầu người đọc.
Hãy nhớ rằng, tập dữ liệu xác thực chỉ được sử dụng trong các bước đào tạo để xác định thời điểm dừng đào tạo (tức là không cải thiện sau x epochs, dừng lại). Bộ dữ liệu thử nghiệm không được sử dụng ở bất kỳ đâu. Điều đó có nghĩa là biểu đồ này hiển thị khoảng 600 giờ dữ liệu "nửa không thấy" và chỉ dưới 300 giờ dữ liệu hoàn toàn không nhìn thấy.
![[Pasted image 20211123110154.png]]

Kết quả của chúng tôi ổn định như thế nào?
Trong 114 buổi đào tạo, sự phân bố độ chính xác để dự đoán gradient được hiển thị bên dưới (biểu đồ màu xanh lá cây). Độ chính xác của mỗi buổi đào tạo được biểu thị dựa trên số lần chạy bằng màu cam. Điều này xác nhận sự nghi ngờ của tôi rằng BO không hoạt động quá tốt ở đây, nhưng có lẽ nó chỉ cần nhiều lần lặp lại và / hoặc các thông số được tinh chỉnh. 
![[Pasted image 20211123110238.png]]

(Kết quả tốt hơn có sự phân bố đồng đều hơn cho lên / lên so với giảm / xuống trong ma trận nhầm lẫn, điều này thật tốt).
Điểm khác biệt của biểu đồ màu xanh lá cây là chúng ta đang học được điều gì đó. Ngoài ra, thật tốt khi thấy rằng có một số kết quả không tốt hơn phỏng đoán, có nghĩa là chúng tôi không phải lúc nào cũng học được điều gì đó khi chơi với các thông số.
# Final Remarks
Trong bài viết này, tôi đã nêu bật các phương tiện xây dựng RNN có thể dự đoán chênh lệch độ dốc chính xác giữa 2 Giá đóng cửa khoảng 65% thời gian. Tôi tin rằng với việc chơi nhiều hơn và một số điều chỉnh, con số này có thể được cải thiện. Ngoài ra, nhiều cuộc kiểm tra và nghiên cứu khác có thể được thực hiện.
Nó sẽ thực sự kiếm tiền khi backtesting? Còn khi giao dịch trực tiếp thì sao?
Có một số lượng lớn để xem xét. Từ việc sử dụng thư viện backtrader khá thú vị, đến việc cắm nó vào IB API, đây sẽ là những chủ đề cho bài viết tiếp theo.
