import requests
from datetime import timedelta, datetime
import pandas as pd
import time

URL="http://121.41.106.89:8010/api/"
token="2ddaec3a541de9ce9430ad95119655bb"
header={"X-Auth-Code":token}

def buildfield(start,end):
    realstart=start-timedelta(days=1)
    realend=end+timedelta(days=1)
    
    dic={'end':realend.strftime('%Y-%m-%d'),'start':realstart.strftime('%Y-%m-%d'),'fields':'open high low close adj_price volume turnover pb'}
    return dic


def getSingleStock(id,start,end):
    url=URL+'stock/'+id+'/'
    s=requests.session()
    s.keep_alive=False
    response=requests.get(url=url,params=buildfield(start, end),headers=header)
#     try:
    ans=response.json()['data']['trading_info']
    df=pd.DataFrame(ans)
    df['date']=pd.DatetimeIndex(df['date'])    
    df.set_index('date', drop=True, inplace=True)
    return df
#     except :
#         time.sleep(0.05)
#         return getSingleStock(id, start, end)

def getStockList():
    szdic={'year':'2016','exchange':'sz'}
    shdic={'year':'2016','exchange':'sh'}
    url=URL+'stocks/'
    respsz=requests.get(url=url,params=szdic,headers=header)
    sz=respsz.json()['data']
    respsh=requests.get(url=url,params=shdic,headers=header)
    sh=respsh.json()['data']
    ans=[]
    for obj in sh:
        ans.append(obj['name'])
    for obj in sz:
        ans.append(obj['name'])
    return ans
    