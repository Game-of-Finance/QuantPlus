# demo py
# 总体回测前要做的事情


# 选股函数
def getSelectConfig():
    # filter 筛选

    filter_c=[]
    
    #--------------------------cell--------------------------------
    name ="MACD"
    comparison=">"
    count=0
    cell1=[name,comparison,count]
        
    filter_c.append(cell1)
    
    #--------------------------cell--------------------------------
    name ="营业利润增长"
    comparison="<>"
    count=0
    cell2=[name,comparison,count]
    
    count_low=0.2
    cell2.append(count_low)
        
    count_upper=0.3
    cell2.append(count_upper)
    
    filter_c.append(cell2)
    
    #--------------------------cell--------------------------------
    name ="净利润增长"
    comparison="top"
    count=0
    cell3=[name,comparison,count]
    
    count_low=10.0
    cell3.append(count_low)
        
    count_upper=20.0
    cell3.append(count_upper)
    
    filter_c.append(cell3)
    


    # sort 排序
    sort_c=[]
    
    #---------------------------------------------

    name ="流通市值"
    order="ascd"
    weight=1
    sort1=[name,order,weight]
    sort_c.append(sort1)
    
    #---------------------------------------------

    name ="BBIC"
    order="ascd"
    weight=2
    sort2=[name,order,weight]
    sort_c.append(sort2)
    
    return [filter_c,sort_c]

# 择时函数
def getTimeConfig():
    # condition 条件
    select_c=[]
    
    # 1.has c_MA
    name="MA"
    period="day"
    shortMA=5
    longMA=60

    select_c.append([name,period,shortMA,longMA])
        
    # 2.has c_MACD
    name = "MACD"
    period = "day"
    shortDIF =12
    longDIF =26
    DEA =9
    select_c.append([name,period,shortDIF,longDIF,DEA])
        
    # 3.has c_DMA
    name = "DMA"
    period = "day"
    shortMA =5
    longMA =60
    AMA =20
    select_c.append([name,period,shortMA,longMA,AMA])
        
    # 4. has c_TRIX
        
    # 5.has c_MAVOL
        
    # 6.has c_MABias
        
    # 7. has c_PE
        
    # 8.has c_PB
        
    # 9.has c_PE2
        
    # 10.has c_PB2
    
    # parameter 参数

    bear_position =0
    bear_to_bull =-1
    bull_to_bear =3

# 交易
def trade():
    cycle =5
    gains_calc ="收盘价"
    ideal_position =10
    position_upper =13
    position_low =7

    # 买入限制
    
    buy_limit = "排名名次"+"<="+"10"
    
    # 卖出限制
    
    sell_limit = "排名名次"+">="+"20"
    
    sell_limit = "持有天数"+">="+"10"
    
    sell_limit = "买入后涨幅(止盈)"+">="+"10"
    
from zipline.api import *
from pdCal import *
import pandas as pd
import numpy as np

import datetime

def small(a,b):
    return a<b[0]
def big(a,b):
    return a>b[0]
def between(a,b):
    return a>b[0] and a<b[1]




def ma(df,step=[5,30],name=['short_ma','long_ma']):
    for i in len(name):
        df[name[i]]=pd.ewma(df['close'],  span= step[i])

    return


def macd(df,fastperiod=12, slowperiod=26):
    macd1, macdsignal, macdhist = ta.MACD(df['close'].values, fastperiod=fastperiod, slowperiod=slowperiod, signalperiod=9)
    df['MACDBar']=macdhist
    df['DIF']=macd1
    df['DEA']=macdsignal
    return
def ma_t(df,config,date):
    ma(df)
    short_ma,long_ma=df['short_ma','long_ma'].iloc[[-1]]
    return short_ma >= config[2] and long_ma <= config[3]


def macd_t(df,config,date):
    macd(df)
    dif,dea,macd=df['DIF','DEA','MACDBar'].iloc[[-1]]
    return dif

def bench_t_s(config,date):
    conditions={'MA':ma_t,'MACD':macd_t}
    from AnyQuant import getBenchFromts
    start=datetime.timedelta(60)
    df=getBenchFromts(start=start,end=date)
    ans=True
    for con in config:
        ans=ans and conditions.get(con[0])(df,con,date)

    return ans








def macd_s(list,config,start=datetime.strptime('2015-08-31','%Y-%m-%d')):
    conditions={'<':small,'>':big,'<>':between}
    from pdCal import macd
    import AnyQuant
    start_date=start-datetime.timedelta(365)
    ans=[]
    for id in list:
        df=getSingleStock(id,start_date,start)
        macd(df)
        if conditions.get(config[1])(df['MACDBar'].iloc[[-1]],config[3:]) :
            ans.append(id)

    return ans

def initialize(context):
    stockinfo_df=getStock_info()
    [filt,sort]=getSelectConfig()
    conditions={'MACD':macd_s}
    id_list=stockinfo_df['code'].values.tolist()
    for cond in filt:
        id_list=conditions.get(cond[0])(id_list,cond)

    context.select=id_list






# 每天交易时
def handle_data(context, data):
