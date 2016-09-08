<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/9/3
  Time: 下午1:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="股票|基金量化投资策略">
    <meta name="description" content="果仁网让你轻松自足创建股票|基金量化投资策略。">
    <link type="text/css" rel="stylesheet" href="/static/libs/jquery-ui/jquery-ui_075d6d4.css">
    <!-- Bootstrap core CSS -->
    <link type="text/css" rel="stylesheet" href="/static/libs/bootstrap/bootstrap_4fee2d1.css">
    <link type="text/css" rel="stylesheet" href="/static/src/css/commons_8d92a71.css">
    <link type="text/css" rel="stylesheet" href="/static/src/css/loginCtl_ec59171.css">
    <link type="text/css" rel="stylesheet" href="/static/src/css/stockScreen_ae353f7.css">
    <link type="text/css" rel="stylesheet" href="/static/libs/bootstrap/bootstrap-slider_738ceac.css">
    <link type="text/css" rel="stylesheet" href="/static/libs/bootstrap/bootstrap-datetimepicker_53245f2.css">
    <link rel="shortcut icon" href="/static/images/favicon.ico"/>
    <title>策略研究 - 果仁</title>
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?40ee94ccee2cf1051316f73e3fbcf8ac";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</head>
<body>
<nav class="navbar navbar-static-top" id="title-cnt">
</nav>
<div class="container-fluid" id="main-cnt">
    <div id="stockScreen-top-bar">
        <div class="name-cnt">
            <span class="glyphicon glyphicon-edit">修改属性</span>
            <span class="name"></span>
        </div>
        <span class="saveas action disable">另存为</span>
        <span class="save action disable">保存</span>
        <span class="empty action">新建</span>
    </div>
    <div id="setting-wrapper">
        <div id="setting-nav-cnt">
            <a class="active">择股设置</a>
            <a class="normal">大盘择时</a>
            <a class="normal">交易模型</a>
        </div>
        <div id="setting-screen-cnt" class="row">
            <div id="stockScreen-range" class="setting-para-cnt">
                <span class="title">选择范围：</span>
                <select class="form-control pool-sel"></select>
                <span class="glyphicon glyphicon-info-sign"></span>
                <span class="asset"><span class="txt">添加策略/ETF</span><span class="glyphicon glyphicon-plus"></span></span>
                <div class="asset-content">
                    <table>
                        <thead>
                        <th>名称</th><th>仓位权重</th><th>起始日期</th>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
                <div class="clear"></div>
                <div class="default-cnt">
                    <div class="st">
                        <span>ST股票：</span>
                        <select class="form-control">
                            <option value="0" selected="selected">包含ST</option>
                            <option value="1">排除ST</option>
                            <option value="-1">仅有ST</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <div id="stockScreen-factor" class="stock-factor-cnt">
                    <h5 class="title">选股指标</h5>
                    <ul class="nav nav-tabs">
                    </ul>
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <div id="stockScreen-filter" class="stock-filter-cnt">
                    <h5 class="title txt">选股条件</h5>
                    <h5 class="clear"></h5>
                    <ul class="nav nav-tabs">
                        <li role="presentation" class="filter active"><a>筛选条件<span class="glyphicon glyphicon-filter"></span></a></li>
                        <li role="presentation" class="rank"><a>排名条件<span class="glyphicon glyphicon-sort"></span></a></li>
                    </ul>
                    <div class="filter-cnt">
                        <div class="condition-header">
                            <span class="name">指标</span><span class="operator">比较符</span><span class="range">范围</span><span class="values">值</span><span class="delete">操作</span>
                        </div>
                        <p class="desc">点击选择选股指标，生成筛选条件</p>
                    </div>
                    <div class="rank-cnt hide">
                        <div class="rank-header">
                            <span class="name">指标</span><span class="order">次序</span><span class="range">范围</span><span class="weight">权重</span><span class="delete">操作</span>
                        </div>
                        <p class="desc">点击选择选股指标，生成排名条件</p>
                    </div>
                </div>
            </div>
        </div>
        <div id="setting-timing-cnt" class="row hide">
            <div class="setting-para-cnt">
                <span class="title">择时参数：</span>
                <div class="clear"></div>
                <div class="stock-threshold setting-item-cnt"><span>同时满足</span><select class="form-control">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="-1" selected="selected">全部</option>
                </select><span>个择时条件由熊变牛</span></div>
                <div class="stock-threshold1 setting-item-cnt"><span>同时满足</span><select class="form-control">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="-1" selected="selected">全部</option>
                </select><span>个条件由牛变熊</span></div>
                <div class="stock-bear-space setting-item-cnt"><span>熊市仓位：</span><select class="form-control">
                    <option value="0" selected="selected">空仓</option>
                    <option value="0.3">30%</option>
                    <option value="0.5">50%</option>
                    <option value="0.7">70%</option>
                </select></div>
            </div>
            <div class="col-md-6 col-xs-12">
                <div id="timing-factor-cnt" class="stock-factor-cnt">
                    <h5 class="title">择时指标</h5>
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <div id="timing-filter-cnt" class="stock-filter-cnt">
                    <div class="timing-cnt">
                        <div class="rank-header"><span class="name">择时条件</span><span
                                class="edit">编辑</span><span class="delete">操作</span></div>
                        <p class="desc">点击选择择时指标，生成择时条件</p>
                    </div>
                </div>
            </div>
        </div>
        <div id="setting-trading-cnt" class="row hide">
            <div class="setting-para-cnt mode-sel">
                <span class="title">交易模型：</span>
                <label class="radio-inline"><input type="radio" name="trademodeOptions" class="mode1" checked="checked"><span> 模型</span><span class="roma-txt">Ⅰ</span><span class="glyphicon glyphicon-info-sign"></span></label>
                <label class="radio-inline"><input type="radio" name="trademodeOptions" class="mode2"><span> 模型</span><span class="roma-txt">Ⅱ</span><span class="glyphicon glyphicon-info-sign"></span></label>
                <div class="clear"></div>
                <div class="stock-period setting-item-cnt mode"><span>调仓周期（交易日）：</span>
                    <input type="text" class="number text" value="5"/></div>
                <div class="stock-order-time setting-item-cnt">
                    <span>收益计算价格：</span>
                    <select class="form-control">
                        <option value="open">开盘价</option>
                        <option value="close" selected="selected">收盘价</option>
                        <option value="average">日均成交价</option>
                    </select>
                </div>
                <div class="stock-hold-cash setting-item-cnt">
                    <span>空仓资金配置：</span>
                    <select class="form-control">
                        <option value="">无</option>
                    </select>
                </div>
                <div class="clear"></div>
                <div class="stock-num setting-item-cnt mode1"><span>持仓<span class="stock-category"></span>：</span><input type="text" class="number text" value="10"/><span class="unit">只</span></div>
                <div class="stock-position-idea setting-item-cnt mode2 hide"><span>理想仓位：</span><input type="text" class="number text" value="10"/><span>%</span><span class="warning">请输入≥2的数</span><span class="glyphicon glyphicon-info-sign"></span></div>
                <div class="stock-position-deviate setting-item-cnt mode2 hide"><span>仓位范围：</span><select class="form-control">
                    <option value="10">9%~11%</option>
                    <option value="20">8%~12%</option>
                    <option value="30" selected="selected">7%~13%</option>
                    <option value="40">6%~14%</option>
                    <option value="50">5%~15%</option>
                </select><span class="glyphicon glyphicon-info-sign"></span></div>
                <div class="hint setting-item-cnt mode2 hide"><span>理想持仓数10只，最大持仓数15只，最小建仓仓位1%</span></div>
                <div class="stock-backup-limit setting-item-cnt mode1"><span><span class="stock-category"></span>备选买入数：</span><input type="text" class="number text" value="5"/><span class="glyphicon glyphicon-info-sign"></span></div>
                <div class="stock-position-limit setting-item-cnt mode1"><span>个股最大买入仓位：</span><input type="text" class="number text" value="100"/><span>%</span></div>
                <!--<div class="stock-recommend-max-num setting-item-cnt mode2 hide"><span>最大推荐<span class="stock-category"></span>只数：</span><input type="text" class="number text" value="10"/></div>-->
            </div>
            <div class="col-md-6 col-xs-12">
                <div class="setting-para-cnt mode2 buy hide">
                    <span class="title">新股买入限制：</span>
                    <span class="glyphicon glyphicon-info-sign buy-info"></span>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <div class="setting-para-cnt mode2 sell hide">
                    <span class="title">卖出条件：</span>
                    <span class="glyphicon glyphicon-info-sign sell-info"></span>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
    <div id="stockScreen-result">
        <div id="result-nav-cnt">
            <a class="active">每日选股</a>
            <a class="normal">策略回测</a>
            <a class="normal">排名分析</a>
        </div>
        <div id="screen-result-cnt">
            <div class="config">
                <span class="date-txt">选择日期：</span>
                <div class="input-group date form_date" data-date="" data-date-format="yyyy/mm/dd"
                     data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control" size="16" type="text">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
            </div>
            <p class="hint">请选择指标到选股策略中</p>
            <button class="btn btn-primary btn-factor" id="screen-submit"><span class="txt">开始选股</span></button>
            <div class="result">
                <span class="result">根据当天闭市后数据，符合条件<span class="stock-category"></span><strong>0</strong>只&nbsp;</span>
                <span class="result-timing"></span>
                <span class="export glyphicon glyphicon-export">导出</span>
                <div id="screen-grid" class="grid-view-tabular"></div>
            </div>
            <!--<div id="calendar-test-cnt">-->
            <!--<div id="calendar-start">-->
            <!--</div>-->
            <!--<div id="calendar-end">-->
            <!--</div>-->
            <!--<div id="calendar-shortcut">-->
            <!--</div>-->
            <!--</div>-->
        </div>
        <div id="backtest-cnt">
            <div class="config">
                <span class="date-txt">回测时间：</span>
                <div id="time-box">
                    <span class="glyphicon glyphicon-backward"></span>
                    <span class="glyphicon glyphicon-arrow-left"></span>
                    <div class="input-group date form_date_start" data-date="" data-date-format="yyyy/mm/dd"
                         data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                        <input class="form-control" size="16" type="text">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                    </div>
                    <span class="date-txt between"> - </span>
                    <div class="input-group date form_date_end" data-date="" data-date-format="yyyy/mm/dd"
                         data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                        <input class="form-control" size="16" type="text">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                    </div>
                    <span class="glyphicon glyphicon-arrow-right"></span>
                    <span class="glyphicon glyphicon-forward"></span>
                </div>
                <div class="stock-refer setting-item-cnt"><span>收益基准：</span><select class="form-control">
                </select></div>
                <div class="stock-trade-cost setting-item-cnt"><span>交易费用（双边）：</span><select class="form-control">
                    <option value="0">零</option>
                    <option value="1">千分之一</option>
                    <option value="2" selected="selected">千分之二</option>
                    <option value="3">千分之三</option>
                    <option value="5">千分之五</option>
                    <option value="8">千分之八</option>
                    <option value="10">千分之十</option>
                </select></div>
            </div>
            <p class="hint"></p>
            <div class="submit">
                <button class="btn btn-primary btn-factor" id="backtest-submit"><span class="txt">开始回测</span></button><p class="explain">计算您的选股策略在历史上的收益</p><span class="glyphicon glyphicon-info-sign"></span>
            </div>
            <div class="result">
                <ul class="nav nav-pills result-part1">
                    <li role="presentation" class="profit-stat active"><a>收益统计</a></li>
                    <li role="presentation" class="trade-stat"><a>交易统计</a></li>
                    <h5 class="clear"></h5>
                    <div class="profit-stat-grid">
                        <span class="export glyphicon glyphicon-export">导出</span>
                        <div id="backtest-summary-grid" class="grid-view-tabular"></div>
                    </div>
                    <div class="trade-stat-grid hide">
                        <div id="backtest-tradeStat-grid">
                            <div class="col num1">
                                <div class="annual_turnover_rate"><span class="sub-title">年换手率:</span><span class="sub-detail"></span></div>
                                <div class="gap"></div>
                                <div class="avg_holding_days"><span class="sub-title">平均持有天数:</span><span class="sub-detail"></span></div>
                                <div class="gap"></div>
                                <div class="avg_holding_count"><span class="sub-title">平均持仓股票数:</span><span class="sub-detail"></span></div>
                            </div>
                            <div class="col num2">
                                <div class="avg_trade_return"><span class="sub-title">平均交易收益:</span><span class="sub-detail"></span></div>
                                <div class="gap"></div>
                                <div class="avg_positive_return"><span class="sub-title">正收益平均:</span><span class="sub-detail"></span></div>
                                <div class="gap"></div>
                                <div class="avg_negative_return"><span class="sub-title">负收益平均:</span><span class="sub-detail"></span></div>
                            </div>
                            <div class="col num3">
                                <div class="win_ratio"><span class="sub-title">交易赢率:</span><span class="sub-detail"></span></div>
                                <div class="gap"></div>
                                <div class="suspend_ratio"><span class="sub-title">持仓停牌股票比例:</span><span class="sub-detail"></span></div>
                                <div class="gap"></div>
                                <div class="valid_ratio"><span class="sub-title">调仓指令可执行比例:</span><span class="sub-detail"></span><span class="glyphicon glyphicon-info-sign"></span></div>
                            </div>
                        </div>
                    </div>
                </ul>
                <ul class="nav nav-pills result-part2">
                    <li role="presentation" class="profitChart active"><a>收益曲线</a></li>
                    <li role="presentation" class="winRate"><a>收益周期统计</a></li>
                    <li role="presentation" class="profitMonthly"><a>月度收益分布</a></li>
                    <h5 class="clear"></h5>
                    <div class="winRate-chart">
                        <div class="content-cnt winRate">
                            <div id="return-histg-period-cnt">
                                <p></p>
                                <div id="return-histg-period-chart"></div>
                            </div>
                            <div id="return-histg-rela-period-cnt">
                                <p></p>
                                <div id="return-histg-rela-period-chart"></div>
                            </div>
                        </div>
                    </div>
                    <div class="profitChart-chart">
                        <div class="content-cnt charts">
                            <div class="number-relative-cnt">
                                <input type="checkbox">
                                <span class="txt">显示相对收益</span>
                            </div>
                            <div class="timing-check-cnt">
                                <input type="checkbox" checked="checked">
                                <span class="txt">显示择时结果</span>
                                <span class="glyphicon glyphicon-info-sign"></span>
                            </div>
                            <div class="axis-log-cnt">
                                <input type="checkbox">
                                <span class="txt">使用对数轴</span>
                            </div>
                            <div id="backtest-chart"></div>
                            <div id="stat-controls">
                                <span class="date-txt">展示区间</span>
                                <div class="input-group date form_date_start" data-date="" data-date-format="yyyy/mm/dd"
                                     data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                    <input class="form-control" size="16" type="text">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                </div>
                                <span class="date-txt between">-</span>
                                <div class="input-group date form_date_end" data-date="" data-date-format="yyyy/mm/dd"
                                     data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                    <input class="form-control" size="16" type="text">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                </div>
                                <div class="btn-cnt">
                                    <span class="glyphicon glyphicon-backward"></span>
                                    <span class="glyphicon glyphicon-forward"></span>
                                    <span class="month">1个月</span>
                                    <span class="threemonth">3个月</span>
                                    <span class="sixmonth">6个月</span>
                                    <span class="year">1年</span>
                                    <span class="twoyear">2年</span>
                                    <span class="allrange">全部</span>
                                </div>
                                <span class="current"></span>
                            </div>
                        </div>
                    </div>
                    <div class="profitMonthly-chart">
                        <div id="backtest-month-chart"></div>
                    </div>
                </ul>
                <ul class="nav nav-pills result-part3">
                    <li role="presentation" class="detail active"><a>历史持仓详情</a></li>
                    <li role="presentation" class="trade-suggestion"><a>最新调仓指令</a></li>
                    <li role="presentation" class="trade-history"><a>最近卖出股票</a></li>
                    <h5 class="clear"></h5>
                    <div class="detail-holding-grid">
                        <span class="export glyphicon glyphicon-export">导出</span>
                        <div id="backtest-detail-grid" class="grid-view-tabular"></div>
                    </div>
                    <div class="trade-suggestion-grid hide">
                        <span class="trade-date-msg trade-date"></span>
                        <div class="content-cnt suggestion">
                            <span class="title"></span>
                            <div class="recommand-message"></div>
                            <div id="backtest-recommand-grid" class="grid-view-tabular"></div>
                            <div class="backup-tip">* 如果因为停牌等原因不能买入标记为“买入”的<span class="stock-category"></span>， 可依次买入备选<span class="stock-category"></span>。</div>
                        </div>
                    </div>
                    <div class="trade-history-grid hide">
                        <div class="content-cnt trade-history">
                            <div id="backtest-trade-hist-grid" class="grid-view-tabular"></div>
                        </div>
                    </div>
                </ul>
            </div>
        </div>
        <div id="ranktest-cnt">
            <div class="user-low-cnt">
                <p class="user-low">排名分析展示所有股票按排名分段的收益情况， 提供择股策略全局有效性分析。</p>
                <p class="user-low">此功能仅对高级会员/VIP会员开放。新用户在个人主页绑定微信号，即可免费获得一个月高级会员。付费升级，请到<a href="/membership/vip" target="_blank">VIP页面</a>。</p>
            </div>
            <div class="config">
                <span class="date-txt">回测时间：</span>
                <div class="stock-period setting-item-cnt"><span>调仓周期（交易日）：</span>
                    <input type="text" class="number text" value="20"/></div>
                <div class="stock-seg-num setting-item-cnt"><span>分段数：</span><select class="form-control">
                    <option value="5">5</option>
                    <option value="10" selected="selected">10</option>
                    <option value="20">20</option>
                    <option value="100">100</option>
                </select></div>
            </div>
            <p class="hint"></p>
            <div class="submit">
                <button class="btn btn-primary btn-factor" id="ranktest-submit"><span class="txt">开始分析</span></button><p class="explain">分析排名条件是否有效</p><span class="glyphicon glyphicon-info-sign"></span>
            </div>
            <div class="result">
                <div class="result-part1">
                    <span class="title">年化收益对比</span>
                    <div id="ranktest-yearly-chart"></div>
                </div>
                <div class="result-part2">
                    <span class="title">累计收益曲线</span>
                    <div class="axis-log-cnt">
                        <input type="checkbox">
                        <span class="txt">使用对数轴</span>
                    </div>
                    <div class="number-relative-cnt">
                        <input type="checkbox">
                        <span class="txt">显示相对收益</span>
                        <!--<span class="glyphicon glyphicon-info-sign"></span>-->
                    </div>
                    <div id="ranktest-daily-chart"></div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<div id="btmCnt">
