<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>LOF Index</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet">


    <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>

    <link href="bootstrap/css/navbar.css" rel="stylesheet">

    <![endif]-->

    <script language="JavaScript">
        $('#myButton').on('click', function () {
            var $btn = $(this).button('loading')
            // business logic...
            $btn.button('reset')
        })
    </script>



    <script language="text/javascript">

        <%--表格操作脚本--%>
        $(document).ready(function() {
            $("#zhibiao1").bind("click", function(){
                //alert($("input:checked"));
                $("#shaixuantiaojian").append("<tr><td>…</td><td>…</td><td>…</td><td>…</td><td><button type="button" class="glyphicon glyphicon-remove"></button>/td> </tr>");
                alert(document.getElementById('sd').value);
            });

            $("#btn0").click(function () {
                alert("aaa");
                $("#zeshitiaojian").remove();
            });
        });
    </script>
</head>

<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">quant+</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="index.jsp">首页</a></li>
                <!--<li><a href="#">Link</a></li>-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">策略研究 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="topStrategy.jsp">优选策略</a></li>
                        <li class="active"><a href="strategy.jsp">我的策略</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">虚拟交易 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="community.jsp">社区</a></li>
                <li><a href="login.jsp">登陆</a></li>
                <li><a href="register.jsp">注册</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>


<div class="panel panel-default" style="margin: 0.5%">
    <div class="panel-heading">
        <h3 class="panel-title">股票策略研究</h3>
    </div>
    <div class="panel-body">
        <ul class="nav nav-tabs" role="tablist">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#settings" role="tab" data-toggle="tab">择股设置</a></li>
                <li role="presentation"><a href="#time" role="tab" data-toggle="tab">大盘择时</a></li>
                <li role="presentation"><a href="#model" role="tab" data-toggle="tab">交易模型</a></li>
            </ul>

            <!-- Tab panes -->
            <!--择股设置-->
            <div class="tab-content" >
                <div role="tabpanel" class="tab-pane active" id="settings">
                    <div class="row">
                        <!--选股指标-->
                        <div class="col-md-6">
                            <div class="panel-body">
                                <ul class="nav nav-tabs" role="tablist">
                                    <h5>选股指标</h5>
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#index1" role="tab" data-toggle="tab">行情</a></li>
                                        <li role="presentation"><a href="#index2" role="tab" data-toggle="tab">基本面</a></li>
                                        <li role="presentation"><a href="#index3" role="tab" data-toggle="tab">增长</a></li>
                                        <li role="presentation"><a href="#index4" role="tab" data-toggle="tab">情绪</a></li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <!--行情，基本面，增长，情绪四个选股指标-->

                                        <!--这边的css最好要写一下-->
                                        <!--行情-->
                                        <div role="tabpanel" class="tab-pane active" id="index1">
                                            <button type="button" class="btn btn-default" id="zhibiao1">指标1</button>
                                            <button type="button" class="btn btn-default" onclick="add()">指标2</button>
                                        </div>
                                        <!--基本面-->
                                        <div role="tabpanel" class="tab-pane" id="index2">
                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                        </div>
                                        <!--增长-->
                                        <div role="tabpanel" class="tab-pane" id="index3">
                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                        </div>
                                        <!--情绪-->
                                        <div role="tabpanel" class="tab-pane" id="index4">
                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                        </div>
                                    </div>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel-body">
                                <ul class="nav nav-tabs" role="tablist">
                                    <h5>选股条件</h5>
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#indexA" role="tab" data-toggle="tab">筛选条件</a></li>
                                        <li role="presentation"><a href="#indexB" role="tab" data-toggle="tab">排名条件</a></li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <!筛选条件，排名条件两个选股条件-->
                                        <div role="tabpanel" class="tab-pane active" id="indexA">
                                            <table class="table table-striped" id="shaixuantiaojian">
                                                <tr>
                                                    <th>指标</th>
                                                    <th>比较符</th>
                                                    <th>范围</th>
                                                    <th>值</th>
                                                    <th>操作</th>
                                                </tr>
                                                <tr>
                                                    <td>测试</td>
                                                    <td>测试</td>
                                                    <td>测试</td>
                                                    <td>测试</td>
                                                    <td>
                                                        测试
                                                        <%--<button type="button" class="glyphicon glyphicon-remove"  id="btn" onclick="del(button)"></button>--%>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="indexB">
                                            <table class="table table-striped">
                                                <tr>
                                                    <th>指标</th>
                                                    <th>次序</th>
                                                    <th>范围</th>
                                                    <th>权重</th>
                                                    <th>操作</th>
                                                </tr>
                                                <tr>
                                                    <td>…</td>
                                                    <td>…</td>
                                                    <td>…</td>
                                                    <td>…</td>
                                                    <td>
                                                        <button type="button" class="glyphicon glyphicon-remove"></button>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-default">保存</button>
                </div>
                <!--大盘择时-->
                <div role="tabpanel" class="tab-pane" id="time">
                    <div role="tabpanel" class="tab-pane active" id="settings2">
                        <!--择时参数-->
                        <h5>择时参数</h5>
                        <div class="row">
                            <div class="col-md-3">
                                同时满足<select class="form-control" style="">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="-1" selected="selected">全部</option>
                                </select>个择时条件由熊变牛
                            </div>
                            <div class="col-md-3">
                                同时满足<select class="form-control" style="">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="-1" selected="selected">全部</option>
                            </select>个择时条件由牛变熊
                            </div>
                            <div class="col-md-3">
                                熊市仓位<select class="form-control" style="">
                                <option value="0" selected="selected">空仓</option>
                                <option value="0.3">30%</option>
                                <option value="0.5">50%</option>
                                <option value="0.7">70%</option>
                            </select>
                            </div>
                            <div class="col-md-3"></div>
                        </div>

                        <div class="row">
                            <!--择时指标-->
                            <div class="col-md-6">
                                <div class="panel-body">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <h5>择时指标</h5>
                                        <div role="tabpanel" class="tab-pane active" id="index00">
                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right" onclick="add()">Tooltip on right</button>

                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>

                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                            <!--择时条件-->
                            <div class="col-md-6">
                                <div class="panel-body">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <table class="table table-striped" id="zeshitiaojian">
                                            <tr>
                                                <th>择时条件</th>
                                                <th>编辑</th>
                                                <th>操作</th>
                                            </tr>
                                            <tr id="line1">
                                                <td>…</td>
                                                <td>
                                                    <button type="button" class="glyphicon glyphicon-edit"></button>
                                                </td>
                                                <td>
                                                    <button type="button" class="glyphicon glyphicon-remove" id="btn0"></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>…</td>
                                                <td>
                                                    <button type="button" class="glyphicon glyphicon-edit"></button>
                                                </td>
                                                <td>
                                                    <button type="button" class="glyphicon glyphicon-remove" id="btn1"></button>
                                                </td>
                                            </tr>
                                        </table>
                                    </ul>
                                </div>
                            </div>
                        </div>
                     </div>
                    <button type="button" class="btn btn-default">保存</button>
                </div>
                <!--交易模型-->
                <div role="tabpanel" class="tab-pane" id="model">
                    <form class="form-horizontal" role="form">
                        <%--<div class="form-group">--%>
                            <%--<label for="inlineRadio1" class="col-sm-2 control-label">交易模型:</label>--%>
                            <%--<label class="radio-inline">--%>
                                <%--<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 模型I--%>
                            <%--</label>--%>
                            <%--<label class="radio-inline">--%>
                                <%--<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 模型II--%>
                            <%--</label>--%>
                        <%--</div>--%>
                        <div class="form-group">
                            <label for="days" class="col-sm-2 control-label">调仓周期(交易日):</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="days">
                            </div>
                        </div>
                        <div class="form-group">
                            <%--<p class="form-control-static">收益计算价格:</p>--%>
                            <label for="get" class="col-sm-2 control-label">收益计算价格:</label>
                            <select class="form-control" id="get">
                                <option value="open">开盘价</option>
                                <option value="close" selected="selected">收盘价</option>
                                <option value="average">日均成交价</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="empty" class="col-sm-2 control-label">空仓资金配置:</label>
                            <select class="form-control" id="empty">
                                <option>无</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="quantity" class="col-sm-2 control-label">股票持仓(只):</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="quantity">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="amount" class="col-sm-2 control-label">股票备选买入个数(只):</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="amount">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="max" class="col-sm-2 control-label">个股最大买入仓位(%):</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="max">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default">新建</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </ul>
    </div>
