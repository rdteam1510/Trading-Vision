from connect_mongodb import *

# stock_exchanges = ["HOSE"]

# Main function
def main():
    hose = my_pandas_dataFrame("hose")
    import_to_mongodb(hose, "HOSE")

    # hnx = my_pandas_dataFrame('hnx')
    # import_to_mongodb(hnx, 'HNX')

    # upcom = my_pandas_dataFrame('upcom')
    # import_to_mongodb(upcom, 'UPCOM')


if __name__ == "__main__":
    main()