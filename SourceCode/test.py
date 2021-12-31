import requests,  re
from bs4 import BeautifulSoup


url2 = "https://vcbs.com.vn/en/Research/Company?stocksymbol=AAS"

result = requests.Session().get(url2)
doc2 = BeautifulSoup(result.text, "lxml")
test = doc2.find('h3', {'class': 'typo_title myriad_pro_condensed'}).text.split(' ')[-1].strip('()').lower()
print(test)