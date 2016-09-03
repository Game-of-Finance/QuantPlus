import pandas as pd
import numpy as np
import sys
import talib as ta

def getStock_info():
    return pd.read_csv('stock_list.csv')

def poly_lambda(close):
    y=[float(0)]*5
    for i in range(1,4):
        y[i]=6*(close[i+1]+close[i-1]-2*close[i])
    m=[float(0)]*5
    m[2]=y[2]-(y[1]+y[3])/2;
    m[3]=(y[3]-m[2])/2;
    f=close[4]-close[3]-float(2)/3*m[3];
    return f*close[4]/100+close[4]

def color_lambda(x):
    if x>0:
        return 'red'
    elif x<0:
        return 'green'
    else:
        return 'black'
def rsi_lambda(x):
    le=x.size
    t=np.cumsum(np.diff(x))
    big=[]
    small=[]
    for v in t:
        if v>0 :
            big.append(v)
        elif v<0 :
            small.append(v)
    emau=np.array(big).mean()
    if np.isnan(emau):
        emau=0
    emad=abs(np.array(small).mean())
    if np.isnan(emad):
        rs=sys.float_info.max
    elif True :
        rs=emau/emad
    rsi=(1-float(1)/(rs+1))*100
    return rsi


def ema(df):
    step=[5,10,30,25,50,150,100,200,600]
    name=['PMA5_day','PMA10_day','PMA30_day','PMA5_week','PMA10_week',
          'PMA30_week','PMA5_month','PMA10_month','PMA30_month']
    for i in range(9):
        df[name[i]]=pd.ewma(df['adj_price'],  span= step[i])

    return

def rsi(df):
    span=[6,12,24]
    name=['RSI6','RSI12','RSI24']
    for v in range(3):
        df[name[v]]=pd.rolling_apply(df['adj_price'], span[v], rsi_lambda)
    return


def bias(df):
    span=[6,12,24]
    name=['BIAS6','BIAS12','BIAS24']
    for v in range(3):
        ma=pd.rolling_mean(df['adj_price'],span[v])
        df[name[v]]=(df['adj_price']-ma)/ma*100
    return

def kdj(df):
    df['K'],df['D']=ta.STOCH(np.array(df['high']),np.array(df['low']),np.array(df['adj_price']),\
    fastk_period=9,slowk_period=3,slowk_matype=0,slowd_period=3,slowd_matype=0)
    df.fillna(50,inplace=True)
    df['J']=3*df['K']-2*df['D']
    df.fillna(50,inplace=True)
    return

def macd(df):
    macd1, macdsignal, macdhist = ta.MACD(df['adj_price'].values, fastperiod=12, slowperiod=26, signalperiod=9)
    df['DIF']=macd1
    df['DEA']=macdsignal
    df['MACDBar']=macdhist
    return

def updown(df):
    df['updown']=df['close'].pct_change()
    return

def color(df):
    df['color']=(df['close']-df['open']).apply(color_lambda)
    return

def poly(df):
    df['poly']=pd.rolling_apply(df['close'], 5, poly_lambda)
    return