</div>
<div class="modal" id="save-as-dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">保存当前策略</h4>
            </div>
            <div class="modal-body">
                <p>策略名称:</p>
                <input type="text" class="form-control name" placeholder="取个好名字（至少4个字）" aria-describedby="basic-addon1">
                <p class="error"></p>
                <p>策略说明:</p>
                <textarea type="text" class="form-control desc" placeholder="说说你的策略思路（选填）"></textarea>
                <p class="error"></p>
                <!--<input type="radio" checked="checked" class="share"><span>分享结果及公式</span>-->
                <!--<input type="radio" class="share"><span>仅分享结果</span>-->
                <!--<input type="radio" class="share"><span>私有</span>-->
                <label class="radio-inline public"><input type="radio" name="shareOptions" class="share">分享定义</label>
                <label class="radio-inline"><input type="radio" name="shareOptions" class="share">分享调仓</label>
                <label class="radio-inline"><input type="radio" name="shareOptions" class="share" checked="checked">分享收益</label>
                <label class="radio-inline"><input type="radio" name="shareOptions" class="share">私有</label>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default save-as-mode" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary save save-as-mode">保存</button>
                <button type="button" class="btn btn-default modify-mode" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary save modify-mode">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="modal" id="save-pool-dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">保存股票池</h4>
            </div>
            <div class="modal-body">
                <p>股票池名称:</p>
                <input type="text" class="form-control name" placeholder="取个好名字（至少4个字）" aria-describedby="basic-addon1">
                <p class="error"></p>
                <p>股票池说明:</p>
                <textarea type="text" class="form-control desc" placeholder="股票池说明（选填）"></textarea>
                <p class="error"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary save ">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="modal" id="timing-indicator-dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">择时条件设定</h4>
            </div>
            <div class="modal-body">
                <p>择时条件:</p>
                <p class="ma indicator">以移动平均线(MA)的金叉死叉分别作为牛市和熊市的转换条件。设立择时条件将影响策略回测结果。</p>
                <p class="macd indicator">以指数平滑异同移动平均线(MACD)的金叉死叉分别作为牛市和熊市的转换条件。设立择时条件将影响策略回测结果。</p>
                <p class="dma indicator">以平均线差指标(DMA)的金叉死叉分别作为牛市和熊市的转换条件。设立择时条件将影响策略回测结果。</p>
                <p class="trix indicator">以三重指数平滑移动平均指标(TRIX)的金叉死叉分别作为牛市和熊市的转换条件。设立择时条件将影响策略回测结果。</p>
                <p class="mavol indicator">以指数成交量移动平均线(MAVOL)的金叉死叉分别作为牛市和熊市的转换条件。设立择时条件将影响策略回测结果。</p>
                <p class="bias indicator">类似于MA择时，但是附加了乖离率的抄底和逃顶。 当短线相对长线的乖离率小于下限时转换为买入（即牛市）；当短线相对长线乖离率大于上限时转换为卖出（即熊市）</p>
                <p class="pe indicator">以市场的加权平均市盈率(PE)的下限和上限作为买入卖出转换条件。 当PE小于下限时转换为买入（即牛市）；当PE大于上限时转换为卖出（即熊市）。</p>
                <p class="pb indicator">以市场的加权平均市净率(PB)的下限和上限作为买入卖出转换条件。 当PB小于下限时转换为买入（即牛市）；当PB大于上限时转换为卖出（即熊市）。</p>
                <p class="pe2 indicator">以市场的调和平均市盈率(PE)的下限和上限作为买入卖出转换条件。 当PE小于下限时转换为买入（即牛市）；当PE大于上限时转换为卖出（即熊市）。</p>
                <p class="pb2 indicator">以市场的调和平均市净率(PB)的下限和上限作为买入卖出转换条件。 当PB小于下限时转换为买入（即牛市）；当PB大于上限时转换为卖出（即熊市）。</p>
                <p>择时参数:</p>
                <div class="index-box"><span class="leftName">指数选择：</span><select class="form-control">
                </select><span class="pool"><input type="checkbox" class="use-pool">使用股票池</span></div>
                <div class="range-box"><span class="leftName">板块选择：</span><select class="form-control">
                </select></div>
                <div class="clear"></div>
                <div class="period-box"><span class="leftName">周期选择：</span><select class="form-control">
                    <option value="day">日</option>
                    <option value="week">周</option>
                    <option value="month">月</option>
                </select></div>
                <div class="clear"></div>
                <div class="ma para-box"><div class="short"><span class="leftName">MA短线：</span><input type="text" class="short text" value="5"/><span class="unit"></span></div><div class="long"><span class="leftName">MA长线：</span><input type="text" class="long text" value="60"/><span class="unit"></span></div><div class="zero"><input type="checkbox"><span class="txt">金叉必须短线上行， 死叉必须短线下行</span></div></div>
                <div class="macd para-box"><div class="short"><span class="leftName">DIF短线：</span><input type="text" class="short text" value="12"/><span class="unit"></span></div><div class="long"><span class="leftName">DIF长线：</span><input type="text" class="long text" value="26"/><span class="unit"></span></div><div class="long"><span class="leftName">DEA：</span><input type="text" class="m text" value="9"/><span class="unit"></span></div><div class="zero"><input type="checkbox"><span class="txt">金叉只出现在0轴上方，死叉只出现在0轴下方</span></div></div>
                <div class="dma para-box"><div class="short"><span class="leftName">MA短线：</span><input type="text" class="short text" value="5"/><span class="unit"></span></div><div class="long"><span class="leftName">MA长线：</span><input type="text" class="long text" value="60"/><span class="unit"></span></div><div class="long"><span class="leftName">AMA：</span><input type="text" class="m text" value="20"/><span class="unit"></span></div></div>
                <div class="trix para-box"><div class="short"><span class="leftName">TRIX：</span><input type="text" class="n text" value="120"/><span class="unit"></span></div><div class="long"><span class="leftName">MATRIX ：</span><input type="text" class="m text" value="5"/><span class="unit"></span></div></div>
                <div class="mavol para-box"><div class="short"><span class="leftName">MA短线：</span><input type="text" class="short text" value="5"/><span class="unit"></span></div><div class="long"><span class="leftName">MA长线：</span><input type="text" class="long text" value="60"/><span class="unit"></span></div><div class="zero"><input type="checkbox"><span class="txt">金叉必须短线上行， 死叉必须短线下行</span></div></div>
                <div class="bias para-box"><div class="short"><span class="leftName">MA短线：</span><input type="text" class="short text" value="1"/><span class="unit"></span></div><div class="long"><span class="leftName">MA长线：</span><input type="text" class="long text" value="20"/><span class="unit"></span></div><div class="low"><span class="leftName">下限：</span><input type="text" class="low text" value="-10"/><span>%</span></div><div class="high"><span class="leftName">上限：</span><input type="text" class="high text" value="10"/><span>%</span></div></div>
                <div class="pe para-box"><div class="low"><span class="leftName">下限：</span><input type="text" class="low text" value="15"/></div><div class="high"><span class="leftName">上限：</span><input type="text" class="high text" value="30"/></div></div>
                <div class="pb para-box"><div class="low"><span class="leftName">下限：</span><input type="text" class="low text" value="2"/></div><div class="high"><span class="leftName">上限：</span><input type="text" class="high text" value="4"/></div></div>
                <div class="pe2 para-box"><div class="low"><span class="leftName">下限：</span><input type="text" class="low text" value="40"/></div><div class="high"><span class="leftName">上限：</span><input type="text" class="high text" value="60"/></div></div>
                <div class="pb2 para-box"><div class="low"><span class="leftName">下限：</span><input type="text" class="low text" value="2"/></div><div class="high"><span class="leftName">上限：</span><input type="text" class="high text" value="4"/></div></div>
                <p class="error"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary save">确定</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="modal" id="derived-editor">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">管理自定义指标</h4>
            </div>
            <div class="modal-body">
                <div class="left-cnt">
                    <div class="add-cnt">
                        <span class="glyphicon glyphicon-plus"></span>
                        <span class="add-txt">添加新指标</span>
                    </div>
                    <span class="list-title">编辑已保存指标:</span>
                    <span class="clear"></span>
                    <div class="measure-list">
                    </div>
                </div>
                <div class="right-cnt">
                    <div class="edit-ctl"><span>指标名称：</span><input type="text" class="name"/></div>
                    <div class="edit-ctl"><span>指标公式：</span><textarea type="text" class="expr"></textarea></div>
                    <p class="edit-ctl detail-explain"><a href="/forum/post?pid=p.3.32886171385419" target="_blank">点击查看自定义指标示例和函数列表</a></p>
                    <div class="edit-ctl"><span>单位及精度：</span>
                        <select class="format-prefix form-control">
                            <option value="f" selected="selected">无</option>
                            <option value="%">百分数</option>
                            <option value="w">(万)</option>
                            <option value="y">(亿)</option>
                        </select>
                        <!--<span>精度：</span>-->
                        <select class="format-precision form-control">
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2" selected="selected">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>
                    </div>
                    <div class="edit-ctl"><span>说明（可选）：</span><textarea type="text" class="desc"/></textarea></div>
                    <p class="warn">请填入有效的指标名称和指标公式</p>
                    <p class="initial-msg">请从左边选择新建指标或编辑已保存指标</p>
                    <button type="button" class="btn btn-primary save edit-ctl">添加</button>
                    <button type="button" class="btn btn-primary reset edit-ctl">取消</button>
                    <button type="button" class="btn btn-default closee" data-dismiss="modal">关闭</button>
                </div>
                <!--<div ><span>指标选择：</span><select class="form-control items"><option value="new">新建</option></select></div>-->
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="modal" id="asset-editor">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加策略/ETF</h4>
                <span class="txt">(高级会员可以添加两个2个，VIP可添加5个)</span>
            </div>
            <div class="modal-body">
                <div class="left-cnt">
                    <div class="created-list">
                        <span class="title">我的策略</span>
                        <div class="content"></div>
                    </div>
                    <div class="mall-list">
                        <span class="title">商城策略</span>
                        <div class="content"></div>
                    </div>
                    <div class="etf-list">
                        <span class="title">ETF</span>
                        <input type="text" class="stock-select-input" placeholder="输入代码或拼音简写">
                        <span class="glyphicon glyphicon-arrow-right disable"></span>
                        <br/>
                        <span class="warning">请选择ETF</span>
                        <ul id="stock-list"></ul>
                    </div>
                </div>
                <div class="right-cnt">
                    <!--<span>策略池名称：</span><input type="text" class="name" value="test"/>-->
                    <div class="selected-list">
                        <table>
                            <thead>
                            <tr><th>序号</th><th>名称</th><th>类型</th><th>仓位权重</th><th>起始日期</th><th>操作</th></tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                    <div class="result">
                        <span class="calc-sim">计算收益曲线相关度</span>
                        <span class="txt">(相关度越小，抗风险性越好)</span>
                        <div class="content">
                            <table>
                                <thead>
                                <tr></tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <button type="button" class="btn btn-primary save edit-ctl">保存</button>
                    <button type="button" class="btn btn-primary reset edit-ctl">取消</button>
                    <span class="err warning"></span>
                </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="modal" id="backtest-stock-detail-cnt">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="title"></h4>
            </div>
            <div class="modal-body">
                <div id="backtest-stock-detail-grid" class="grid-view-tabular"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div id="alertWindow">
    <div>错误消息</div>
    <div class="msg"></div>
    <div class="msg">请前往我们的<a target="_blank" href="/forum?tag=usage">论坛</a>反馈您的任何宝贵意见，谢谢</div>
    <div class="clear"></div>
    <div class="btn">OK</div>
