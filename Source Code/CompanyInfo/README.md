# Description:

- This is a program to fetch companies' information and some their financials from two sources:
  - [TradingView](https://www.tradingview.com/)
  - [Stockbiz](https://www.stockbiz.vn/)
- These are companies from three Vietnamese stock exchanges HOSE, HNX and UPCOM. This program will get data and put them to MongoDB. **However, data from companies on UPCOM is not fully updated on TradingView.** Therefore, these data are not shown on MongoDB.
- Folder "stocktickers" has 03 files containing 100 shares for each stock exchange. They were selected based on their volumns on 24/11/2021 - 26-11/2021

# How To Run:

1. `pip install -r requirements.txt`
2. `python3 main.py`

# ### Note:

- Download suitable "chromdriver.exe" for your Chrome browser from this link: [chromedriver](https://chromedriver.chromium.org/downloads)
- You can check your Chrome browser version by click on ![Thêm](https://lh3.googleusercontent.com/E2q6Vj9j60Dw0Z6NZFEx5vSB9yoZJp7C8suuvQXVA_2weMCXstGD7JEvNrzX3wuQrPtL=w36-h36 'Thêm') on the top right corner. Then, choose Help -> About Google Chrome ->
