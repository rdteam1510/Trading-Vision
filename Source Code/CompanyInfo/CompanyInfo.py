from bs4 import BeautifulSoup
import requests
import pandas as pd
labels = ['ACB','HHV',"PTL"]

def fetch_company_info(label):
    html_text = requests.get(f'https://www.stockbiz.vn/Stocks/{label}/Snapshot.aspx').text
    soup = BeautifulSoup(html_text,'lxml')

    info = soup.find('div', class_ ="text_content").get_text().replace("    ",'') #find laasay kq đầu tiền
    #print(info)

    name = soup.find('div', class_='stockName').get_text().replace("    ",'')
    #print(name.split("\n")[0])

    main_info = soup.find('div', class_='TableContent')
    #print(main_info)
    web = main_info.find('a').get_text().replace("    ",'')
    #print(web)

    field = soup.find('div', class_='industry')
    f1 = field.find('a',id='ctl00_webPartManager_wp2134192251_wp503793944_lnkSector').get_text()
    f2 = field.find('a',id='ctl00_webPartManager_wp2134192251_wp503793944_lnkIndustry').get_text()
    #print(f1,f2)

    table = soup.find('div', id="content_com_left") 
    #print(table)
    addr = soup.find('td', style="font-size: 11px; line-height: 1.5", valign="top").get_text().replace("   ","")
    addr = addr.split("\n")
    #print(addr[4])

    # print(f'''
    #     Label : {label}
    #     Name : {name.split("")[0]}
    #     Info : {info}
    #     Web : {web}
    #     Field : {f1}:{f2}
    #     Address : {addr[4]}
    #       ''')
    companyInfo_dict = {
        "Label" : label,
        "Name" : name.split("(")[0].strip('\r\n'),
        "Info" : info.strip('\r\n'),
        "Web link" : web,
        "Address" : addr[4],
        "Field" : f2              
    }
    # companyInfo = pd.DataFrame.from_dict(companyInfo_dict,orient='columns')
    # return companyInfo
def my_to_csv(se, name):
    se.to_csv(
        ".\Data\{sename}_companyInfo.csv".format(sename=name),
        mode="a",
        index=False,
        header=False,
    )
#print(fetch_company_info("ACB"))



html_text = requests.get(f'https://www.stockbiz.vn/Stocks/{label}/Snapshot.aspx').text
soup = BeautifulSoup(html_text,'html.parser')
print(soup)