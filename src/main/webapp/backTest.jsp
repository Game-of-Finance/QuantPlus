<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/8/31
  Time: 下午2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>回测详情 - JoinQuant</title>
    <meta name="keywords" content="joinquant,聚宽,量化,宽客,quant,量化交易,量化平台,量化投资,量化策略,程序化交易,量化交易平台,python,金融工程,level2,level1" />
    <meta name="description" content="聚宽（JoinQuant）量化交易平台是为量化爱好者（宽客）量身打造的云平台，我们为您提供精准的回测功能、高速实盘交易接口、易用的API文档、由易入难的策略库，便于您快速实现、使用自己的量化交易策略。" />
    <meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link type='text/css'  href="https://joinquant-static.b0.upaiyun.com/common/css/lib.min.css?v=201608311338" rel='stylesheet'></link>
    <link type='text/css'  href="https://joinquant-static.b0.upaiyun.com/common/css/common.min.css?v=201608311338" rel='stylesheet'></link>
    <link rel="icon" href="https://joinquant-static.b0.upaiyun.com/common/img/favicon-16-16.png?v=2" type="image/x-icon">

    <link href="https://joinquant-static.b0.upaiyun.com/third/jquery-ui/jquery-ui-jq.min.css?v=201608311338" rel="stylesheet" />
    <link href="https://joinquant-static.b0.upaiyun.com/algorithm/css/algorithm.min.css?v=201608311338" rel="stylesheet" />

    <style>
        .kk_body{
            padding-bottom:0px;
        }
    </style>

    <style>
        span.new{
            background: rgba(0,0,0,0);
        }
    </style>
</head>
<body >
<div class="kk_main in_wrap">

    <header id="kk_nav" class="fixed-top kk_nav navbar narbar-static-top">
        <!-- <div class="container"> -->
        <div class="navbar-header">
            <button id="btn_menu" class="navbar-toggle" type="button"  data-toggle="collapse" data-target='#kk_navbar'>
                <span class="sr-only">Toggle nav</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/" title='joinQuant' class="navbar-brand "></a>
        </div>
        <nav id="kk_navbar" class="kk_navbar collapse navbar-collapse" aria-expanded='false'>
            <ul class="nav navbar-nav">
                <li ><a href="/">首页</a></li>
                <li><a href="/algorithm/live/shareList">策略擂台<sup style="color:#ff3000">NEW</sup></a></li>
                <li><a href="/research">投资研究</a></li>
                <li class="active"><a href="/algorithm/index/list" >我的策略</a></li>
                <li ><a href="/algorithm/trade/list">我的交易</a></li>
                <li ><a href="/data" target="_blank">数据</a></li>

                <li  data-step="5" data-intro="遇到问题，查看常见问题和API文档"  data-position='bottom'>
                    <a href="javascript:void(0)">帮助</a>

                    <div class="submenu" id="help-submenu">
                        <span class="sanjiao"></span>
                        <a href="/faq" class="item">常见问题</a>
                        <a href="/api" class="item" target="_blank">API文档</a>
                        <a href='/lectures' class="item hidden" target="_blank">教程</a>
                        <a href="/post/553" class="item" >更新日志</a>
                    </div>
                </li>
                <li><a href="/study">量化课堂</a></li>
                <li   data-step="6" data-intro="查看其它小伙伴分享的策略"  data-position='bottom'><a href="/community">社区</a></li>
                <!--
                <li class="navQQ">
                    <a target='_blank' href='http://qm.qq.com/cgi-bin/qm/qr?k=o2z9MjcIO2Y_rE-KlAo2x2FkZujbyaEV'>QQ<span class="mqq">群 : 429620025</span></a>
                    <div class="qqQrcode">
                        <p class="mb_0 text-center">QQ群 : <a target='_blank' href='http://qm.qq.com/cgi-bin/qm/qr?k=o2z9MjcIO2Y_rE-KlAo2x2FkZujbyaEV'>429620025</a></p>
                        <span class="sanjiao"></span><i class="img"></i>
                    </div>
                </li>
                -->
                <li class="last" >
                    <a href="javascript:void(0)">个人账号<span class="message-badge-nav hidden">79</span></a>
                    <div class="submenu">
                        <span class="sanjiao"></span>
                        <a href='/user/account/index' class="item overdot">Enaric</a>                                    <a href='/user/msg/list' class="item">消息<span class="message-badge hidden">79</span></a>
                        <a href='/user/account/setting' class="item">账号设置</a>
                        <a href='/user/login/logout' class="item">退出</a>
                    </div>
                </li>
            </ul>
        </nav>
        <!-- </div> -->
    </header>

    <!--/header-->
    <div class="kk_body top_50">
        <div class="backtest-area content content-area old-style padding_b0" style="min-width:1330px">
            <input type="hidden" id="minLiveDate" name="minLiveDate"  value="2016-08-31">
            <form name="AlgorithmModel">
                <input type="hidden" id="backtestId" name="backtest[backtestId]"  value="9f78bd981fc4d8cceb8aa80d04b00a29">

                <textarea  id="code" name="backtest[code]" class="hidden">def initialize(context):
    # 定义一个全局变量, 保存要操作的股票
    # 000001(股票:平安银行)
    g.security = &#039;000001.XSHE&#039;
    # 初始化此策略
    # 设置我们要操作的股票池, 这里我们只操作一支股票
    set_universe([g.security])

