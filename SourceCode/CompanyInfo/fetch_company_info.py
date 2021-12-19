from bs4 import BeautifulSoup
import requests

# Function: Set link for beautifulSoup
def set_bs4(ticker):
    url1 = f"https://vcbs.com.vn/en/Research/Index/0?stocksymbol={ticker}"
    url2 = f"https://vcbs.com.vn/en/Research/Company?stocksymbol={ticker}"

    result1 = requests.get(url1)
    result2 = requests.get(url2)

    doc1 = BeautifulSoup(result1.text, "html.parser")
    doc2 = BeautifulSoup(result2.text, "html.parser")
    return [doc1, doc2]


# Function: Get company info
def fetch_company_info(ticker, se):
    doc1, doc2 = set_bs4(ticker)

    # PROFILE
    name = doc2.find_all("td")[1].text.strip()
    addr = doc2.find_all("td")[7].text.strip()
    website = doc2.find_all("td")[13].text.strip()
    industry = doc2.find_all("td")[15].text.strip()
    try:
        info = doc2.find_all("div", {"class": "profile_content_detail_wrap"})[
            3
        ].p.text.strip()
    except:
        info = doc2.find_all("div", {"class": "profile_content_detail_wrap"})[3].text.strip()
    # FINANCIALS
    try:   
        basic_eps = doc1.find_all("td")[7].text.strip()
        diluted_eps = doc1.find_all("td")[9].text.strip()
        pe = doc1.find_all("td")[11].text.strip()
        book_value = doc1.find_all("td")[13].text.strip()
        listed_shares = doc1.find_all("td")[15].text.strip()
        shares_outstanding = doc1.find_all("td")[17].text.strip()
        market_capital = doc1.find_all("td")[19].text.strip()
        latest_dividend = doc1.find_all("td")[21].text.strip()
        net_profit = doc1.find('td', text="Net Profit").find_next('td').text.strip()
        total_assets = doc1.find('td', text="Total Assets").find_next('td').text.strip()
        roa = doc1.find('td', text="ROA").find_next('td').text.strip()
        roe = doc1.find('td', text="ROE").find_next('td').text.strip()
    except:
        basic_eps = diluted_eps = pe = book_value = listed_shares = shares_outstanding = market_capital = latest_dividend = net_profit = total_assets = roa = roe = ''
    return [
        se,
        ticker,
        name,
        addr,
        website,
        industry,
        info,
        basic_eps,
        diluted_eps,
        pe,
        book_value,
        listed_shares,
        shares_outstanding,
        market_capital,
        latest_dividend,
        net_profit,
        total_assets,
        roa,
        roe,
    ]
