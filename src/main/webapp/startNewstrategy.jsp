<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/8/30
  Time: 下午2:21
  To change this template use File | Settings | File Templates.注意!:::::用到的css样式表在joinquant网站查看源文件里找!!!!!!!!!!!!!!!!!!!!!!很关键!!!!
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>quant+</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link type='text/css' href="https://joinquant-static.b0.upaiyun.com/common/css/lib.min.css?v=201608151157"
          rel='stylesheet'></link>
    <link type='text/css' href="https://joinquant-static.b0.upaiyun.com/common/css/common.min.css?v=201608151157"
          rel='stylesheet'></link>
    <link rel="icon" href="https://joinquant-static.b0.upaiyun.com/common/img/favicon-16-16.png?v=2"
          type="image/x-icon">

    <!-- <link type='text/css'  href="https://joinquant-static.b0.upaiyun.com/third/looper/looper.min.css?v=201608151157" rel='stylesheet'/> -->
    <link type='text/css' href="https://joinquant-static.b0.upaiyun.com/default/css/style.min.css?v=201608151157"
          rel='stylesheet'/>
    <style>
        body {
            background-color: #fff
        }

        #kk_nav {
            background-color: #000000;
        }

        .in_body .banner {
            background-color: #ffffff;
        }

        #kk_nav .nav a {
            padding: 35px 27px 17px 27px;
            font-size: 15px;
            -webkit-font-smoothing: auto
        }

        #kk_nav .nav a .bor {
            transition: .5s ease all;
            display: inline-block;
            border: 2px solid #fff;
            border-radius: 3px;
            position: absolute;
            width: 70px;
            height: 40px;
            margin-left: -35px;
            margin-top: -10px;
            left: 50%;
            top: 50%;
        }

        #kk_nav .nav a:hover .bor {
            border-color: rgba(255, 255, 255, .3);
        }

        #kk_nav .nav .submenu a {
            padding: 0 0 0 10px
        }

        #kk_nav .nav a:hover, #kk_nav .nav a:focus {
            color: rgba(255, 255, 255, .3);
            background-color: transparent;
        }

        #kk_nav .navbar-brand {
            background: url(images/index/logo.png) no-repeat;
            background-size: 100%;
            width: 400px;
            height: 60px;
            margin-top: 10px;
        }

        #kk_nav .navbar-brand-mob {
            margin-top: 15px;
        }

        #kk_nav .nav .message-badge-nav {
            top: 26px;
        }

        .new.btn-default {
            border: 2px solid #fff;
            background: none;
            color: #fff;
            box-sizing: border-box;
            width: 132px;
            height: 45px;
            padding-top: 7px;
        }

        @media (max-width: 1225px) {
            #kk_nav .nav a {
                padding-left: 20px;
            }
        }

        @media (max-width: 1170px) {
            #kk_nav .nav a {
                padding: 33px 13px;
            }

            #kk_nav .nav a .bor {
                margin-top: -20px;
            }
        }

        @media (max-width: 970px) {
            #kk_nav .nav a {
                padding: 33px 6px;
            }

            #kk_nav .nav a .bor {
                width: 50px;
                margin-left: -25px
            }
        }

        @media (max-width: 870px) {
            #kk_nav .navbar-brand {
                width: 160px;
            }

            #kk_nav .nav a {
                padding-top: 28px;
            }
        }

        @media (max-width: 767px) {
            #kk_nav .navbar-brand {
                width: 160px;
                background-size: 80%;
            }

            #kk_nav .nav a .bor {
                display: none
            }
        }
    </style>


    <style>
    </style>
</head>
<body>

