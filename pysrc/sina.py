import requests
import pandas as pd
import re

def getFromSina(symbol='sh600000',scale=5,datalen=100):
    klinePattern = re.compile(r'\{day:"([\d-]+)",open:"([\d.]+)",high:"([\d.]+)",low:"([\d.]+)",close:"([\d.]+)",volume:"(\d+)"\}')
    params={'symbol':symbol,'scale':scale,'datalen':datalen}
    url='http://money.finance.sina.com.cn/quotes_service/api/json_v2.php/CN_MarketData.getKLineData'
    r=requests.get(url=url,params=params)
    list=[]
    match=klinePattern.search(r.content)
    while match:
        trans = Trans(match.group(1), match.group(2), match.group(3), match.group(4))
        if trans.price > 0 and trans.volume > 0:
            transList.insert(0, trans)
    match = transPattern.search(content, match.end() + 1)
    print r.content
    df=pd.DataFrame()
    return df

print  getFromSina()