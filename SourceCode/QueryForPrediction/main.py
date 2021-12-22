from query_for_prediction import *
from connect_mongodb import *


if __name__ == "__main__":
    data = Processed_Data()
    import_to_mongodb(data)
