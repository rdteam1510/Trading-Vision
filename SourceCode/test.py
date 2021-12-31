import requests,  re
from bs4 import BeautifulSoup


url2 = "https://vcbs.com.vn/en/Research/Company?stocksymbol=ACB"

result = requests.Session().get(url2)
doc2 = BeautifulSoup(result.text, "lxml")
print(doc2)