# 每个单位时间(如果按天回测,则每天调用一次,如果按分钟,则每分钟调用一次)调用一次
def handle_data(context, data):
    security = g.security
    # 取得过去五天的平均价格
    average_price = data[security].mavg(5, &#039;close&#039;)
    # 取得上一时间点价格
    current_price = data[security].close
    # 取得当前的现金
    cash = context.portfolio.cash

    # 如果上一时间点价格高出五天平均价1%, 则全仓买入
    if current_price &gt; 1.01*average_price:
        # 用所有 cash 买入股票
        order_value(security, cash)
        # 记录这次买入
        log.info(&quot;Buying %s&quot; % (security))
    # 如果上一时间点价格低于五天平均价, 则空仓卖出
    elif current_price &lt; average_price and context.portfolio.positions[security].sellable_amount &gt; 0:
        # 卖出所有股票,使这只股票的最终持有量为0
        order_target(security, 0)
        # 记录这次卖出
        log.info(&quot;Selling %s&quot; % (security))
    # 画出上一时间点价格
    record(stock_price=current_price)
</textarea>
                <div id="subnav" class="subnav">
                    <a href="/algorithm/index/edit?algorithmId=2cd1c35ccdf4895a063a10ae709f50f8" class="algo-back" title="返回策略页">
                        <i class="icon icon-chevron-left no-decoration"></i>
                    </a>
                    <!-- <input type="text" value="这是一个简单的策略-6" size="30" name="algorithm[title]" id="title-box" data-backtest-number="null" class="algo-title-box medium disabled" disabled=""> -->
                    <div style="display:inline-block">
                        <span id="title-box" >这是一个简单的策略-6</span>
                        <i title="点击编辑回测名称" id="name-1276533" _backtestId="1276533" class="icon icon-edit"></i>
                    </div>
                    <div class="state-triangle-detail"></div>
                    <div class="state-triangle-detail border"></div>
                    <div class="pull-right mode-buttons">
                        <div class="mode-container">
                            <a href="/algorithm/backtest/list?algorithmId=0454e2a596ca99f8aee896d3f865b821" class="btn"><i class="icon icon-chevron-left"></i>  所有回测</a>
                            <div class="btn-group inline-block toggle-buttons"  id="algo-toggle-buttons">
                                <a class="btn no-decoration" href="/algorithm/index/edit?algorithmId=49c6d72f95c1bf1e27c00683fba1e22d" id="algo-button">
                                    策 略
                                </a>
                                <a class="btn btn-primary active no-decoration" href="#backtest" id="backtest-button">
                                    回 测
                                    <i class="icon icon-comments chat-count hidden">
                                        <span class="comment-count"></span>
                                    </i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="main-pane" class="main-pane">
                    <div id="backtest-settings-outer-container" class="clearfix">
                        <div class="left-container pull-left" style="height:48px">
                            <table id="backtest-settings-middle-table">
                                <tbody><tr>
                                    <td>
                                        <table id="backtest-settings-container">
                                            <tbody>
                                            <tr>
                                                <td class="title-cell valign-top">
                                                    <div class="title">设置:</div>
                                                </td>
                                                <td>
                                                    <div id="backtest-settings-summary-payload" class="backtest-settings-summary-payload white-on-tour">
                                                        <span class="date backtest_start_date_display" id="startDate">2016-01-01</span>
                                                        <span> 到 </span>
                                                        <span class="date backtest_end_date_display" id="endDate">2016-07-01</span>，
                                                        <span class="capital backtest_capitalbase_display" id="baseCapital">￥100000</span>，
                                                        <span class="capital backtest_datafrequency_display" id="frequency" value="day">每天</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="results">
                                                <td class="title-cell valign-top" id="backtestStatus" _status="0">
                                                    <div class="title">状态:</div>
                                                </td>
                                                <td>
                                                    <div id="inprogress-backtest-pane" class="backtest-status-pane inprogress-backtest-pane">
                                                        <div class="backtest-label">
                                                            <img class="loading-image" style="height:18px">
                                                            <!--
                                                            <span id="backtest-state-label" class="bold">正在回测</span>
                                                            -->
                                                        </div>
                                                        <div class="backtest-progress">
                                                            <div class="progress progress-striped active inline-block">
                                                                <div style="width: 0%;" id="backtest-progress-bar" class="bar"></div>
                                                            </div>
                                                            <div id="backtest-progress-label" class="progress-label inline-block">0%</div>
                                                            <div id="cancel-backtest-button" class="btn btn-mini cancel-button">取消</div>
                                                        </div>
                                                    </div>
                                                    <div id="done-backtest-pane" class="backtest-done-pane backtest-status-pane hidden">
                                                        <div style="display:none" class="status-container inline-block">
                                                            <span id="status-label" class="label label-important large"></span>
                                                            <span id="extra-status-info" class="hidden"></span>
                                                        </div>
                                                        <span id="backtest-complete">
                                                     <i class="icon icon-ok"></i>
                                                     <span>回测完成</span>
                                                     <span id="run-time-cost"></span>
                                                 </span>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody></table>
                                    </td>
                                </tr>
                                </tbody></table>
                        </div>
                        <div class="backtest-toolbar-container pull-right">

                            <div id="deploy-algo-button-group" class="btn-group inline-block">
                                <a id="live-trade-btn" _totalLiveCount="3" _remainCount="3" rel="popover" data-trigger="hover" data-placement="bottom" class="btn disabled with-events" data-original-title="" title="">模拟交易</a>
                            </div>
                            <div id="share-backtest-button-group" class="btn-group inline-block">
                                <a rel="popover" target="_blank" href="/community/post/edit?backtestId=60fbf1c342e1149b5bc217f0a087ade2" id="share-backtest-button" data-width="250" data-trigger="hover" data-placement="bottom" data-content="" class="btn btn-primary disabled" data-original-title="" title="">
                                    <i class="icon icon-comments-alt"></i>
                                    分享到社区
                                </a>
                            </div>
                            <div class="btn-group inline-block">
                                <a id="view-code-button" class="btn">查看代码</a>
                            </div>
                            <div class="btn-group inline-block">
                                <a id="backtest-menu-toggle" href="#" data-toggle="dropdown" class="btn dropdown-toggle">导出<span class="caret" style="margin-left:5px"></span></a>
                                <ul class="dropdown-menu pull-right" id="backtest-toolbar-dropdown">
                                    <li>
                                        <a id="export-csv-button" href="" data-toggle="modal" download="data.xls">收益概述</a>
                                    </li>
                                    <li>
                                        <a id="export-transaction-button" href="/algorithm/backtest/export?backtestId=e11f7ecef25f41d92bb00c8074c55082&type=transaction" >交易详情</a>
                                    </li>
                                    <li>
                                        <a id="export-position-button" href="/algorithm/backtest/export?backtestId=d769491dcfc4ccf94a2a97d203b877e2&type=position">持仓&收益</a>
                                    </li>
                                    <li>
                                        <a id="export-log-button" href="/algorithm/backtest/export?backtestId=a937f34ad39e0d66464af2a8a9bcf702&type=log">日志</a>
                                    </li>
                                </ul>
                            </div>

                        </div>

                    </div>
                    <div id="backtest-results-box" class="algorithm-area">
                        <div id="ide-box" class="box ide" style="width: auto; height: 715px">
                            <div id="splitter-outer-container">
                                <div id="backtest-atomic-container" class="ui-widget ui-widget-content data-container" data-splitter-initialized="true">
                                    <div id="result-area" style="height:100%;position:absolute;left:0px;width:180px" class="splitter-pane data-container">
                                        <ul id="result-tabs" class="nav nav-tabs vertical">

                                            <li class="active">
                                                <a href="#tab-summaryinfo" data-toggle="tab">收益概述</a>
                                            </li>
                                            <li>
                                                <a id="transactions-tab" href="#tab-transactioninfo" data-toggle="tab" class="enable-when-done">交易详情</a>
                                            </li>
                                            <li>
                                                <a id="positions-tab" href="#tab-positioninfo" data-toggle="tab" class="enable-when-done">每日持仓&amp;收益</a>
                                            </li>

                                            <li>
                                                <a id="logs-tab" href="#tab-logs" data-toggle="tab">日志输出</a>
                                            </li>
                                            <li>
                                                <a id="profile-tab" href="#tab-profile" data-toggle="tab" class="enable-when-done">性能分析</a>
                                            </li>
                                            <li class="divider"></li>
                                            <li class="nav-header hidden"><span class="risk-info">风险指标</span></li>
                                            <li>
                                                <a href="#tab-algorithm_period_return" data-toggle="tab" class="enable-when-done risk">策略收益</a>
                                            </li>
                                            <li>
                                                <a href="#tab-benchmark_period_return" data-toggle="tab" class="enable-when-done risk">基准收益</a>
                                            </li>
                                            <!--
                                            <li>
                                                <a href="#tab-treasury_period_return" data-toggle="tab" class="enable-when-done">Treasury Returns</a>
                                            </li>
                                            -->
                                            <li>
                                                <a href="#tab-alpha" data-toggle="tab" class="enable-when-done  risk">Alpha</a>
                                            </li>
                                            <li>
                                                <a href="#tab-beta" data-toggle="tab" class="enable-when-done risk">Beta</a>
                                            </li>
                                            <li>
                                                <a href="#tab-sharpe" data-toggle="tab" class="enable-when-done risk">Sharpe</a>
                                            </li>
                                            <li>
                                                <a href="#tab-sortino" data-toggle="tab" class="enable-when-done risk">Sortino</a>
                                            </li>
                                            <li>
                                                <a href="#tab-information" data-toggle="tab" class="enable-when-done risk">Information Ratio</a>
                                            </li>
                                            <li>
                                                <a href="#tab-algo_volatility" data-toggle="tab" class="enable-when-done risk">Volatility</a>
                                            </li>
                                            <li>
                                                <a href="#tab-benchmark_volatility" data-toggle="tab" class="enable-when-done risk">Benchmark Volatility</a>
                                            </li>
                                            <li>
                                                <a href="#tab-max_drawdown" data-toggle="tab" class="enable-when-done risk">Max Drawdown</a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div id="splitter-pane" style="height:100%;position:absolute;left:180px; width:auto;margin-top:16px;margin-right:20px" class="splitter-pane">
                                        <div class="dailybars-output height_100pct" style="margin-left:30px">
                                            <div class="dailybars-results active" style="height:650px" id="tab-summaryinfo">
                                                <div id="headline-results" class="top-level-stats-container white-on-tour">
                                                    <div class="top-level-stat">
                                                        <div class="stat-label">
                                                            策略收益
                                                        </div>
                                                        <div id="total_returns" class="stat-value">--</div>
                                                    </div>
                                                    <div class="top-level-stat year-return">
                                                        <div class="stat-label">
                                                            策略年化收益
                                                        </div>
                                                        <div id="year_returns" class="stat-value">--</div>
                                                    </div>
                                                    <div class="top-level-stat benchmark-returns">
                                                        <div class="stat-label">
                                                            基准收益
                                                        </div>
                                                        <div id="benchmark_returns" class="stat-value">--</div>
                                                    </div>
                                                    <div class="top-level-stat">
                                                        <div class="stat-label">
                                                            Alpha
                                                        </div>
                                                        <div id="alpha" class="stat-value">--</div>
                                                    </div>
                                                    <div class="top-level-stat">
                                                        <div class="stat-label">
                                                            Beta
                                                        </div>
                                                        <div id="beta" class="stat-value">--</div>
                                                    </div>
                                                    <div class="top-level-stat">
                                                        <div class="stat-label">
                                                            Sharpe
                                                        </div>
                                                        <div id="sharpe" class="stat-value">--</div>
                                                    </div>
                                                    <div class="top-level-stat">
                                                        <div class="stat-label">
                                                            Sortino
                                                        </div>
                                                        <div id="sortino" class="stat-value">--</div>
                                                    </div>
                                                    <div class="top-level-stat">
                                                        <div class="stat-label">
                                                            Information Ratio
                                                        </div>
                                                        <div id="information" class="stat-value">--</div>
                                                    </div>
                                                    <div class="top-level-stat volatility">
                                                        <div class="stat-label">
                                                            Algorithm Volatility
                                                        </div>
                                                        <div id="algorithm_volatility" class="stat-value">--</div>
                                                    </div>
                                                    <div class="top-level-stat volatility">
                                                        <div class="stat-label">
                                                            Benchmark Volatility
                                                        </div>
                                                        <div id="benchmark_volatility" class="stat-value">--</div>
                                                    </div>
                                                    <div class="top-level-stat volatility">
                                                        <div class="stat-label">
                                                            最大回撤
                                                            <i class="icon icon-question-sign risk-icon  popover-right" data-toggle="popover"></i>
                                                        </div>
                                                        <div id="max_drawdown" class="stat-value">--</div>
                                                    </div>
                                                </div>

                                                <div id="portfolio-perf-label" class="chart-label portfolio-performance">
                                                    <div class="payload">
                                                <span data-key="Returns" class="legend-item">
                                                    <span class="square blue"></span>
                                                    <span class="blue">策略收益</span>
                                                </span>
                                                        <span data-key="Benchmark" class="legend-item">
                                                    <span class="square red margin_15l"></span>
                                                    <span class="red full_backtest_benchmark">基准收益</span>
                                                </span>
                                                        <span data-key="Benchmark" class="legend-item" style="float:right;">
                                                    <span class="full_backtest_benchmark">Powered by </span><span style="font-weight:bold">joinquant.com</span>
                                                </span>
                                                    </div>
                                                </div>
                                                <div id="backtest-chart-outer-container">
                                                </div>
                                            </div>
                                            <div id="tab-transactioninfo" class="tab-pane hidden table-container" _hasDrawn=0>
                                                <div class="transaction-info-pane">
                                                    <div class="table-container">
                                                        <div class="table-header">
                                                            <div class="table-title">
                                                                交易详情
                                                            </div>
                                                            <span>
                                                        <span class="separator">.</span>
                                                        <a href="#" class="show-when-grouped expand-all-link" tableId="table-transactioninfo">展开全部</a>
                                                        <span class="separator">.</span>
                                                        <a href="#" class="show-when-grouped collapse-all-link" tableId="table-transactioninfo">收起全部</a>
                                                    </span>
                                                            <div class="filter-nav pull-right">
                                                        <span class="grouping-controls">
                                                            <button type="button" data-toggle="button" class="group-by-day btn active">Group by day</button>
                                                        </span>
                                                            </div>
                                                        </div>
                                                        <table id="table-transactioninfo" class=""><span id="transaction-loading"><img class="loading-image" style="height:18px">  正在加载...</span></table>
                                                    </div>
                                                </div>
                                            </div>

                                            <div id="tab-positioninfo" class="tab-pane hidden table-container" _hasDrawn=0>
                                                <div class="transaction-info-pane">
                                                    <div class="table-container">
                                                        <div class="table-header">
                                                            <div class="table-title">
                                                                持仓&收益
                                                            </div>
                                                            <span>
                                                        <span class="separator">.</span>
                                                        <a href="#" class="show-when-grouped expand-all-link" tableId="table-positioninfo">展开全部</a>
                                                        <span class="separator">.</span>
                                                        <a href="#" class="show-when-grouped collapse-all-link" tableId="table-positioninfo">收起全部</a>
                                                    </span>
                                                            <div class="filter-nav pull-right">
                                                        <span class="grouping-controls">
                                                            <button type="button" data-toggle="button" class="group-by-day btn active">Group by day</button>
                                                        </span>
                                                            </div>
                                                        </div>
                                                        <table id="table-positioninfo" class=""><span id="position-loading"><img class="loading-image" style="height:18px">  正在加载...</span></table>
                                                        <div id="pager2"></div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div id="tab-logs" class="hidden" _hasDrawn=0>
                                                <div class="table-header">
                                                    <div class="table-title">
                                                        日志输出
                                                    </div>
                                                </div>
                                                <div class="logs-container position-relative logs-output" id="log"><pre></pre></div>
                                                <div class="logs-footer" id="logs-init">
                                                    <div class="loading-image border"></div>
                                                    <span class="message">正在加载日志...</span>
                                                </div>
                                                <div class="logs-finished hidden">
                                                    结束.
                                                </div>
                                            </div>
                                            <div id="tab-profile" class="hidden" _hasDrawn=0>
                                                <div class="table-header">
                                                    <div class="table-title">
                                                        性能分析
                                                    </div>
                                                </div>
                                                <div class="logs-container position-relative logs-output" id="profile"><pre></pre></div>
                                            </div>

                                            <div id="tab-algorithm_period_return" class="tab-pane hidden risk-tab" _hasDrawn=0>
                                                <div class="table-header">
                                                    <div class="table-title">
                                                        收益
                                                    </div>
                                                </div>
                                                <table id="table-algorithm_period_return">
                                                    <span class="risk-loading"><img class="loading-image" style="height:18px">  正在加载...</span>
                                                </table>
                                            </div>

                                            <div id="tab-benchmark_period_return" class="tab-pane hidden risk-tab" _hasDrawn=0>
                                                <div class="table-header">
                                                    <div class="table-title">
                                                        基准收益
                                                    </div>
                                                </div>
                                                <table id="table-benchmark_period_return">
                                                    <span class="risk-loading"><img class="loading-image" style="height:18px">  正在加载...</span>
                                                </table>
                                            </div>

                                            <div id="tab-alpha" class="tab-pane hidden risk-tab" _hasDrawn=0>
                                                <div class="table-header">
                                                    <div class="table-title">
                                                        Alpha
                                                    </div>
                                                </div>
                                                <table id="table-alpha">
                                                    <span class="risk-loading"><img class="loading-image" style="height:18px">  正在加载...</span>
                                                </table>
                                            </div>

                                            <div id="tab-beta" class="tab-pane hidden risk-tab" _hasDrawn=0>
                                                <div class="table-header">
                                                    <div class="table-title">
                                                        Beta
                                                    </div>
                                                </div>
                                                <table id="table-beta">
                                                    <span class="risk-loading"><img class="loading-image" style="height:18px">  正在加载...</span>
                                                </table>
                                            </div>

                                            <div id="tab-sharpe" class="tab-pane hidden risk-tab" _hasDrawn=0>
                                                <div class="table-header">
                                                    <div class="table-title">
                                                        Sharpe
                                                    </div>
                                                </div>
                                                <table id="table-sharpe">
                                                    <span class="risk-loading"><img class="loading-image" style="height:18px">  正在加载...</span>
                                                </table>
                                            </div>

                                            <div id="tab-sortino" class="tab-pane hidden risk-tab" _hasDrawn=0>
                                                <div class="table-header">
                                                    <div class="table-title">
                                                        Sortino
                                                    </div>
                                                </div>
                                                <table id="table-sortino">
                                                    <span class="risk-loading"><img class="loading-image" style="height:18px">  正在加载...</span>
                                                </table>
                                            </div>

                                            <div id="tab-information" class="tab-pane hidden risk-tab" _hasDrawn=0>
                                                <div class="table-header">
                                                    <div class="table-title">
                                                        Information
                                                    </div>
                                                </div>
                                                <table id="table-information">
                                                    <span class="risk-loading"><img class="loading-image" style="height:18px">  正在加载...</span>
                                                </table>
                                            </div>


                                            <div id="tab-algo_volatility" class="tab-pane hidden risk-tab" _hasDrawn=0>
                                                <div class="table-header">
                                                    <div class="table-title">
                                                        Volatility
                                                    </div>
                                                </div>
                                                <table id="table-algo_volatility">
                                                    <span class="risk-loading"><img class="loading-image" style="height:18px">  正在加载...</span>
                                                </table>
                                            </div>

                                            <div id="tab-benchmark_volatility" class="tab-pane hidden risk-tab" _hasDrawn=0>
                                                <div class="table-header">
                                                    <div class="table-title">
                                                        Benchmark Volatility
                                                    </div>
                                                </div>
                                                <table id="table-benchmark_volatility">
                                                    <span class="risk-loading"><img class="loading-image" style="height:18px">  正在加载...</span>
                                                </table>
                                            </div>


                                            <div id="tab-max_drawdown" class="tab-pane hidden risk-tab" _hasDrawn=0>
                                                <div class="table-header">
                                                    <div class="table-title">
                                                        Max Drawdown
                                                    </div>
                                                </div>
                                                <table id="table-max_drawdown">
                                                    <span class="risk-loading"><img class="loading-image" style="height:18px">  正在加载...</span>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h4 class="modal-title">Modal title</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>One fine body…</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->

                                    <div id="backtest-detail" class="hidden">
                                        <table class="table table-condensed">
                                            <tbody>
                                            <tr>
                                                <td class="category">策略名称:</td>
                                                <td class="backtest-index-display">这是一个简单的策略-6</td>
                                            </tr>
                                            <tr>
                                                <td class="category">开始时间:</td>
                                                <td class="backtest_start_date_display">2016-01-01</td>
                                            </tr>
                                            <tr>
                                                <td class="category">结束时间:</td>
                                                <td class="backtest_end_date_display">2016-07-01</td>
                                            </tr>
                                            <tr>
                                                <td class="category">初始资金:</td>
                                                <td class="backtest_capitalbase_display">￥100000</td>
                                            </tr>
                                            <tr>
                                                <td class="category">添加时间:</td>
                                                <td class="backtest_started_at_display">2016-08-31 14:31:48</td>
                                            </tr>
                                            <tr>
                                                <td class="category">完成状态:</td>
                                                <td class="backtest_finished_at_display" id="detail-finished">N/A</td>
                                            </tr>
                                            <tr>
                                                <td class="category">数据频率:</td>
                                                <td class="backtest_datafrequency_display capitalize">每天</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        </form>
    </div>

</div>
<!--/body-->



</div>
<!-- 回到顶部 联系我们 -->
<div id="leftsead" class="hidden">
    <ul>
        <li>
            <a href="javascript:void(0)" class="youhui">
                <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/l02.png" width="47" height="49" class="shows" />
                <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/a.png" width="57" height="49" class="hides" />
                <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/weixin.jpg" width="145" class="2wm" style="display:none;margin:-100px 57px 0 0" />
            </a>
        </li>
        <li>
            <!--
                        <a href="http://shang.qq.com/wpa/qunwpa?idkey=3d953481afd338d17ecbedfa4c9f82172b059d404372221c0c7a27489d761de0" target="_blank">
            -->
            <a href="http://jq.qq.com/?_wv=1027&k=27PjcZu" target="_blank">
                <div class="hides" style="width:161px;display:none;" id="qq">
                    <div class="hides" id="p1">
                        <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/ll04.png">
                    </div>
                    <!--
                                    <div class="hides" id="p2"><span style="color:#FFF;font-size:13px">429620025</span>
                    -->
                    <div class="hides" id="p2"><span style="color:#FFF;font-size:13px">484717016</span>
                    </div>
                </div>
                <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/l04.png" width="47" height="49" class="shows" />
            </a>
        </li>
        <li id="tel">
            <a target="_blank" href="/community/post/edit?tag=faq">
                <div class="hides" style="width:161px;display:none;" id="tels">
                    <div class="hides" id="p1">
                        <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/ll05.png">
                    </div>
                    <div class="hides" id="p3"><span style="color:#FFF;font-size:15px">反馈</span>
                    </div>
                </div>
                <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/l05.png" width="47" height="49" class="shows" />
            </a>
        </li>
        <li id="btn">
            <a id="top_btn">
                <div class="hides" style="width:161px;display:none">
                    <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/ll06.png" width="161" height="49" />
                </div>
                <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/l06.png" width="47" height="49" class="shows" />
            </a>
        </li>
    </ul>
</div>

<script>
    var g_staticHost = 'https://joinquant-static.b0.upaiyun.com';
    var g_isBackToTop = true;
    var g_isMobile = false;

    var g_isLogin = true;
</script>
<script src="https://joinquant-static.b0.upaiyun.com/common/js/lib.min.js?v=201608311338"></script>


<script>
    $('.dropdown-toggle').dropdown();
    $("body").delegate("a","click",function(){
        if ($(this)[0].hostname.length>0 && $(this)[0].hostname != window.location.hostname) {
            window.open($(this)[0].href);
            return false;
        }
    });

    function addUserIcon(){
        var user = {
            "莫邪的救赎":'<i class="icon icon-trophy icon-trophy-gold" title="2015年最受欢迎策略冠军"></i>',
            "Waiting":'<i class="icon icon-trophy icon-trophy-silver" title="2015年最受欢迎策略亚军"></i>',
            "kuhn":'<i class="icon icon-trophy icon-trophy-copper" title="2015年最受欢迎策略季军"></i>',
            "胡庆平":'<i class="icon icon-trophy icon-trophy-gold" title="2015年圣诞节最受欢迎策略冠军"></i>',
            "Kris":'<i class="icon icon-trophy icon-trophy-silver" title="2015年圣诞节最受欢迎策略亚军"></i>',
            "海纳百川":'<i class="icon icon-trophy icon-trophy-copper" title="2015年圣诞节最受欢迎策略季军"></i>',
        }

        $('.user-alias').each(function(){
            var alias =  $(this).html();
            if(user[alias]){
                alias = alias+user[alias];
            }
            $(this).html(alias);
        });
    }
</script>
<script type="text/javascript" charset="utf-8" src="https://joinquant-file.b0.upaiyun.com/www/stockcode.js"></script>
<script type="text/javascript" charset="utf-8" src="https://joinquant-static.b0.upaiyun.com/third/jquery-ui/jquery-ui-jq.min.js?v=201608311338"></script>
<script type="text/javascript" charset="utf-8" src="https://joinquant-static.b0.upaiyun.com/third/ace/ace.min.js?v=201608311338"></script>
<script type="text/javascript" charset="utf-8" src="https://joinquant-static.b0.upaiyun.com/algorithm/js/detail.min.js?v=201608311338"></script>
<script>
    visitTiming();
    function visitTiming()
    {
        var timestamp = (new Date()).valueOf();
        var rand = parseInt(Math.random()*1000);
        ///访问ID+随机数
        var visitId = timestamp.toString()+rand.toString();

        /*
         ///进入页面的发送请求
         $.ajax({
         type: 'POST',
         async: true,
         url: '/log/index/log',
         data: {visitId:visitId,type:0}
         });
         */

        ///离开页面的发送请求
        var start;
        var end;
        var duration = 0;
        start = new Date();
        $(window).bind('beforeunload', function(e) {
            end = new Date();//用户退出时间
            duration = end.getTime() - start.getTime();
            duration = duration/1000;//取的是秒
            $.ajax({
                type: 'POST',
                async: false,
                url: '/log/index/log',
                data: {visitId:visitId,type:1,visitTime:duration}
            });
        });
    }
</script>
<script>
    g_isBackToTop = false;
</script>

<%--<div style="display:none">--%>
    <%--<script src="https://s95.cnzz.com/z_stat.php?id=1256107754&web_id=1256107754" language="JavaScript"></script>--%>
    <%--<!-- 返回顶部 -->--%>
    <%--<script>--%>
        <%--if(g_isBackToTop){--%>
            <%--$('#leftsead').removeClass('hidden');--%>
            <%--$("#leftsead a").hover(function(){--%>
                <%--if($(this).prop("className")=="youhui"){--%>
                    <%--$(this).children("img.hides").show();--%>
                <%--}else{--%>
                    <%--$(this).children("div.hides").show();--%>
                    <%--$(this).children("img.shows").hide();--%>
                    <%--$(this).children("div.hides").animate({marginRight:'0px'},'0');--%>
                <%--}--%>
            <%--},function(){--%>
                <%--if($(this).prop("className")=="youhui"){--%>
                    <%--$(this).children("img.hides").hide();--%>
                <%--}else{--%>
                    <%--$(this).children("div.hides").animate({marginRight:'-163px'},0,function(){$(this).hide();$(this).next("img.shows").show();});--%>
                <%--}--%>
            <%--});--%>
            <%--$("#top_btn").click(function(){if(scroll=="off") return;$("html,body").animate({scrollTop: 0}, 300);});--%>

            <%--//右侧导航 - 二维码--%>
            <%--$(".youhui").mouseover(function(){--%>
                <%--$(this).children(".2wm").show();--%>
            <%--})--%>
            <%--$(".youhui").mouseout(function(){--%>
                <%--$(this).children(".2wm").hide();--%>
            <%--});--%>
        <%--}--%>
    <%--</script>--%>
    <%--<script>--%>
        <%--var img = new Image();--%>
        <%--var referer = "https%3A%2F%2Fwww.joinquant.com%2Falgorithm%2Findex%2Fedit%3FalgorithmId%3Dad2ae6b7852d41b68f56a9470f09423d";--%>
        <%--var euid = "7eb7cf3e3b2bd545cf0534466f26cf84";--%>
        <%--var urd = "2016-08-16";--%>
        <%--var logHost = '';--%>
        <%--var timestamp=new Date().getTime();--%>
        <%--img.src = logHost+'/log/p.gif?euid='+euid+"&referer="+referer+'&urd='+urd+'&_t='+timestamp;--%>
    <%--</script>--%>
    <%--<script>--%>
        <%--/*cnzz点击事件统计*/--%>
        <%--$('.track_event_click').click(function(){--%>
            <%--var cate = $(this).attr('_cate');--%>
            <%--var name = $(this).attr('_name');--%>
            <%--_czc.push(['_trackEvent', cate, '点击', name]);--%>
        <%--});--%>
    <%--</script>--%>
<%--</div>--%>
</body>
</html>


