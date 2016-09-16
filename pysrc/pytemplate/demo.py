# demo py
# 总体回测前要做的事情


# 选股函数
def getSelectConfig():
    # filter 筛选
    fix=[]
    
    name="industry"
    
    fix.append([name,'化工原料'])
    
    
    
    name="asset"
    
    
    comparison=">"
    fix.append([name,comparison,10000.0,0.0])
    
    
    name="area"
    
    fix.append([name,'江苏'])
    
    
    
    filter_c=[]
    
    #--------------------------cell--------------------------------
    name ="MACD"
    comparison=">"
    count=0.0
    cell1=[name,comparison,count]
    
    count_low=0.0
    cell1.append(count_low)
        
    count_upper=0.0
    cell1.append(count_upper)
    
    filter_c.append(cell1)
    


    # sort 排序
    sort_c=[]
    
    #---------------------------------------------

    name ="流通市值"
    order="ascd"
    weight=1
    sort1=[name,order,weight]
    sort_c.append(sort1)
    
    return [fix,filter_c,sort_c]

# 择时函数
def getTimeConfig():
    # condition 条件
    select_c=[]
    
    # 1.has c_MA
    name="MA"
    period="$root.selectTime.condition.c_MA.period"
    shortMA=$root.selectTime.condition.c_MA.shortMA
    longMA=$root.selectTime.condition.c_MA.longMA

    select_c.append([name,period,shortMA,longMA])
                                        
    # parameter 参数

    bear_position =0.0
    bear_to_bull =-1
    bull_to_bear =3

    return select_c

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


def ma_t(array,config,date):
    short_ma=ta.SMA(array,5)[-1]
    long_ma=ta.SMA(array,30)[-1]
    return short_ma >= config[2] and long_ma <= config[3]


def macd_t(df,config,date):
    macd1, macdsignal, macdhist = ta.MACD(df, fastperiod=12, slowperiod=26, signalperiod=9)
    return macd1[-1] >= config[2] and macd1[-1] <= config[3]

def bench_t_s(config,date):
    conditions={'MA':ma_t,'MACD':macd_t}
    df=history(60,'1d','close')['000300.XSHG'].values;
    ans=True
    for con in config:
        ans=ans and conditions.get(con[0])(df,con,date)

    return ans



def asset_sort(list,config,info):
    map={}
    for id in list:
        num=info[['liquidAssets']][info.code == id]
        map[id]=num
    dict= sorted(map.iteritems(), key=lambda d:d[1], reverse = True)
    return dict.keys()


def industry_s(df,config):
    return df[df['industry']==config[1]]

def area_s(df,config):
    return df[df['area']==config[1]]

def asset_s(df,config):
    if config[1]=='>':
        return df[df['fixedAssets']>config[2]]
    elif config[1]=='<':
        return df[df['fixedAssets']<config[3]]
    elif config[1]=='<>':
        return df[df['fixedAssets']>config[2] and df['fixedAssets']<config[3]]

def macd_s(list,config,start=datetime.datetime.strptime('2015-08-31','%Y-%m-%d')):
    conditions={'<':small,'>':big,'<>':between}

    ans=[]
    for id in list:
        df=history(60,'1d','close')[id].values
        macd1, macdsignal, macdhist = ta.MACD(df, fastperiod=12, slowperiod=26, signalperiod=9)
        if conditions.get(config[1])(macdhist[-1],config[2:]) :
            ans.append(id)

    return ans

def init(context):
    stockinfo_df=getStock_info()
    [fix,filt,sort]=getSelectConfig()
    conditions={'area':area_s,'industry':industry_s,'asset':asset_s}
    for con in fix:
        stockinfo_df=conditions.get(con[0])(stockinfo_df,con)

    

    context.all=stockinfo_df

    context.time_config=getTimeConfig()

    return





# 每天交易时
def handle_bar(context, data):


    if not hasattr(context,'select'):
        [fix,filt,sort]=getSelectConfig()
        conditions={'MACD':macd_s}
        id_list=context.all['code'].values.tolist()
        for cond in filt:
            id_list=conditions.get(cond[0])(id_list,cond,context.now)
        context.select=id_list
    else:

        list=context.select

        [filt,sort]=getSelectConfig()
        conditions={'MACD':macd_s}
        newlist=context.all['code'].values.tolist()
        for cond in filt:
            newlist=conditions.get(cond[0])(newlist,cond,context.now)

        context.select=newlist
        to_be_sold=[id for id in list if id not in newlist]
        for id in to_be_sold:
            #sell them
            order_target_percent(id,0)

    if bench_t_s(context.time_config,context.now) :
        # buy
        for id in context.select:
            order_target_percent(id,float(1)/len(context.select))



    return
