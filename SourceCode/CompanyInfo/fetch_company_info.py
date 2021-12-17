from bs4 import BeautifulSoup
import requests
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# Function: Set link for beautifulSoup
def set_bs4(ticker, se):
    options = Options()
    options.headless = True
    driver = webdriver.Chrome(
        service=Service("chromedriver.exe"), options=options
    )
    url1 = f"https://www.tradingview.com/symbols/{se}-{ticker}/"
    url2 = f"https://www.stockbiz.vn/Stocks/{ticker}/Snapshot.aspx"
    driver.get(url1)
    result = requests.get(url2)
    WebDriverWait(driver, 20).until(
        EC.presence_of_element_located(
            (By.CLASS_NAME, "tv-widget-fundamentals__value")
        )
    )
    doc1 = BeautifulSoup(driver.page_source, features="lxml")
    doc2 = BeautifulSoup(result.text, "html.parser")
    return [doc1, doc2]


# Function: Get company info
def fetch_company_info(ticker, se):
    doc1, doc2 = set_bs4(ticker, se)

    # PROFILE
    company_name = doc1.find(
        "h1", {"class": "tv-symbol-header__first-line"}
    ).text.strip()
    category = doc1.find_all("a", {"class": "tv-breadcrumbs__item"})[
        -1
    ].text.strip()

    info = doc1.find(
        "div", {"class": "tv-widget-description__text"}
    ).text.strip()
    print(doc2.find_all("td", {"class": "right"})[2].text)
    link = doc2.find_all("td", {"class": "right"})[2].a.text.strip()

    # STATISTICS
    # Trailing Twelve Months (TTM): pe, roa, roe
    # Most Recent Quarter (MRQ): net_debt, total_debt, total_assets
    # Fiscal Year (FY): pb, ps, eps, eps_diluted, net_income, gross_profit, total_revenue
    market_cap = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[0].text.strip()
    tshares_out = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[3].text.strip()
    pe = doc1.find_all("span", {"class": "tv-widget-fundamentals__value"})[
        6
    ].text.strip()
    pb = doc1.find_all("span", {"class": "tv-widget-fundamentals__value"})[
        8
    ].text.strip()
    ps = doc1.find_all("span", {"class": "tv-widget-fundamentals__value"})[
        9
    ].text.strip()
    net_debt = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[17].text.strip()
    total_debt = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[18].text.strip()
    total_assets = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[19].text.strip()
    roa = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[23].text.strip()
    roe = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[24].text.strip()
    eps = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[31].text.strip()
    eps_diluted = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[33].text.strip()
    net_income = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[34].text.strip()
    gross_profit = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[37].text.strip()
    total_revenue = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[39].text.strip()

    return [
        ticker,
        company_name,
        category,
        info,
        link,
        market_cap,
        tshares_out,
        pe,
        pb,
        ps,
        net_debt,
        total_debt,
        total_assets,
        roa,
        roe,
        eps,
        eps_diluted,
        net_income,
        gross_profit,
        total_revenue,
    ]


# Function: Get companies from UPCOM
def fetch_company_info_upcom(ticker, se):
    # Function: Get company info
    doc1, doc2 = set_bs4(ticker, se)

    # PROFILE
    company_name = doc1.find(
        "h1", {"class": "tv-symbol-header__first-line"}
    ).text.strip()
    category = doc1.find_all("a", {"class": "tv-breadcrumbs__item"})[
        -1
    ].text.strip()

    info = doc1.find("div", {"class": "tv-widget-description__text"})
    if info is not None:
        info = info.text.strip()
    else:
        info = "—"

    link = doc2.find_all("td", {"class": "right"})[2].a.text.strip()

    # STATISTICS
    # Trailing Twelve Months (TTM): pe, roa, roe
    # Most Recent Quarter (MRQ): net_debt, total_debt, total_assets
    # Fiscal Year (FY): pb, ps, eps, eps_diluted, net_income, gross_profit, total_revenue
    market_cap = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[0].text.strip()
    tshares_out = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[3].text.strip()
    pe = doc1.find_all("span", {"class": "tv-widget-fundamentals__value"})[
        6
    ].text.strip()
    pb = doc1.find_all("span", {"class": "tv-widget-fundamentals__value"})[
        8
    ].text.strip()
    ps = doc1.find_all("span", {"class": "tv-widget-fundamentals__value"})[
        9
    ].text.strip()
    net_debt = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[17].text.strip()
    total_debt = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[18].text.strip()
    total_assets = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[19].text.strip()
    roa = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[23].text.strip()
    roe = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[24].text.strip()
    eps = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[31].text.strip()
    eps_diluted = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[33].text.strip()
    net_income = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[34].text.strip()
    gross_profit = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[37].text.strip()
    total_revenue = doc1.find_all(
        "span", {"class": "tv-widget-fundamentals__value"}
    )[39].text.strip()

    return [
        ticker,
        company_name,
        category,
        info,
        link,
        market_cap,
        tshares_out,
        pe,
        pb,
        ps,
        net_debt,
        total_debt,
        total_assets,
        roa,
        roe,
        eps,
        eps_diluted,
        net_income,
        gross_profit,
        total_revenue,
    ]
