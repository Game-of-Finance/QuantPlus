#! /usr/bin/env python
# -*- coding: utf-8 -*-
import numpy as np

stock_pick=np.loadtxt('pytemplate/select_id.csv',dtype=str)
print  stock_pick
def quantplus_ingest(
        environ,
        asset_db_writer,
        minute_bar_writer,
        day_bar_writer,
        adjustment_writer,
        calendar,
        cache,
        show_progress,
        output_dir
        ):
    import pandas as pd
    import numpy as np
    import datetime
    import tushare as ts
    import sys
    reload(sys)  # Python2.5 初始化后会删除 sys.setdefaultencoding 这个方法，我们需要重新载入
    sys.setdefaultencoding('utf-8')
    def load_stock_info():
        print 'read'
        df = pd.read_csv('/home/cxworks/workspace/QuantPlus/pysrc/stock_info.csv')
        df['timeToMarket'] = pd.to_datetime(df['timeToMarket'], format='%Y%m%d', errors='ignore')
        df = df.rename(columns={'code': 'symbol','name':'asset_name','timeToMarket':'start_date','industry':'market'})
        return df


    def daily(symbol):
        tfot='%Y-%m-%d'
        # id=str(symbol)
        # id=id[:6].zfill(6)
        #get data
        #2000-2016
        # symbol=str(symbol)
        start=datetime.datetime(2008,1,1)
        end=datetime.datetime.now()-datetime.timedelta(1)
        ans=pd.DataFrame()
        while start<end :
            print symbol,'start'
            ans=ans.append(ts.get_h_data(symbol,start=start.strftime(tfot),end=(start+datetime.timedelta(1200)).strftime(tfot) ,retry_count=5,pause=0.1  ))
            start=start+datetime.timedelta(1201)
        ans=ans.sort_index()
        print ans
        return ans

    stock_info=load_stock_info()
    # print stock_info
    # return
    daily_data_list=[]
    equities = pd.DataFrame(np.empty(len(stock_pick), dtype=[
        ('symbol', 'object'),
        ('asset_name', 'object'),
        ('start_date', 'datetime64[ns]'),
        ('exchange', 'object')]))
    for sid in range(0,len(stock_pick)):
        symb=stock_pick[sid][2:]
        daily_data=daily(symb)
        daily_data_list.append((sid,daily_data))
        fact = stock_info[stock_info['symbol'] == int(symb)]
        if int(symb)>=600000:
            equities.iloc[sid, 3]='SH'
        else:
            equities.iloc[sid, 3]='SZ'
        equities.iloc[sid,0]=stock_pick[sid]
        equities.iloc[sid,1]=unicode(fact.iloc[0,1])
        equities.iloc[sid,2]=datetime.datetime.strptime(str(fact.iloc[0,15]),'%Y%m%d')


    # equ=equ.reindex(range(len(stock_pick)))
    print 'equ'
    print equities
    asset_db_writer.write(equities=equities)
    day_bar_writer.write(data=daily_data_list)
    adjustment_writer.write()