<div class="kk_main in_wrap">

    <header id="kk_nav" class=" kk_nav navbar narbar-static-top">
        <!-- <div class="container"> -->
        <div class="navbar-header">
            <button id="btn_menu" class="navbar-toggle" type="button" data-toggle="collapse" data-target='#kk_navbar'>
                <span class="sr-only">Toggle nav</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/?f=home&m=logo" title='joinQuant' class="navbar-brand "></a>
        </div>
        <nav id="kk_navbar" class="kk_navbar collapse navbar-collapse" aria-expanded='false'>
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp">首页</a></li>

                <li data-step="5" data-intro="策略研究" data-position='bottom'>
                    <a href="javascript:void(0)">策略研究</a>

                    <div class="submenu" id="research">
                        <span class="sanjiao"></span>

                        <a href="modelStrategy.jsp" class="item">优选策略</a>
                        <a href="strategyList.jsp" class="item">我的策略</a>
                    </div>
                </li>

                <li data-step="5" data-intro="实盘交易" data-position='bottom'>
                    <a href="javascript:void(0)">实盘交易</a>

                    <div class="submenu" id="jiaoyi">
                        <span class="sanjiao"></span>

                        <a href="" class="item">实盘账户</a>
                        <a href="" class="item">我的交易</a>
                    </div>
                </li>

                <li><a href="">常见问题</a></li>

                <li data-step="6" data-intro="查看其它小伙伴分享的策略" data-position='bottom'>
                    <a href="communication.jsp">社区</a>
                </li>

                <li><a href="login.jsp">登录</a></li>
                <li><a href="register.jsp">注册</a></li>
            </ul>
        </nav>
        <!-- </div> -->
    </header>

    <!--/header-->
    <div class="kk_body top_50">
        <div class="content content-area old-style padding_b0 " style="overflow:hidden;">
            <form name="AlgorithmModel">
                <input type="hidden" id="algorithmId" name="algorithm[algorithmId]"  value="31307fa1f6ae2a7d43ac0a0a80f4ac56">
                <input type="hidden" name="algorithm[userId]"  value="19155">
                <input type="hidden" id="type" name="backtest[type]"  value="1">
                <div id="subnav" class="subnav">
                    <a href="/algorithm/index/list" class="algo-back" title="返回策略列表">
                        <i class="icon icon-chevron-left no-decoration"></i>
                    </a>
                    <h2 class="algo-title" title="点击修改策略名称">这是一个简单的策略-2</h2>
                    <input class="algo-title-box medium hidden"  id="title-box" name="algorithm[name]" size="30" value="这是一个简单的策略-2" type="text" style="margin-left:4px">
                    <div class="state-triangle"></div>
                    <div class="state-triangle border"></div>
                    <div class="pull-right mode-buttons">
                        <div class="mode-container">
                            <div class="btn-group inline-block">
                                <a href="/algorithm/live/shareList?f=algedit" target="_blank">优选策略&nbsp;&nbsp;</a>
                            </div>
                            <div class="btn-group inline-block">
                                <a target="_blank" href="/api" class="btn">
                                    API文档
                                </a>
                            </div>
                            <div class="btn-group inline-block toggle-buttons" id="algo-toggle-buttons">
                                <a class="btn btn-primary active no-decoration" href="#algorithm" id="algo-button">
                                    策 略
                                    <i class="icon icon-comments chat-count hidden">
                                        <span class="comment-count"></span>
                                    </i>
                                </a>
                                <a class="btn no-decoration" href="javascript:void(0);" id="backtest-button">
                                    回 测 列 表
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="main-pane" class="main-pane">
                    <div id="algo-area" class="algorithm-area">
                        <div id="ide-box" class="box ide" style="width: auto; height: auto">

                            <div id="splitter-outer-container">
                                <div id="splitter-container" class="splitter ui-widget ui-widget-content" data-splitter-initialized="true">
                                    <div id="code-area" style="height:100%; position:absolute; left:0px;width: 45%;border-right:1px solid #a9a9a9" class="splitter-pane">
                                        <!-- toolbar start -->
                                        <div class="toolbar" id="toolbar">
                                            <div class="toolbar-inner">
                                                <div class="left inline-block">
                                                    <div id="algo-save-button" class="btn">
                                            <span class="button-label">
                                                <span class="active-text" id="save-span" title="保存策略(Ctrl+S)">
                                                    <span class="underlined_char">保  存</span>
                                                </span>
                                                <span class="busy-text" id="save-busy-text">保存中</span>
                                                <span class="done-text" id="save-done-text">已保存</span>
                                            </span>
                                                    </div>
                                                    <div id="validate-button" class="btn" data-original-title="" title="" data-step="3" data-intro="点击“编译运行”进行快速回测"  data-position='right'>
                                                        <img src="https://joinquant-static.b0.upaiyun.com/algorithm/img/loader_R.gif" class="loading hidden build-loading">
                                                        <span class="button-label">
                                                <span class="active-text" id="buildBtn" title="编译运行(Ctrl+Alt+B)">
                                                    <span>编译运行</span>
                                                </span>
                                                <span class="busy-text hidden build-loading" id="building">编译中...</span>
                                            </span>
                                                    </div>
                                                    <div class="">
                                                        <img class="loading">
                                                    </div>
                                                </div>
                                                <div class="right inline-block pull-right">
                                                    <div class="inline-block" style="width:20px">
                                                        <a href="javascript:void(0)" id="searchBtn" title="查找">
                                                            <i class="icon icon-search large-icon"></i>
                                                        </a>
                                                    </div>
                                                    <div id="ide-options" class="btn-group inline-block">
                                                        <input type="hidden" value="default" name="fontpref" id="font-pref-field">
                                                        <input type="hidden" value="ambiance" name="themepref" id="theme-pref-field">
                                                        <a id="prefs-menu-trigger" href="#" data-toggle="dropdown" class="btn dropdown-toggle dropdown-checked">
                                                            <i class="icon icon-cog large-icon"></i>
                                                            <span class="caret"></span>
                                                        </a>
                                                        <ul class="dropdown-menu prefs-menu pull-right">
                                                            <div id="fontsize-pref" class="check-group">
                                                                <li data-fontsize="small" class="wide-left">
                                                                    <a id="small-text-link" class="fontsize-pref-link">
                                                                        <i class="icon icon-ok"></i>
                                                                        小号字体
                                                                    </a>
                                                                </li>
                                                                <li data-fontsize="default" class="wide-left checked">
                                                                    <a id="normal-text-link" class="font-size-pref-link">
                                                                        <i class="icon icon-ok"></i>
                                                                        中号字体
                                                                    </a>
                                                                </li>
                                                                <li data-fontsize="large" class="wide-left">
                                                                    <a id="large-text-link">
                                                                        <i class="icon icon-ok"></i>
                                                                        大号字体
                                                                    </a>
                                                                </li>
                                                            </div>
                                                            <li class="divider"></li>
                                                            <div id="theme-pref" class="check-group">
                                                                <li data-theme="default" class="wide-left">
                                                                    <a id="light-theme-link">
                                                                        <i class="icon icon-ok"></i>
                                                                        浅色背景
                                                                    </a>
                                                                </li>
                                                                <li data-theme="ambiance" class="wide-left checked">
                                                                    <a id="dark-theme-link">
                                                                        <i class="icon icon-ok"></i>
                                                                        深色背景
                                                                    </a>
                                                                </li>
                                                            </div>
                                                            <li class="divider"></li>
                                                            <div id="keybind-pref" class="check-group">
                                                                <li data-keybind="default" class="wide-left checked">
                                                                    <a id="default-keybind-link">
                                                                        <i class="icon icon-ok"></i>
                                                                        默认
                                                                    </a>
                                                                </li>
                                                                <li data-keybind="vim" class="wide-left">
                                                                    <a id="vim-keybind-link">
                                                                        <i class="icon icon-ok"></i>
                                                                        Vim
                                                                    </a>
                                                                </li>
                                                                <li data-keybind="emacs" class="wide-left">
                                                                    <a id="emacs-keybind-link">
                                                                        <i class="icon icon-ok"></i>
                                                                        Emacs
                                                                    </a>
                                                                </li>
                                                            </div>
                                                            <li class="divider"></li>
                                                            <li class="wide-left nocheck">
                                                                <a id="fullscreen-menu-link">全屏</a>
                                                            </li>
                                                        </ul>
                                                        <a id="fullscreen-button" class="hidden btn btn-primary">
                                                            退出全屏
                                                        </a>
                                                    </div>
                                                    <input value=">>" type="button" class="btn dropdown-toggle dropdown-checked flag" title="隐藏右侧">
                                                </div>
                                            </div>
                                        </div>
                                        <!-- toolbar endt -->

                                        <div id="code-area-internal">
                                            <div class="ide-search hidden">
                                                <div class="input-append">
                                                    <input type="text" placeholder="Search code" id="ide-searchbox">
                                                    <div class="add-on hide-search">
                                                        <i class="icon icon-remove"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <textarea  id="code" name="algorithm[code]" value="" class="hidden" style="padding:0px;height:auto">