</div>

<div class="panel panel-default" style="margin: 0.5%">
    <div class="panel-heading">
        <h3 class="panel-title">策略回测</h3>
    </div>
    <div class="panel-body">
        <!--时间组件还没完成-->
        <div class="row">
            <div class="col-md-6">
                回测时间
                <div class="input-append date" id="datetimepicker" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
                    <input size="16" type="text" value="12-02-2012" readonly>
                    <span class="add-on"><i class="icon-th"></i></span>
                </div>
            </div>
            <div class="col-md-3">
                <label for="ind" class="col-sm-2 control-label">收益基准:</label>
                <select class="form-control" id="ind">
                    <option>沪深300</option>
                    <option>中证500</option>
                    <option>中证全指</option>
                    <option>中证流通</option>
                    <option>创业板指数</option>
                    <option>中小板指数</option>
                    <option>上证指数</option>
                </select>
            </div>
            <div class="col-md-3">
                <label for="fare" class="col-sm-2 control-label">收益基准:</label>
                <select class="form-control" id="fare">
                    <option value="0">零</option>
                    <option value="1">千分之一</option>
                    <option value="2" selected>千分之二</option>
                    <option value="3">千分之三</option>
                    <option value="5">千分之五</option>
                    <option value="8">千分之八</option>
                    <option value="10">千分之十</option>
                </select>
            </div>
        </div>

        <%--<button type="button" id="myButton" data-loading-text="回测..." class="btn btn-primary" autocomplete="off">--%>
            <%--开始回测--%>
        <%--</button>--%>
        <button type="button" class="btn btn-default">开始回测</button>
    </div>
</div>

<%--<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>--%>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>