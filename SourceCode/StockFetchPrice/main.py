from fetch_stock_price import *
from connect_mongodb import *

start_time = time.time()

import pytz, datetime, time, multiprocessing


# Url of each stock exchange
stock_exchanges = {
    "hose": "https://banggia.cafef.vn/stockhandler.ashx?center=1",
    "hnx": "https://banggia.cafef.vn/stockhandler.ashx?center=2",
    "upcom": "https://banggia.cafef.vn/stockhandler.ashx?center=9",
}


TIME_STAMP = datetime.datetime.now(
    pytz.timezone("Asia/Ho_Chi_Minh")
).strftime("%H:%M %d/%m/%Y")


def start_fetch(name):
    list_stocks = np.array([])
    list_stocks = np.concatenate(
        (list_stocks, read_stocks_text_file(name)), axis=0
    )
    result = fetch_function(name, stock_exchanges[name], list_stocks, TIME_STAMP)
    import_to_mongodb(result)


if __name__ == "__main__":
    main()
    print("----------%s seconds------------" % (time.time() - start_time))

    start = time.perf_counter()

    p1 = multiprocessing.Process(target=start_fetch, args=["hose"])
    p2 = multiprocessing.Process(target=start_fetch, args=["hnx"])
    p3 = multiprocessing.Process(target=start_fetch, args=["upcom"])

    p1.start()
    p2.start()
    p3.start()

    p1.join()
    p2.join()
    p3.join()

    finish = time.perf_counter()
    print(f"Finished in {round(finish-start, 5)} second(s)")
