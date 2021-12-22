from connect_mongodb import *

# stock_exchanges = ["HOSE"]
se_lists = ["hose", "hnx", "upcom"]

# Main function
def main():    
    for se in se_lists:
        my_pandas_dataFrame(se)
        print('Complete all se')



if __name__ == "__main__":
    main()
