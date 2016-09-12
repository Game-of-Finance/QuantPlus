<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/9/12
  Time: 下午2:21
--%>
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


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>

    <link href="bootstrap/css/navbar.css" rel="stylesheet">

    <![endif]-->
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
                        <li><a href="strategy.jsp">我的策略</a></li>
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
                <li><a href="login.jsp">登陆</a></li>
                <li><a href="register.jsp">注册</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- Styles -->
<style>
    #chartdiv {
        width	: 100%;
        height	: 500px;
    }

</style>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/none.js"></script>

<!-- Chart code -->
<script>
    app.title = '65k+ 飞机航线';

    myChart.showLoading();

    $.get('data/asset/data/flights.json', function(data) {

        myChart.hideLoading();

        function getAirportCoord(idx) {
            return [data.airports[idx][3], data.airports[idx][4]];
        }
        var routes = data.routes.map(function (airline) {
            return [
                getAirportCoord(airline[1]),
                getAirportCoord(airline[2])
            ];
        });

        myChart.setOption(option = {
            title: {
                text: 'World Flights',
                left: 'center',
                textStyle: {
                    color: '#eee'
                }
            },
            backgroundColor: '#003',
            tooltip: {
                formatter: function (param) {
                    var route = data.routes[param.dataIndex];
                    return data.airports[route[1]][1] + ' > ' + data.airports[route[2]][1];
                }
            },
            geo: {
                map: 'world',
                left: 0,
                right: 0,
                silent: true,
                itemStyle: {
                    normal: {
                        borderColor: '#003',
                        color: '#005'
                    }
                }
            },
            series: [{
                type: 'lines',
                coordinateSystem: 'geo',
                data: routes,
                large: true,
                largeThreshold: 100,
                lineStyle: {
                    normal: {
                        opacity: 0.05,
                        width: 0.5,
                        curveness: 0.3
                    }
                },
                // 设置混合模式为叠加
                blendMode: 'lighter'
            }]
        });
    });
</script>

<!-- HTML -->
<div id="chartdiv"></div>

</body>
</html>