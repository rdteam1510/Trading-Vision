from connect_mongodb import *

stock_exchanges = ["UPCOM"]

# Main function
def main():
    for stock_exchange in stock_exchanges:
        my_df = my_pandas_dataFrame(stock_exchange)
        import_to_mongodb(my_df, stock_exchange)

if __name__ == '__main__':
    main()
