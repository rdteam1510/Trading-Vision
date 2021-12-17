from connect_mongodb import *

# stock_exchanges = ["HOSE"]
se_lists = ["hose", "hnx", "upcom"]

# Main function
def main():
    main_df = pd.DataFrame(columns=headers)
    for se in se_lists:
        main_df = my_pandas_dataFrame(se)
        print('Complete all se')
    import_to_mongodb(main_df, "CompaniesInfo")


if __name__ == "__main__":
    main()
