from bs4 import BeautifulSoup
import requests

se_lists = ["hose", "hnx", "upcom"]

url1 = "https://vcbs.com.vn/en/Research/Index/0?stocksymbol=APH"
url2 = "https://vcbs.com.vn/en/Research/Company?stocksymbol=APH"

result1 = requests.get(url1)
result2 = requests.get(url2)
doc1 = BeautifulSoup(result1.text, "html.parser")
doc2 = BeautifulSoup(result2.text, "html.parser")

basic_eps = doc1.find_all("td")[7].text.strip()
diluted_eps = doc1.find_all("td")[9].text.strip()
pe = doc1.find_all("td")[11].text.strip()
book_value = doc1.find_all("td")[13].text.strip()
listed_shares = doc1.find_all("td")[15].text.strip()
shares_outstanding = doc1.find_all("td")[17].text.strip()
market_capital = doc1.find_all("td")[19].text.strip()
latest_dividend = doc1.find_all("td")[21].text.strip()
# net_profit = doc1.find_all("td")[227].text.strip()
# total_assets = doc1.find_all("td")[229].text.strip()
# roa = doc1.find_all("td")[235].text.strip()
# roe = doc1.find_all("td")[237].text.strip()

name = doc2.find_all("td")[1].text.strip()
addr = doc2.find_all("td")[7].text.strip()
website = doc2.find_all("td")[13].text.strip()
industry = doc2.find_all("td")[15].text.strip()
# info = doc2.find_all("div", {"class": "profile_content_detail_wrap"})[3].p.text.strip()
print(doc1.find('td', text="ROA").find_next('td').text.strip())