</div>
<div id="derived-warn">
    <div class="delete-msg">指标删除后，用到此指标的筛选及排名条件都将同时被删除。是否确认删除指标?</div>
    <div class="add-msg">您的指标已成功添加</div>
    <div class="save-msg">您的指标已成功保存</div>
    <button type="button" class="btn btn-default cancel">取消</button>
    <button type="button" class="btn btn-default delete" >确定</button>
</div>
<div id="strategy-save-warn">
    <div class="delete-msg">修改策略定义将使当前策略实盘收益清零。可点击另存为创建一个新策略。</div>
    <button type="button" class="btn btn-default cancel">取消</button>
    <button type="button" class="btn btn-default saveas">另存为</button>
    <button type="button" class="btn btn-default save">保存修改</button>
</div>
<div id="fadeout-tips">
    <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
    <p>已成功</p>
</div>
<div id="meas-detail-cnt">
    <div class="title"></div>
    <div class="chart"></div>
</div>
<div id="strategy-desc-cnt">
    <div class="visibility">
        <span class="glyphicon glyphicon-globe public"></span>
        <span class="glyphicon glyphicon-lock private"></span>
        <span class="public all">分享定义</span>
        <span class="public part">分享调仓</span>
        <span class="public part">分享收益</span>
        <span class="private">私有</span>
    </div>
    <div class="desc">
        <span class="content"></span>
    </div>
