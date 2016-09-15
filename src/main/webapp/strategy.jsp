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
    <link href="bootstrap/css/navbar.css" rel="stylesheet">

    <script type="text/javascript">

        function addFilter(btn){
            $("#selectStock").
            append("<tr id="+btn.value+">"+
                    "<td id='指标'>"+btn.value+"</td>"+
                    "<td id='比较符'>"+
                    '<select>' +
                    '<option value=">">></option>' +
                    '<option value="<"><</option>' +
                    '<option value="=">=</option>' +
                    '</select>' +"</td>"+
                    "<td id='范围'>"+'0.0'+"</td>"+
                    "<td id='值'>"+'<input>'+"</td>"+
                    "<td><button id="+btn.value+" type=\"button\" class=\"glyphicon glyphicon-remove btn btn-default btn-danger btn-xs\" onclick='delFilter(this)'></button>"+
                    "</tr>");
        }

        function delFilter(button){
            var name=button.id;
            $('#'+name).remove()

        }

        function saveStrategy() {
            var table1 = document.getElementById("selectStock");
            var table2 = document.getElementById("selectStock");
            var selectStockList = new Array();
            //从1开始，不要表头
            for(var i=1,rows=table1.rows.length; i<rows; i++){
                selectStockList.push(table1.rows[i].cells[0].innerHTML+","
                        +table1.rows[i].cells[1].innerHTML+","
                        +table1.rows[i].cells[2].innerHTML+","
                        +table1.rows[i].cells[3].innerHTML+","
                )

            }
            var selectTimeList = new Array();
            //从1开始，不要表头
            for(var i=1,rows=table2.rows.length; i<rows; i++){
                selectTimeList.push(
                        table2.rows[i].cells[0].innerHTML
                )
            }
            var bear_to_bull = document.getElementById("bear_to_bull").value;
            var bull_to_bear = document.getElementById("bull_to_bear").value;
            var bear_position = document.getElementById("bear_position").value;
            var selectTimePara=new Array();
            selectTimePara.push(bear_to_bull);
            selectTimePara.push(bull_to_bear);
            selectTimePara.push(bear_position);

            $.ajax({
                type : 'POST',
                url : 'newStrategy',
                data:{
                    "selectStock":selectStockList,
                    "selectTime":selectTimeList,
                    "selectTimePara":selectTimePara
                },
                traditional:true,
                success : function(response) {
                    //请求成功
                    alert("新的策略"+response.a);
                    alert("新的策略"+response.b);
                    alert("新的策略"+response.c);

                },
                error : function(msg) {
                    alert("error"+msg);
                }
            });


        }

    </script>
    <script type="text/javascript">
        function addFilter2(btn){
            $("#selectTime").
            append("<tr id="+btn.value+">"+
                    "<td id='指标'>"+btn.value+"</td>"+
                    "<td><button id="+btn.value+" type=\"button\" class=\"glyphicon glyphicon-edit btn btn-default btn-danger btn-xs\" data-toggle=\"modal\" data-target=\"#myModal\" onclick='lauchModel()'></button></td>"+
                    "<td><button id="+btn.value+" type=\"button\" class=\"glyphicon glyphicon-remove btn btn-default btn-danger btn-xs\" onclick='delFilter2(this)'></button></td>"+
                    "</tr>");
        }

        function lauchModel(){
//            alert("SUCCESS!");
//            $('#myModal').modal(options)
        }

        function delFilter2(button){
            var name=button.id;
            $('#'+name).remove()

        }
    </script>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Small modal -->
    <%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>--%>

    <%--<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">--%>
        <%--<div class="modal-dialog modal-sm">--%>
            <%--<div class="modal-content">--%>
                <%--...--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
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
                        <li class="active"><a href="strategy.jsp">新建策略</a></li>
                        <li><a href="myStrategy.jsp">我的策略</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">虚拟交易 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="SimulatedTrading.jsp">虚拟交易1</a></li>
                        <li><a href="#">虚拟交易2</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="community.jsp">社区</a></li>
                <li><a href="login.jsp">登录</a></li>
                <li><a href="register.jsp">注册</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="panel panel-default" style="margin: 0.5%">
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-10">
                <h3 class="panel-title">股票策略研究</h3>
            </div>
            <div class="col-md-1">
                <button type="button" class="btn btn-default btn-success">保存</button>
            </div>
            <div class="col-md-1">
                <button type="submit" class="btn btn-default btn-success">新建</button>
            </div>
        </div>
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
                                    <div role="tabpanel" class="tab-pane active" id="index00">
                                        <input value='MACD' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter(this)">
                                        <input value='行业' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter(this)">
                                        <input value='净资产' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter(this)">
                                    </div>
                                    <%--<ul class="nav nav-tabs" role="tablist">--%>
                                        <%--<li role="presentation" class="active"><a href="#index1" role="tab" data-toggle="tab">行情</a></li>--%>
                                        <%--<li role="presentation"><a href="#index2" role="tab" data-toggle="tab">基本面</a></li>--%>
                                        <%--<li role="presentation"><a href="#index3" role="tab" data-toggle="tab">增长</a></li>--%>
                                        <%--<li role="presentation"><a href="#index4" role="tab" data-toggle="tab">情绪</a></li>--%>
                                    <%--</ul>--%>

                                    <%--<!-- Tab panes -->--%>
                                    <%--<div class="tab-content">--%>
                                        <%--<!--行情，基本面，增长，情绪四个选股指标-->--%>
                                        <%--<!--value代表项目的名称  -->--%>
                                        <%--<!--这边的css最好要写一下-->--%>
                                        <%--<!--行情-->--%>
                                        <%--<div role="tabpanel" class="tab-pane active" id="index1">--%>
                                            <%--<input value='MACD' type="button" class="btn btn-default" onclick="addFilter(this)">--%>
                                            <%--<input value='流通市值' type="button" class="btn btn-default" onclick="addFilter(this)">--%>
                                        <%--</div>--%>
                                        <%--<!--基本面-->--%>
                                        <%--<div role="tabpanel" class="tab-pane" id="index2">--%>
                                            <%--<input value='基本面1' type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right" onclick="addFilter(this)">--%>
                                            <%--<input value='基本面2' type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right" onclick="addFilter(this)">--%>
                                            <%--<input value='基本面3' type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right"  onclick="addFilter(this)">--%>
                                            <%--<input value='基本面4' type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right" onclick="addFilter(this)">--%>
                                            <%--<input value='基本面5' type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right" onclick="addFilter(this)">--%>
                                        <%--</div>--%>
                                        <%--<!--增长-->--%>
                                        <%--<div role="tabpanel" class="tab-pane" id="index3">--%>
                                            <%--<input value='行情1'  type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right" onclick="addFilter(this)">--%>
                                            <%--<input value='行情2' type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right" onclick="addFilter(this)">--%>
                                            <%--<input value='行情3' type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right" onclick="addFilter(this)">--%>
                                            <%--<input value='行情4' type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right" onclick="addFilter(this)">--%>
                                            <%--<input value='行情5' type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right" onclick="addFilter(this)">--%>
                                        <%--</div>--%>
                                        <%--<!--情绪-->--%>
                                        <%--<div role="tabpanel" class="tab-pane" id="index4">--%>
                                            <%--<input value='情绪1' type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right" onclick="addFilter(this)">--%>

                                        <%--</div>--%>
                                    <%--</div>--%>
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
                                            <table class="table table-striped" id="selectStock">
                                                <tr>
                                                    <th>指标</th>
                                                    <th>比较符</th>
                                                    <th>范围</th>
                                                    <th>值</th>
                                                    <th>操作</th>
                                                </tr>
                                            </table>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="indexB">
                                            <table class="table table-striped" id="selcetStock_sort">
                                                <tr>
                                                    <th>指标</th>
                                                    <th>次序</th>
                                                    <th>范围</th>
                                                    <th>权重</th>
                                                    <th>操作</th>
                                                </tr>
                                                <tr>
                                                    <%--<td>…</td>--%>
                                                    <%--<td>…</td>--%>
                                                    <%--<td>…</td>--%>
                                                    <%--<td>…</td>--%>
                                                    <%--<td>--%>
                                                        <%--<button type="button" class="glyphicon glyphicon-remove"></button>--%>
                                                    <%--</td>--%>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <%--<button type="button" class="btn btn-default btn-success">保存</button>--%>
                </div>
                <!--大盘择时-->
                <div role="tabpanel" class="tab-pane" id="time">
                    <div role="tabpanel" class="tab-pane active" id="settings2">
                        <!--择时参数-->
                        <h5>择时参数</h5>
                        <div class="row">
                            <!--择时指标-->
                            <div class="col-md-6">
                                <div class="panel-body">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <h5>择时指标</h5>
                                        <div role="tabpanel" class="tab-pane active" id="index">
                                            <input value='MA' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">
                                            <input value='TRIX' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">
                                            <input value='MAVOL' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">
                                            <input value='MABias' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">
                                            <input value='PE' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">
                                            <input value='PB' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">
                                            <input value='PE2' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">
                                            <input value='PB2' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">
                                        </div>
                                    </ul>
                                </div>
                            </div>
                            <!--择时条件-->
                            <div class="col-md-6">
                                <div class="panel-body">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <table class="table table-striped" id="selectTime">
                                            <tr>
                                                <th>择时条件</th>
                                                <th>编辑</th>
                                                <th>操作</th>
                                            </tr>
                                        </table>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--<button type="button" class="btn btn-default btn-success">保存</button>--%>
                </div>
                <!--交易模型-->
                <div role="tabpanel" class="tab-pane" id="model">
                    <form class="form-horizontal" role="form">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group form-inline" style="margin: 1%">
                                    <label>调仓周期(日):</label>
                                    <input class="form-control" id="days" style="margin-top: 2%;width: 70%">
                                </div>
                                <div class="form-group form-inline" style="margin: 1%">
                                    <label>股票持仓(只):</label>
                                    <input class="form-control" id="quantity" style="margin-top: 2%;width: 70%">
                                </div>
                                <div class="form-group form-inline" style="margin: 1%">
                                    <label>备选买入(只):</label>
                                    <input class="form-control" id="amount" style="margin-top: 2%;width: 70%">
                                </div>
                                <div class="form-group form-inline" style="margin: 1%">
                                    <label>最大买入(%):</label>
                                    <input class="form-control" id="max" style="margin-top: 2%;width: 70%">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group form-inline" style="margin: 2%">
                                    <label>收益计算价格:</label>
                                    <select class="form-control" id="get"  style="width: 70%">
                                        <option value="open">开盘价</option>
                                        <option value="close" selected="selected">收盘价</option>
                                        <option value="average">日均成交价</option>
                                    </select>
                                </div>
                                <div class="form-group form-inline" style="margin: 2%">
                                    <label>空仓资金配置:</label>
                                    <select class="form-control" id="empty" style="width: 70%">
                                        <option>无</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </div>
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
        <div class="row">
            <div class="col-md-6">
                <div class="form-inline" style="margin: 2%">
                    <label>开始时间:</label>
                    <div class="input-group date form_date col-md-8" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                        <input class="form-control" size="18" type="text" value="" readonly>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                    </div>
                    <input type="hidden" id="dtp_input1" value="" /><br/>
                </div>
                <div class="form-inline" style="margin: 2%">
                    <label>结束时间:</label>
                    <div class="input-group date form_date col-md-8" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                        <input class="form-control" size="18" type="text" value="" readonly>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-inline" style="margin: 2%">
                    <label>收益基准:</label>
                    <select class="form-control" id="ind" style="width: 70%">
                        <option>沪深300</option>
                        <option>中证500</option>
                        <option>中证全指</option>
                        <option>中证流通</option>
                        <option>创业板指数</option>
                        <option>中小板指数</option>
                        <option>上证指数</option>
                    </select>
                </div>
                <div class="form-inline" style="margin: 2%">
                    <label>交易费用:</label>
                    <select class="form-control" id="fare" style="width: 70%">
                        <option>零</option>
                        <option>千分之一</option>
                        <option>千分之二</option>
                        <option>千分之三</option>
                        <option>千分之五</option>
                        <option>千分之八</option>
                        <option>千分之十</option>
                    </select>
                </div>
            </div>
        </div>
        <button class="btn btn-primary" onclick="saveStrategy()">开始回测</button>
        <%--<a href="huice.jsp" class="btn btn-primary" role="button" style="margin: 1.5%" >开始回测</a>--%>
    </div>
</div>

<script type="text/javascript" src="js/jquery-3.1.0.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="bootstrap/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>

<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    $('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
    $('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 1,
        minView: 0,
        maxView: 1,
        forceParse: 0
    });
</script>
</body>
</html>