from zipline.data.bundles import register

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
    def load_stock_info():
        df = pd.read_csv('stock_info.csv')
        df['timeToMarket'] = pd.to_datetime(df['timeToMarket'], format='%Y%m%d', errors='ignore')
        df = df.rename(columns={'code': 'symbol','name':'asset_name','timeToMarket':'start_date','industry':'market'})
        return df


    def daily(symbol):
        tfot='%Y-%m-%d'
        # id=str(symbol)
        # id=id[:6].zfill(6)
        #get data
        #2000-2016
        start=datetime.datetime(2000,1,1)
        end=datetime.datetime.now()-datetime.timedelta(1)
        ans=pd.DataFrame()
        while start<end :
            ans.append(ts.get_h_data(symbol,start=start.strftime(tfot),end=(start+datetime.timedelta(1200)).strftime(tfot) ,retry_count=5,pause=0.1  ))
            start=start+datetime.timedelta(1201)

        return ans

    stock_info=load_stock_info()
    daily_data_list=[]
    for symb in stock_info['symbol']:
        daily_data=daily(symb)
        daily_data_list.append((symb,daily_data))

    asset_db_writer.write(equities=stock_info)
    day_bar_writer.write(data=daily_data_list)
    adjustment_writer.write()

register('quantplus_bundle',quantplus_ingest)
