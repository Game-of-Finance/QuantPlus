#基础策略模板
# 2015-08-16 到 2016-08-16, ￥10000, 每天

'''
================================================================================
总体回测前
================================================================================
'''
#总体回测前要做的事情
def initialize(context):
    set_params()    #1设置策参数
    set_variables() #2设置中间变量
    set_backtest()  #3设置回测条件

#1
#设置策略参数
def set_params():
    g.tc=15  # 调仓频率
    g.N=4 #持仓数目
    g.security = ["000001.XSHE","000002.XSHE","000006.XSHE","000007.XSHE","000009.XSHE"]#设置股票池

#2
#设置中间变量
def set_variables():
    return

#3
#设置回测条件
def set_backtest():
    set_option('use_real_price', True) #用真实价格交易
    log.set_level('order', 'error')






'''
================================================================================
每天开盘前
================================================================================
'''
#每天开盘前要做的事情
def before_trading_start(context):
    set_slip_fee(context)

#4
# 根据不同的时间段设置滑点与手续费
def set_slip_fee(context):
    # 将滑点设置为0
    set_slippage(FixedSlippage(0))
    # 根据不同的时间段设置手续费
    dt=context.current_dt

    if dt>datetime.datetime(2013,1, 1):
        set_commission(PerTrade(buy_cost=0.0003, sell_cost=0.0013, min_cost=5))

    elif dt>datetime.datetime(2011,1, 1):
        set_commission(PerTrade(buy_cost=0.001, sell_cost=0.002, min_cost=5))

    elif dt>datetime.datetime(2009,1, 1):
        set_commission(PerTrade(buy_cost=0.002, sell_cost=0.003, min_cost=5))

    else:
        set_commission(PerTrade(buy_cost=0.003, sell_cost=0.004, min_cost=5))






'''
================================================================================
每天交易时
================================================================================
'''
def handle_data(context, data):

    # 将总资金等分为g.N份，为每只股票配资
    capital_unit = context.portfolio.portfolio_value/g.N

    toSell = signal_stock_sell(context,data)
    toBuy = signal_stock_buy(context,data)

    # 执行卖出操作以腾出资金
    for i in range(len(g.security)):
        if toSell[i]==1:
            order_target_value(g.security[i],0)
    # 执行买入操作
    for i in range(len(g.security)):
        if toBuy[i]==1:
            order_target_value(g.security[i],capital_unit)

    if not (1 in toBuy) or (1 in toSell):
        # log.info("今日无操作")
        send_message("今日无操作")


#5
#获得卖出信号
#输入：context, data
#输出：sell - list
def signal_stock_sell(context,data):
    sell = [0]*len(g.security)
    for i in range(len(g.security)):

    return sell


#6
#获得买入信号
#输入：context, data
#输出：buy - list
def signal_stock_buy(context,data):
    buy = [0]*len(g.security)
    for i in range(len(g.security)):

    return buy







'''
================================================================================
每天收盘后
================================================================================
'''
# 每日收盘后要做的事情（本策略中不需要）
def after_trading_end(context):
    return


