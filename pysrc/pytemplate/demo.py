# demo py
# 总体回测前要做的事情
def initialize(context):


# 每天交易时
def handle_data(context, data):

# 选股函数
def selectStock():
    # filter 筛选
    
    name ="MACD"
    comparison=">"
    count=0
    count_low=
    count_upper=
    
    name ="营业利润增长"
    comparison="区间"
    count=0
    count_low=0.2
    count_upper=0.3
    
    name ="净利润增长"
    comparison="区间排名"
    count=0
    count_low=10.0
    count_upper=20.0
    
    # sort 排序
    
    name ="流通市值"
    order="ascd"
    weight=1
    
    name ="BBIC"
    order="ascd"
    weight=2
    
# 择时函数
def selectTime():
    # condition 条件
    
    # 1.has c_MA
    name="MA"
    period="day"
    shortMA=5
    longMA=60
        
    # 2.has c_MACD
    name = "MACD"
    period = "day"
    shortDIF =12
    longDIF =26
        
    # 3.has c_DMA
    name = "DMA"
    period = "day"
    shortMA =5
    longMA =60
    AMA =20
        
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
    






