from fetch_stock_price import *
from connect_mongodb import *
import pytz,datetime,time

start_time = time.time()

# Url of each stock exchange
stock_exchanges = {
    "hose": "https://banggia.cafef.vn/stockhandler.ashx?center=1",
    "hnx": "https://banggia.cafef.vn/stockhandler.ashx?center=2",
    "upcom": "https://banggia.cafef.vn/stockhandler.ashx?center=9",
}


TIME_STAMP = datetime.datetime.now(
    pytz.timezone("Asia/Ho_Chi_Minh")
).strftime("%H:%M %d/%m/%Y")


def main():
    """
    Execute fetch program

    :param namefile: str
    :param se_url: str
    :return: None
    """
    for name, se_url in stock_exchanges.items():
        list_stocks = read_stocks_text_file(name)
        se = fetch_function(name, se_url, list_stocks, TIME_STAMP)
        import_to_mongodb(se, 'Stocks')


if __name__ == "__main__":
    main()
    print("----------%s seconds------------" % (time.time() - start_time))

