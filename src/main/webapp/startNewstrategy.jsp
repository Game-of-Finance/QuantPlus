<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/8/15
  Time: 下午2:21
  To change this template use File | Settings | File Templates.注意!:::::用到的css样式表在joinquant网站查看源文件里找!!!!!!!!!!!!!!!!!!!!!!很关键!!!!
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>新建策略</title>
    <meta name="keywords" content="joinquant,聚宽,量化,宽客,quant,量化交易,量化平台,量化投资,量化策略,程序化交易,量化交易平台,python,金融工程,level2,level1" />
    <meta name="description" content="聚宽（JoinQuant）量化交易平台是为量化爱好者（宽客）量身打造的云平台，我们为您提供精准的回测功能、高速实盘交易接口、易用的API文档、由易入难的策略库，便于您快速实现、使用自己的量化交易策略。" />
    <meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link type='text/css'  href="https://joinquant-static.b0.upaiyun.com/common/css/lib.min.css?v=201608311338" rel='stylesheet'></link>
    <link type='text/css'  href="https://joinquant-static.b0.upaiyun.com/common/css/common.min.css?v=201608311338" rel='stylesheet'></link>
    <link rel="icon" href="https://joinquant-static.b0.upaiyun.com/common/img/favicon-16-16.png?v=2" type="image/x-icon">

    <link href="https://joinquant-static.b0.upaiyun.com/third/jquery-ui/jquery-ui-jq.min.css?v=201608311338" rel="stylesheet" />
    <link href="https://joinquant-static.b0.upaiyun.com/algorithm/css/algorithm.min.css?v=201608311338" rel="stylesheet" />
    <style>
        .introjs-helperNumberLayer{-webkit-box-sizing:initial;-moz-box-sizing:initial;box-sizing:initial;}
        .ace_print-margin{ visibility: hidden !important; }
    </style>

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
    <%--读取.py文件--%>
    <script language="JavaScript">
        function read() {

            var fso, ts, s;
            var ForReading = 1;
            fso = new ActiveXObject("Scripting.FileSystemObject");
            ts = fso.OpenTextFile("/Users/alfred/Desktop/test.txt", ForReading);
            s = ts.ReadAll();
            alert("S:"+s);
            document.getElementById("code").value = s;
            window.location.reload();
        }
    </script>
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
                <button type="button" onclick="read()">Click Me!</button>
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
                <input type="hidden" id="algorithmId" name="algorithm[algorithmId]"  value="62e908069077ad5bfaac6fe7b806c08c">
                <input type="hidden" name="algorithm[userId]"  value="19155">
                <input type="hidden" id="type" name="backtest[type]"  value="1">
                <div id="subnav" class="subnav">
                    <a href="/algorithm/index/list" class="algo-back" title="返回策略列表">
                        <i class="icon icon-chevron-left no-decoration"></i>
                    </a>
                    <h2 class="algo-title" title="点击修改策略名称">这是一个简单的策略-5</h2>
                    <input class="algo-title-box medium hidden"  id="title-box" name="algorithm[name]" size="30" value="这是一个简单的策略-5" type="text" style="margin-left:4px">
                    <div class="state-triangle"></div>
                    <div class="state-triangle border"></div>
                    <div class="pull-right mode-buttons">
                        <div class="mode-container">
                            <div class="btn-group inline-block">
                                <a href="/algorithm/live/shareList?f=algedit" target="_blank">策略擂台&nbsp;&nbsp;</a>
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
                                            <textarea  id="code" name="algorithm[code]" value="" class="hidden" style="padding:0px;height:auto" >
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
                                                            <input value="2016-01-01 00:00:00" id="startTime" name="backtest[startTime]" data-default="2015-01-05" data-datetype="backtest_start_date" class="datepicker" readonly="readonly">
                                                        </div>
                                                        <label class="inline-block margin_5l margin_5r to-label"> 到 </label>
                                                        <div class="controls inline-block">
                                                            <input value="2016-07-01 23:59:59" id="endTime"  name="backtest[endTime]" data-default="2015-05-31" data-datetype="backtest_end_date" class="datepicker"  readonly="readonly">
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
                                                    <div id="daily-new-backtest-button" href="backTest.jsp" data-toggle="modal" class="btn btn-primary pull-right" data-step="4" data-intro="点击“运行回测”进行完整的回测"  data-position='left'>
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
<script type="text/javascript" charset="utf-8" src="https://joinquant-static.b0.upaiyun.com/algorithm/js/edit.min.js?v=201608311338"></script>
<script>
    var visited = 1;
    showIntro(visited);
    g_isBackToTop=false;
</script>
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
        <%--var referer = "";--%>
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

