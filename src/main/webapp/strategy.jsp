<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>新建策略</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="bootstrap/css/navbar.css" rel="stylesheet">

    <script type="text/javascript">

        function addInd(btn){
//            $("#industry").addClass('disabled'); // Disables visually
            $("#selectStock").
            append("<tr id="+btn.value+">"+
                    "<td id='指标'>"+btn.value+"</td>"+
                    "<td id='比较符'>"+
                    '<select id="select">' +
                    '<option value="通信设备">通信设备</option>' +
                    '<option value="旅游服务">旅游服务</option>' +
                    '<option value="电信运营">电信运营</option>' +
                    '<option value="软件服务">软件服务</option>' +
                    '<option value="农业综合">农业综合</option>' +
                    '<option value="白酒">白酒</option>' +
                    '<option value="铝">铝</option>' +
                    '<option value="证券">证券</option>' +
                    '<option value="造纸">造纸</option>' +
                    '<option value="陶瓷">陶瓷</option>' +
                    '<option value="啤酒">啤酒</option>' +
                    '<option value="供气供热">供气供热</option>' +
                    '<option value="化纤">化纤</option>' +
                    '<option value="汽车整车">汽车整车</option>' +
                    '<option value="家用电器">家用电器</option>' +
                    '<option value="仓储物流">仓储物流</option>' +
                    '<option value="公共交通">公共交通</option>' +
                    '<option value="林业">林业</option>' +
                    '<option value="铁路">铁路</option>' +
                    '<option value="医药商业">医药商业</option>' +
                    '<option value="医药商业">医药商业</option>' +
                    '<option value="软饮料">软饮料</option>' +
                    '<option value="水力发电">水力发电</option>' +
                    '<option value="化工机械">化工机械</option>' +
                    '<option value="综合类">综合类</option>' +
                    '<option value="红黄药酒">红黄药酒</option>' +
                    '<option value="批发业">批发业</option>' +
                    '<option value="建筑施工">建筑施工</option>' +
                    '<option value="机场">机场</option>' +
                    '<option value="石油贸易">石油贸易</option>' +
                    '<option value="钢加工">钢加工</option>' +
                    '<option value="商贸代理">商贸代理</option>' +
                    '<option value="全国地产">全国地产</option>' +
                    '<option value="电脑设备">电脑设备</option>' +
                    '<option value="机械基件">机械基件</option>' +
                    '<option value="全国地产">全国地产</option>' +
                    '<option value="纺织">纺织</option>' +
                    '<option value="多元金融">多元金融</option>' +
                    '<option value="渔业">渔业</option>' +
                    '<option value="路桥">路桥</option>' +
                    '<option value="广告包装">广告包装</option>' +
                    '<option value="航空">航空</option>' +
                    '<option value="化工原料">化工原料</option>' +
                    '<option value="医疗保健">医疗保健</option>' +
                    '<option value="互联网">互联网</option>' +
                    '<option value="汽车配件">汽车配件</option>' +
                    '<option value="专用机械">专用机械</option>' +
                    '<option value="服饰 ">服饰</option>' +
                    '<option value="农用机械">农用机械</option>' +
                    '<option value="乳制品">乳制品</option>' +
                    '<option value="空运">空运</option>' +
                    '<option value="铅锌">铅锌</option>' +
                    '<option value="轻工机械">轻工机械</option>' +
                    '<option value="影视音像">影视音像</option>' +
                    '<option value="汽车服务">汽车服务</option>' +
                    '<option value="铜">铜</option>' +
                    '<option value="银行">银行</option>' +
                    '<option value="电气设备">电气设备</option>' +
                    '<option value="煤炭开采">煤炭开采</option>' +
                    '<option value="其他商业">其他商业</option>' +
                    '<option value="电器仪表">电器仪表</option>' +
                    '<option value="中成药">中成药</option>' +
                    '<option value="电器连锁">电器连锁</option>' +
                    '<option value="电气设备">电气设备</option>' +
                    '<option value="日用化工">日用化工</option>' +
                    '<option value="半导体">半导体</option>' +
                    '<option value="工程机械">工程机械</option>' +
                    '<option value="水务">水务</option>' +
                    '<option value="其他建材">其他建材</option>' +
                    '<option value="区域地产">区域地产</option>' +
                    '<option value="石油加工">石油加工</option>' +
                    '<option value="农药化肥">农药化肥</option>' +
                    '<option value="火力发电">火力发电</option>' +
                    '<option value="矿物制品">矿物制品</option>' +
                    '<option value="港口">港口</option>' +
                    '<option value="船舶">船舶</option>' +
                    '<option value="染料涂料">染料涂料</option>' +
                    '<option value="保险">保险</option>' +
                    '<option value="黄金">黄金</option>' +
                    '<option value="饲料">饲料</option>' +
                    '<option value="酒店餐饮">酒店餐饮</option>' +
                    '<option value="种植业">种植业</option>' +
                    '<option value="生物制药">生物制药</option>' +
                    '<option value="橡胶">橡胶</option>' +
                    '<option value="特种钢">特种钢</option>' +
                    '<option value="石油开采">石油开采</option>' +
                    '<option value="玻璃">玻璃</option>' +
                    '<option value="水运">水运</option>' +
                    '<option value="小金属">小金属</option>' +
                    '<option value="纺织机械">纺织机械</option>' +
                    '<option value="普钢">普钢</option>' +
                    '<option value="园区开发">园区开发</option>' +
                    '<option value="塑料">塑料</option>' +
                    '<option value="焦炭加工">焦炭加工</option>' +
                    '<option value="出版业">出版业</option>' +
                    '<option value="元器件">元器件</option>' +
                    '<option value="新型电力">新型电力</option>' +
                    '<option value="旅游景点">旅游景点</option>' +
                    '<option value="环境保护">环境保护</option>' +
                    '<option value="商品城">商品城</option>' +
                    '<option value="水泥">水泥</option>' +
                    '<option value="文教休闲">文教休闲</option>' +
                    '<option value="百货">百货</option>' +
                    '<option value="化学制药">化学制药</option>' +
                    '<option value="食品">食品</option>' +
                    '<option value="摩托车">摩托车</option>' +
                    '<option value="房产服务">房产服务</option>' +
                    '<option value="家居用品">家居用品</option>' +
                    '<option value="运输设备">运输设备</option>' +
                    '<option value="机床制造">机床制造</option>' +
                    '<option value="公路">公路</option>' +
                    '<option value="装修装饰">装修装饰</option>' +
                    '<option value="超市连锁">超市连锁</option>' +
                    '</select>' +"</td>"+
                    "<td id='low'>"+'<input placeholder="-" disabled>'+"</td>"+
                    "<td id='high'>"+'<input placeholder="-" disabled>'+"</td>"+
                    "<td id='操作'><button id="+btn.value+" type=\"button\" class=\"glyphicon glyphicon-trash btn btn-default btn-danger btn-xs\" onclick='delFilter(this)'></button>"+
                    "</tr>");
        }
        function addAre(btn){
            $("#selectStock").
            append("<tr id="+btn.value+">"+
                    "<td id='指标'>"+btn.value+"</td>"+
                    "<td id='比较符'>"+
                    '<select id="select">' +
                    '<option value="青海">青海</option>' +
                    '<option value="辽宁">辽宁</option>' +
                    '<option value="贵州">贵州</option>' +
                    '<option value="北京">北京</option>' +
                    '<option value="广西">广西</option>' +
                    '<option value="广东">广东</option>' +
                    '<option value="云南">云南</option>' +
                    '<option value="上海">上海</option>' +
                    '<option value="甘肃">甘肃</option>' +
                    '<option value="山东">山东</option>' +
                    '<option value="安徽">安徽</option>' +
                    '<option value="江西">江西</option>' +
                    '<option value="宁夏">宁夏</option>' +
                    '<option value="海南">海南</option>' +
                    '<option value="湖南">湖南</option>' +
                    '<option value="河北">河北</option>' +
                    '<option value="西藏">西藏</option>' +
                    '<option value="吉林">吉林</option>' +
                    '<option value="黑龙江">黑龙江</option>' +
                    '<option value="福建">福建</option>' +
                    '<option value="天津">天津</option>' +
                    '<option value="江苏">江苏</option>' +
                    '<option value="陕西">陕西</option>' +
                    '<option value="山西">山西</option>' +
                    '<option value="新疆">新疆</option>' +
                    '<option value="四川">四川</option>' +
                    '<option value="重庆">重庆</option>' +
                    '<option value="内蒙">内蒙</option>' +
                    '<option value="湖北">湖北</option>' +
                    '<option value="深圳">深圳</option>' +
                    '<option value="河南">河南</option>' +
                    '<option value="浙江">浙江</option>' +
                    '</select>' +"</td>"+
                    "<td id='low'>"+'<input placeholder="-" disabled>'+"</td>"+
                    "<td id='high'>"+'<input placeholder="-" disabled>'+"</td>"+
                    "<td><button id="+btn.value+" type=\"button\" class=\"glyphicon glyphicon-trash btn btn-default btn-danger btn-xs\" onclick='delFilter(this)'></button>"+
                    "</tr>");
        }

        function addFilter(btn){
            $("#selectStock").
            append("<tr id="+btn.value+">"+
                    "<td id='name'>"+btn.value+"</td>"+
                    "<td id='比较符'>"+
                    '<select id="select">' +
                    '<option value=">">></option>' +
                    '<option value="<"><</option>' +
                    '<option value="="><></option>' +
                    '</select>' +"</td>"+
                    "<td>"+'<input placeholder="low" id="low">'+"</td>"+
                    "<td>"+'<input placeholder="high" id="high">'+"</td>"+
                    "<td><button id="+btn.value+" type=\"button\" class=\"glyphicon glyphicon-trash btn btn-default btn-danger btn-xs\" onclick='delFilter(this)'></button>"+
                    "</tr>");
        }

        function delFilter(button){
            var name=button.id;
            $('#'+name).remove()

        }

        function saveStrategy() {
            var selectStock=new Array();
            if($('#selectStock tr').find("#MACD")){
                selectStock.push($("#MACD").find("#select option:selected").val());
                selectStock.push($("#MACD").find("#low").val());
                selectStock.push($("#MACD").find("#high").val());
            }
            if($('#selectStock tr').find("#行业")){
                selectStock.push($("#行业").find("#select option:selected").val());
            }
            if($('#selectStock tr').find("#资产")){
                selectStock.push($("#资产").find("#select option:selected").val());
                selectStock.push($("#资产").find("#low").val());
                selectStock.push($("#资产").find("#high").val());
            }
            if($('#selectStock tr').find("#地域")){
                selectStock.push($("#地域").find("#select option:selected").val());
            }

            var selectTime=new Array();
            if($('#selectTime tr').find("#timeMACD")){
                selectTime.push($("#timeMACD").find("#select option:selected").val());
                selectTime.push($("#timeMACD").find("#low").val());
                selectTime.push($("#timeMACD").find("#high").val());
            }
            if($('#selectTime tr').find("#timeMA")){
                selectTime.push($("#timeMA").find("#select option:selected").val());
                selectTime.push($("#timeMA").find("#low").val());
                selectTime.push($("#timeMA").find("#high").val());
            }


            var bear_to_bull = document.getElementById("bear_to_bull").value;
            var bull_to_bear = document.getElementById("bull_to_bear").value;
            var bear_position = document.getElementById("bear_position").value;
            var selectTimePara=new Array();
            selectTimePara.push(bear_to_bull);
            selectTimePara.push(bull_to_bear);
            selectTimePara.push(bear_position);


            var days=document.getElementById("days").value;
            var quantity=document.getElementById("quantity").value;
            var amount=document.getElementById("amount").value;
            var max=document.getElementById("max").value;
            var get=document.getElementById("get").value;
            var empty=document.getElementById("empty").value;
            var tradePara=new Array();
            tradePara.push(days);
            tradePara.push(quantity);
            tradePara.push(amount);
            tradePara.push(max);
            tradePara.push(get);
            tradePara.push(empty);

            $.ajax({
                type : 'POST',
                url : 'newStrategy.do',
                dataType:'application/json',
                data:{
                    "selectStock":selectStock,
                    "selectTime":selectTime,
                    "selectTimePara":selectTimePara,
                    "tradePara":tradePara
                },
                traditional:true,
                success : function(response) {
                    //请求成功
                    alert("新的策略"+response.status);


                }
            });


        }

    </script>
    <script type="text/javascript">
        function addFilter2(btn){
            $("#selectTime").
            append("<tr id="+"time"+btn.value+">"+
                    "<td id='指标'>"+btn.value+"</td>"+
                    "<td id='比较符'>"+
                    '<select id="select">' +
                    '<option value=">">></option>' +
                    '<option value="<"><</option>' +
                    '<option value="="><></option>' +
                    '</select>' +"</td>"+
                    "<td>"+'<input placeholder="low" id="low">'+"</td>"+
                    "<td>"+'<input placeholder="high" id="high">'+"</td>"+
                    "<td><button id="+btn.value+" type=\"button\" class=\"glyphicon glyphicon-trash btn btn-default btn-danger btn-xs\" onclick='delFilter(this)'></button>"+
                    "</tr>");
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
                        <li><a href="SimulatedTrading.jsp">虚拟交易</a></li>
                        <li><a href="#" disabled="">我的交易</a></li>
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
                                        <input value='MACD' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter(this)" id="MACD">
                                        <input value='行业' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addInd(this)" id="industry">
                                        <input value='资产' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter(this)" id="zichan">
                                        <input value='地域' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addAre(this)" id="area">
                                    </div>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel-body">
                                <ul class="nav nav-tabs" role="tablist">
                                    <br />
                                    <table class="table table-striped" id="selectStock">
                                        <tr>
                                            <th>指标</th>
                                            <th>比较符</th>
                                            <th>low</th>
                                            <th>high</th>
                                            <th>操作</th>
                                        </tr>
                                    </table>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <%--<button type="button" class="btn btn-default btn-success">保存</button>--%>
                </div>
                <!--大盘择时-->
                <div role="tabpanel" class="tab-pane" id="time">
                    <div role="tabpanel" class="tab-pane active" id="settings2">
                        <div class="row">



                            <div class="col-md-4">
                                <div class="form-inline">
                                    <span>同时满足</span>
                                    <select class="form-control" style="" id="bear_to_bull">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="-1" selected="selected">全部</option>
                                    </select>
                                    <span>个择时条件由熊变牛</span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-inline">
                                    <span>同时满足</span>
                                    <select class="form-control" style="" id="bull_to_bear">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="-1" selected="selected">全部</option>
                                    </select>
                                    <span>个择时条件由牛变熊</span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-inline">
                                <span>熊市仓位</span>
                                    <select class="form-control" style="" id="bear_position">
                                        <option value="0" selected="selected">空仓</option>
                                        <option value="0.3">30%</option>
                                        <option value="0.5">50%</option>
                                        <option value="0.7">70%</option>
                                    </select>
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <!--择时指标-->
                            <div class="col-md-6">
                                <div class="panel-body">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <h5>择时指标</h5>
                                        <div role="tabpanel" class="tab-pane active" id="index">
                                            <input value='MA' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">
                                            <input value='MACD' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">
                                            <%--<input value='MAVOL' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">--%>
                                            <%--<input value='MABias' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">--%>
                                            <%--<input value='PE' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">--%>
                                            <%--<input value='PB' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">--%>
                                            <%--<input value='PE2' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">--%>
                                            <%--<input value='PB2' type="button" class="btn btn-default btn-danger" style="margin: 0.5%" onclick="addFilter2(this)">--%>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                            <!--择时条件-->
                            <div class="col-md-6">
                                <div class="panel-body">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <br />
                                        <table class="table table-striped" id="selectTime">
                                            <tr>
                                                <th>指标</th>
                                                <th>比较符</th>
                                                <th>low</th>
                                                <th>high</th>
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
                    <div class="input-group date form_date col-md-8" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                        <input class="form-control" size="18" type="text" value="" readonly id="startDate">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                    </div>
                    <input type="hidden" id="dtp_input1" value="" /><br/>
                </div>
                <div class="form-inline" style="margin: 2%">
                    <label>结束时间:</label>
                    <div class="input-group date form_date col-md-8" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                        <input class="form-control" size="18" type="text" value="" readonly id="endData">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-inline" style="margin: 2%">
                    <label>收益基准:</label>
                    <select class="form-control" id="ind" style="width: 70%" id="reference">
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