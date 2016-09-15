# -*- coding: UTF-8 -*-
import pandas as pd
import json
df=pd.read_csv('stock_list.csv')
print df[df['fixedAssets']>=10000]

if True:
    pass