def initialize(context):
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
                                            <div id="ide-container" class="ide-container font-default hidden" data-step="1" data-intro="使用Python语言编辑策略"  data-position='right'></div>
                                        </div>

                                        <!--
                                        <div id="splitter-bar" class="splitter-bar splitter-bar-vertical ui-state-default" unselectable="on" style="-moz-user-select: none; z-index: 100; position:absolute;right:0px; height: 100%;width:5px"><a href="javascript:void(0)" accesskey="" tabindex="0"></a>
                                        </div>
                                        -->
                                    </div>
                                    <div id="output-pane" style="height:100%; position:absolute;left:45%; width: 54.9%;margin-left:3px" class="splitter-pane">
                                        <div class="dailybars-output height_100pct">
                                            <div id="dailybars-status" class="hidden">
                                                <img class="loading-image">
                                                <span class="loading-text"></span>
                                                <div class="progress-pane">
                                                    <div class="progress progress-striped active">
                                                        <div style="width: 0%" id="dailybars-progressbar" class="bar"></div>
                                                    </div>
                                                    <span id="dailybars-progresslabel" class="progress-label"></span>
                                                    <div id="cancel-daily-backtest-button" class="btn cancel-button">取 消</div>
                                                </div>
                                            </div>
                                            <div class="dailybars-nav" id="dailybars-nav">
                                                <div id="setting-btn-group" class="btn-group inline-block dailybars-controls form-inline" data-step="2" data-intro="设置回测的开始时间、结束时间、初始资金、回测频率"  data-position='bottom'>
                                                    <div class="control-group">
                                                        <div class="controls inline-block">
                                                            <input value="2016-01-01" id="startTime" name="backtest[startTime]" data-default="2015-01-05" data-datetype="backtest_start_date" class="datepicker" readonly="readonly">
                                                        </div>
                                                        <label class="inline-block margin_5l margin_5r to-label"> 到 </label>
                                                        <div class="controls inline-block">
                                                            <input value="2016-07-01" id="endTime"  name="backtest[endTime]" data-default="2015-05-31" data-datetype="backtest_end_date" class="datepicker"  readonly="readonly">
                                                        </div>
                                                        <div class="controls inline-block padding_5l capitalbase-container" style="padding-right:5px">
                                                            <div class="input-prepend">
                                                                <span class="add-on" style="padding:0px;margin:0px">&#65509;</span>
                                                                <input type="number" name="backtest[baseCapital]"  value="100000" step="1000" min="1000" id="daily_backtest_capital_base_box" class="capitalbase">
                                                            </div>
                                                        </div>
                                                        <div class="controls inline-block valign-top">
                                                            <input type="hidden" id="frequency" name="backtest[frequency]"  value="day">
                                                            <div class="btn-group bootstrap-select frequency-selector-ide show-tick" style="width: 80px;">
                                                                <button data-toggle="dropdown" class="btn dropdown-toggle selectpicker btn-default" type="button" title="Daily">
                                                                    <span class="filter-option pull-left">每天</span>&nbsp;<span class="caret"></span>
                                                                </button>
                                                                <div class="dropdown-menu open">
                                                                    <ul role="menu" class="dropdown-menu inner selectpicker">
                                                                        <li rel="day" class="selected">
                                                                            <a  style="" class="" tabindex="0"><i class="icon icon-ok icon-ok check-mark"></i><span class="text">每天</span>
                                                                            </a>
                                                                        </li>
                                                                        <li rel="minute" >
                                                                            <a  style="" class="" tabindex="0"><i class="icon icon-ok icon-ok check-mark"></i><span class="text">分钟</span>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <a id="full-backtest-button">
                                                    <div id="daily-new-backtest-button" href="#join-modal" data-toggle="modal" class="btn btn-primary pull-right" data-step="4" data-intro="点击“运行回测”进行完整的回测"  data-position='left'>
                                                        运 行 回 测
                                                        <i class="icon chevron-right padding_5l"></i>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="dailybars-results" style="height:365px" id="dailybars-results">
                                                <div id="dailybar-stats">
                                                    <div class="dailybar-stat">
                                                        <div class="title">策略收益</div>
                                                        <div id="total_returns" class="value">--</div>
                                                    </div>
                                                    <div class="dailybar-stat">
                                                        <div class="title">基准收益</div>
                                                        <div id="benchmark_returns" class="value">--</div>
                                                    </div>
                                                    <div class="dailybar-stat">
                                                        <div class="title">Alpha</div>
                                                        <div id="alpha" class="value">--</div>
                                                    </div>
                                                    <div class="dailybar-stat">
                                                        <div class="title">Beta</div>
                                                        <div id="beta" class="value">--</div>
                                                    </div>
                                                    <div class="dailybar-stat">
                                                        <div class="title">Sharpe</div>
                                                        <div id="sharpe" class="value">--</div>
                                                    </div>
                                                    <div class="dailybar-stat">
                                                        <div class="title">
                                                            最大回撤
                                                            <i class="icon icon-question-sign risk-icon  popover-right" data-toggle="popover"></i>
                                                        </div>
                                                        <div id="max_drawdown" class="value">--</div>
                                                    </div>
                                                </div>
                                                <div id="dailybar-chart-outer-container">
                                                    <div id="dailybar-watermark">
                                                        <span>点击”编译运行"进行快速回测(Ctrl-Alt-B)</span>
                                                        <span>或者 点击"运行回测"进行详细的回测</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tabbable" style="height:auto" id="tabbable">
                                                <div class="maxmin-button">
                                                    <btn id="daily-toggle-logs-button" class="btn">
                                                        更多
                                                        <i class="icon icon-chevron-up"></i>
                                                    </btn>
                                                </div>
                                                <ul class="nav nav-tabs" id="nav-tabs">
                                                    <li class="active">
                                                        <a id="daily-logs-link" href="#daily-logs-tab" data-toggle="tab">日志</a>
                                                    </li>
                                                    <li>
                                                        <a id="daily-error-tab-link" href="#daily-errors-tab" data-toggle="tab">错误<i class="icon icon-circle tiny-icon hidden" style="color:red;vertical-align:super;"></i></a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content no-padding" id="tab-content">
                                                    <div id="daily-logs-tab" class="tab-pane active">
                                                        <div id="daily-logs-container" class="logs-output">
                                                            <div class="logs-container position-relative" id="log"><pre></pre></div>
                                                            <div class="logs-footer hidden" id="logs-init">
                                                                <div class="loading-image border"></div>
                                                                <span class="message">正在加载日志...</span>
                                                            </div>
                                                            <div class="logs-finished hidden">
                                                                结束.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="daily-errors-tab" class="tab-pane">
                                                        <div id="dailybars-errors" class="error-info">
                                                            <div class="error-container">
                                                                <div class="error-details" id="error-log"><pre></pre></div>
                                                            </div>
                                                        </div>
                                                    </div>
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

<script src="https://joinquant-static.b0.upaiyun.com/common/js/lib.min.js?v=201608151157"></script>
<script src="https://joinquant-static.b0.upaiyun.com/third/looper/looper.min.js"></script>
<script src="https://joinquant-static.b0.upaiyun.com/default/js/data.js"></script>
</div>
</div>
</body>
</html>


