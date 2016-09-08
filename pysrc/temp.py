import pandas as  pd

def transTable(id):
    idr=str(id).zfill(6)
    if id>=600000:
        idr='sh'+idr
    else:
        idr='sz'+idr
    return idr

def riceQuant(id):
    idr=str(id).zfill(6)
    if id>=600000:
        idr=idr+'.XSHG'
    else:
        idr=idr+'.XSHE'
    return idr
df=pd.read_csv('stock_info.csv')

df['code']=df['code'].apply(riceQuant)

df.to_csv('pytemplate/stock_list.csv')