</div>
<div id="stock-history-cnt">
    <div class="title"></div><span class="glyphicon glyphicon glyphicon-remove"></span>
    <div class="measure-select"><span>指标选择：</span><select class="form-control">
    </select></div>
    <div class="chart" id="stock-history-chart"></div>
</div>
<div id="generalTooltip"></div>
<span id="txtMeasure"></span>
<div id="attrFilterEditor">
    <div id="attFilterList"></div>
    <div id="attrFilterSubmit" class="filterOKBtn">确定</div>
</div>
<div id="popupMask"></div>
<div id="loadingMask"><img src="/static/images/loading1.gif"/></div>
<div id="loadingMsg"><img src="/static/images/loading1.gif"/><p>正在为您计算，请耐心等待...</p></div>
<script type="text/javascript" charset="utf-8" src="/static/libs/jquery-1.11.1_125bece.js"></script>
<script type="text/javascript" charset="utf-8" src="/static/src/templates/titleFooter_25ca43d.js"></script>
<script type="text/javascript" charset="utf-8" src="/static/libs/jquery-ui/jquery-ui_de2d8d7.js"></script>
<script type="text/javascript" charset="utf-8" src="/static/libs/jquery.actual_e463049.js"></script>
<script type="text/javascript" charset="utf-8" src="/static/libs/libFile_6f0d03d.js"></script>
<script type="text/javascript" charset="utf-8" src="/static/src/bootstrapLib_8124488.js"></script>
<script type="text/javascript" charset="utf-8" src="/static/src/document_0deda58.js"></script>
<script type="text/javascript" charset="utf-8" src="/static/src/commons_38e51c3.js"></script>
<script type="text/javascript" charset="utf-8" src="/static/src/stockLib_7e14c38.js"></script>
<script type="text/javascript" charset="utf-8" src="/static/src/stockPage/stockScreen_e150bc9.js"></script>
<script type="text/javascript" charset="utf-8" src="/static/src/templates/loginCtrl_fd2b819.js"></script>
<link type="text/css" rel="stylesheet" href="/static/libs/nvd3/src/nv.d3_7e505c8.css">
<link type="text/css" rel="stylesheet" href="/static/src/css/grid_9c982c6.css">
<!--<script src="/static/libs/nvd3/src/models/scatterChart.js"></script>-->
<script type="text/javascript" charset="utf-8" src="/static/libs/nvd3/src/models/lineWithFocusChart_209ac94.js"></script>
<!--<script src="/static/libs/nvd3/src/models/multiBarHorizontalChart.js"></script>-->
<!--<script src="/static/libs/nvd3/src/models/linePlusBarWithFocusChart.js"></script>-->
<!--<script src="/static/libs/nvd3/src/models/multiChart.js"></script>-->
<script>
    scrat.initial_data = '{&quot;username&quot;: null, &quot;account&quot;: null, &quot;level&quot;: null}';
</script>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-66340962-1', 'auto');
    ga('send', 'pageview');
</script>
</body>
</html>

