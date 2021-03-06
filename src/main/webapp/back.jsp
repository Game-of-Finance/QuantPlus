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
    <title>回测</title>

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
<!-- 折线图 -->
<script>
    var chart = AmCharts.makeChart("chartdiv", {
        "type": "serial",
        "theme": "none",
        "marginRight": 40,
        "marginLeft": 40,
        "autoMarginOffset": 20,
        "mouseWheelZoomEnabled":true,
        "dataDateFormat": "YYYY-MM-DD",
        "valueAxes": [{
            "id": "v1",
            "axisAlpha": 0,
            "position": "left",
            "ignoreAxisWidth":true
        }],
        "balloon": {
            "borderThickness": 1,
            "shadowAlpha": 0
        },
        "graphs": [{
            "id": "g1",
            "balloon":{
                "drop":true,
                "adjustBorderColor":false,
                "color":"#ffffff"
            },
            "bullet": "round",
            "bulletBorderAlpha": 1,
            "bulletColor": "#FFFFFF",
            "bulletSize": 5,
            "hideBulletsCount": 50,
            "lineThickness": 2,
            "title": "red line",
            "useLineColorForBulletBorder": true,
            "valueField": "value",
            "balloonText": "<span style='font-size:18px;'>[[value]]</span>"
        }],
        "chartScrollbar": {
            "graph": "g1",
            "oppositeAxis":false,
            "offset":30,
            "scrollbarHeight": 80,
            "backgroundAlpha": 0,
            "selectedBackgroundAlpha": 0.1,
            "selectedBackgroundColor": "#888888",
            "graphFillAlpha": 0,
            "graphLineAlpha": 0.5,
            "selectedGraphFillAlpha": 0,
            "selectedGraphLineAlpha": 1,
            "autoGridCount":true,
            "color":"#AAAAAA"
        },
        "chartCursor": {
            "pan": true,
            "valueLineEnabled": true,
            "valueLineBalloonEnabled": true,
            "cursorAlpha":1,
            "cursorColor":"#258cbb",
            "limitToGraph":"g1",
            "valueLineAlpha":0.2,
            "valueZoomable":true
        },
        "valueScrollbar":{
            "oppositeAxis":false,
            "offset":50,
            "scrollbarHeight":10
        },
        "categoryField": "date",
        "categoryAxis": {
            "parseDates": true,
            "dashLength": 1,
            "minorGridEnabled": true
        },
        "export": {
            "enabled": true
        },
        "dataProvider": [{
            "date": "2012-07-27",
            "value": 13
        }, {
            "date": "2012-07-28",
            "value": 11
        }, {
            "date": "2012-07-29",
            "value": 15
        }, {
            "date": "2012-07-30",
            "value": 16
        }, {
            "date": "2012-07-31",
            "value": 18
        }, {
            "date": "2012-08-01",
            "value": 13
        }, {
            "date": "2012-08-02",
            "value": 22
        }, {
            "date": "2012-08-03",
            "value": 23
        }, {
            "date": "2012-08-04",
            "value": 20
        }, {
            "date": "2012-08-05",
            "value": 17
        }, {
            "date": "2012-08-06",
            "value": 16
        }, {
            "date": "2012-08-07",
            "value": 18
        }, {
            "date": "2012-08-08",
            "value": 21
        }, {
            "date": "2012-08-09",
            "value": 26
        }, {
            "date": "2012-08-10",
            "value": 24
        }, {
            "date": "2012-08-11",
            "value": 29
        }, {
            "date": "2012-08-12",
            "value": 32
        }, {
            "date": "2012-08-13",
            "value": 18
        }, {
            "date": "2012-08-14",
            "value": 24
        }, {
            "date": "2012-08-15",
            "value": 22
        }, {
            "date": "2012-08-16",
            "value": 18
        }, {
            "date": "2012-08-17",
            "value": 19
        }, {
            "date": "2012-08-18",
            "value": 14
        }, {
            "date": "2012-08-19",
            "value": 15
        }, {
            "date": "2012-08-20",
            "value": 12
        }, {
            "date": "2012-08-21",
            "value": 8
        }, {
            "date": "2012-08-22",
            "value": 9
        }, {
            "date": "2012-08-23",
            "value": 8
        }, {
            "date": "2012-08-24",
            "value": 7
        }, {
            "date": "2012-08-25",
            "value": 5
        }, {
            "date": "2012-08-26",
            "value": 11
        }, {
            "date": "2012-08-27",
            "value": 13
        }, {
            "date": "2012-08-28",
            "value": 18
        }, {
            "date": "2012-08-29",
            "value": 20
        }, {
            "date": "2012-08-30",
            "value": 29
        }, {
            "date": "2012-08-31",
            "value": 33
        }, {
            "date": "2012-09-01",
            "value": 42
        }, {
            "date": "2012-09-02",
            "value": 35
        }, {
            "date": "2012-09-03",
            "value": 31
        }, {
            "date": "2012-09-04",
            "value": 47
        }, {
            "date": "2012-09-05",
            "value": 52
        }, {
            "date": "2012-09-06",
            "value": 46
        }, {
            "date": "2012-09-07",
            "value": 41
        }, {
            "date": "2012-09-08",
            "value": 43
        }, {
            "date": "2012-09-09",
            "value": 40
        }, {
            "date": "2012-09-10",
            "value": 39
        }, {
            "date": "2012-09-11",
            "value": 34
        }, {
            "date": "2012-09-12",
            "value": 29
        }, {
            "date": "2012-09-13",
            "value": 34
        }, {
            "date": "2012-09-14",
            "value": 37
        }, {
            "date": "2012-09-15",
            "value": 42
        }, {
            "date": "2012-09-16",
            "value": 49
        }, {
            "date": "2012-09-17",
            "value": 46
        }, {
            "date": "2012-09-18",
            "value": 47
        }, {
            "date": "2012-09-19",
            "value": 55
        }, {
            "date": "2012-09-20",
            "value": 59
        }, {
            "date": "2012-09-21",
            "value": 58
        }, {
            "date": "2012-09-22",
            "value": 57
        }, {
            "date": "2012-09-23",
            "value": 61
        }, {
            "date": "2012-09-24",
            "value": 59
        }, {
            "date": "2012-09-25",
            "value": 67
        }, {
            "date": "2012-09-26",
            "value": 65
        }, {
            "date": "2012-09-27",
            "value": 61
        }, {
            "date": "2012-09-28",
            "value": 66
        }, {
            "date": "2012-09-29",
            "value": 69
        }, {
            "date": "2012-09-30",
            "value": 71
        }, {
            "date": "2012-10-01",
            "value": 67
        }, {
            "date": "2012-10-02",
            "value": 63
        }, {
            "date": "2012-10-03",
            "value": 46
        }, {
            "date": "2012-10-04",
            "value": 32
        }, {
            "date": "2012-10-05",
            "value": 21
        }, {
            "date": "2012-10-06",
            "value": 18
        }, {
            "date": "2012-10-07",
            "value": 21
        }, {
            "date": "2012-10-08",
            "value": 28
        }, {
            "date": "2012-10-09",
            "value": 27
        }, {
            "date": "2012-10-10",
            "value": 36
        }, {
            "date": "2012-10-11",
            "value": 33
        }, {
            "date": "2012-10-12",
            "value": 31
        }, {
            "date": "2012-10-13",
            "value": 30
        }, {
            "date": "2012-10-14",
            "value": 34
        }, {
            "date": "2012-10-15",
            "value": 38
        }, {
            "date": "2012-10-16",
            "value": 37
        }, {
            "date": "2012-10-17",
            "value": 44
        }, {
            "date": "2012-10-18",
            "value": 49
        }, {
            "date": "2012-10-19",
            "value": 53
        }, {
            "date": "2012-10-20",
            "value": 57
        }, {
            "date": "2012-10-21",
            "value": 60
        }, {
            "date": "2012-10-22",
            "value": 61
        }, {
            "date": "2012-10-23",
            "value": 69
        }, {
            "date": "2012-10-24",
            "value": 67
        }, {
            "date": "2012-10-25",
            "value": 72
        }, {
            "date": "2012-10-26",
            "value": 77
        }, {
            "date": "2012-10-27",
            "value": 75
        }, {
            "date": "2012-10-28",
            "value": 70
        }, {
            "date": "2012-10-29",
            "value": 72
        }, {
            "date": "2012-10-30",
            "value": 70
        }, {
            "date": "2012-10-31",
            "value": 72
        }, {
            "date": "2012-11-01",
            "value": 73
        }, {
            "date": "2012-11-02",
            "value": 67
        }, {
            "date": "2012-11-03",
            "value": 68
        }, {
            "date": "2012-11-04",
            "value": 65
        }, {
            "date": "2012-11-05",
            "value": 71
        }, {
            "date": "2012-11-06",
            "value": 75
        }, {
            "date": "2012-11-07",
            "value": 74
        }, {
            "date": "2012-11-08",
            "value": 71
        }, {
            "date": "2012-11-09",
            "value": 76
        }, {
            "date": "2012-11-10",
            "value": 77
        }, {
            "date": "2012-11-11",
            "value": 81
        }, {
            "date": "2012-11-12",
            "value": 83
        }, {
            "date": "2012-11-13",
            "value": 80
        }, {
            "date": "2012-11-14",
            "value": 81
        }, {
            "date": "2012-11-15",
            "value": 87
        }, {
            "date": "2012-11-16",
            "value": 82
        }, {
            "date": "2012-11-17",
            "value": 86
        }, {
            "date": "2012-11-18",
            "value": 80
        }, {
            "date": "2012-11-19",
            "value": 87
        }, {
            "date": "2012-11-20",
            "value": 83
        }, {
            "date": "2012-11-21",
            "value": 85
        }, {
            "date": "2012-11-22",
            "value": 84
        }, {
            "date": "2012-11-23",
            "value": 82
        }, {
            "date": "2012-11-24",
            "value": 73
        }, {
            "date": "2012-11-25",
            "value": 71
        }, {
            "date": "2012-11-26",
            "value": 75
        }, {
            "date": "2012-11-27",
            "value": 79
        }, {
            "date": "2012-11-28",
            "value": 70
        }, {
            "date": "2012-11-29",
            "value": 73
        }, {
            "date": "2012-11-30",
            "value": 61
        }, {
            "date": "2012-12-01",
            "value": 62
        }, {
            "date": "2012-12-02",
            "value": 66
        }, {
            "date": "2012-12-03",
            "value": 65
        }, {
            "date": "2012-12-04",
            "value": 73
        }, {
            "date": "2012-12-05",
            "value": 79
        }, {
            "date": "2012-12-06",
            "value": 78
        }, {
            "date": "2012-12-07",
            "value": 78
        }, {
            "date": "2012-12-08",
            "value": 78
        }, {
            "date": "2012-12-09",
            "value": 74
        }, {
            "date": "2012-12-10",
            "value": 73
        }, {
            "date": "2012-12-11",
            "value": 75
        }, {
            "date": "2012-12-12",
            "value": 70
        }, {
            "date": "2012-12-13",
            "value": 77
        }, {
            "date": "2012-12-14",
            "value": 67
        }, {
            "date": "2012-12-15",
            "value": 62
        }, {
            "date": "2012-12-16",
            "value": 64
        }, {
            "date": "2012-12-17",
            "value": 61
        }, {
            "date": "2012-12-18",
            "value": 59
        }, {
            "date": "2012-12-19",
            "value": 53
        }, {
            "date": "2012-12-20",
            "value": 54
        }, {
            "date": "2012-12-21",
            "value": 56
        }, {
            "date": "2012-12-22",
            "value": 59
        }, {
            "date": "2012-12-23",
            "value": 58
        }, {
            "date": "2012-12-24",
            "value": 55
        }, {
            "date": "2012-12-25",
            "value": 52
        }, {
            "date": "2012-12-26",
            "value": 54
        }, {
            "date": "2012-12-27",
            "value": 50
        }, {
            "date": "2012-12-28",
            "value": 50
        }, {
            "date": "2012-12-29",
            "value": 51
        }, {
            "date": "2012-12-30",
            "value": 52
        }, {
            "date": "2012-12-31",
            "value": 58
        }, {
            "date": "2013-01-01",
            "value": 60
        }, {
            "date": "2013-01-02",
            "value": 67
        }, {
            "date": "2013-01-03",
            "value": 64
        }, {
            "date": "2013-01-04",
            "value": 66
        }, {
            "date": "2013-01-05",
            "value": 60
        }, {
            "date": "2013-01-06",
            "value": 63
        }, {
            "date": "2013-01-07",
            "value": 61
        }, {
            "date": "2013-01-08",
            "value": 60
        }, {
            "date": "2013-01-09",
            "value": 65
        }, {
            "date": "2013-01-10",
            "value": 75
        }, {
            "date": "2013-01-11",
            "value": 77
        }, {
            "date": "2013-01-12",
            "value": 78
        }, {
            "date": "2013-01-13",
            "value": 70
        }, {
            "date": "2013-01-14",
            "value": 70
        }, {
            "date": "2013-01-15",
            "value": 73
        }, {
            "date": "2013-01-16",
            "value": 71
        }, {
            "date": "2013-01-17",
            "value": 74
        }, {
            "date": "2013-01-18",
            "value": 78
        }, {
            "date": "2013-01-19",
            "value": 85
        }, {
            "date": "2013-01-20",
            "value": 82
        }, {
            "date": "2013-01-21",
            "value": 83
        }, {
            "date": "2013-01-22",
            "value": 88
        }, {
            "date": "2013-01-23",
            "value": 85
        }, {
            "date": "2013-01-24",
            "value": 85
        }, {
            "date": "2013-01-25",
            "value": 80
        }, {
            "date": "2013-01-26",
            "value": 87
        }, {
            "date": "2013-01-27",
            "value": 84
        }, {
            "date": "2013-01-28",
            "value": 83
        }, {
            "date": "2013-01-29",
            "value": 84
        }, {
            "date": "2013-01-30",
            "value": 81
        }]
    });

    chart.addListener("rendered", zoomChart);

    zoomChart();

    function zoomChart() {
        chart.zoomToIndexes(chart.dataProvider.length - 40, chart.dataProvider.length - 1);
    }
</script>
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



<!-- HTML -->
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
            <%--<a class="navbar-brand" href="#">quant+</a>--%>
            <a class="navbar-brand">
                <img alt="Brand" src="images/logo.jpg">
            </a>
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
                        <li><a href="strategy.jsp">新建策略</a></li>
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

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#tab1" role="tab" data-toggle="tab">收益图</a></li>
    <li role="presentation"><a href="#tab2" role="tab" data-toggle="tab">风险指标</a></li>
    <%--<li role="presentation"><a href="#tab3" role="tab" data-toggle="tab">源代码</a></li>--%>
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="tab1">
        <table class="table" id="table1">
            <tr>
                <th>回测收益</th>
                <th>回测年化收益</th>
                <th>基准收益</th>
                <th>Alpha</th>
                <th>Beta</th>
                <th>Sharpe</th>
                <th>Max Drawdown</th>
            </tr>
        </table>
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
            var chart = AmCharts.makeChart("chartdiv", {
                "type": "serial",
                "theme": "none",
                "marginRight": 40,
                "marginLeft": 40,
                "autoMarginOffset": 20,
                "mouseWheelZoomEnabled":true,
                "dataDateFormat": "YYYY-MM-DD",
                "valueAxes": [{
                    "id": "v1",
                    "axisAlpha": 0,
                    "position": "left",
                    "ignoreAxisWidth":true
                }],
                "balloon": {
                    "borderThickness": 1,
                    "shadowAlpha": 0
                },
                "graphs": [{
                    "id": "g1",
                    "balloon":{
                        "drop":true,
                        "adjustBorderColor":false,
                        "color":"#ffffff"
                    },
                    "bullet": "round",
                    "bulletBorderAlpha": 1,
                    "bulletColor": "#FFFFFF",
                    "bulletSize": 5,
                    "hideBulletsCount": 50,
                    "lineThickness": 2,
                    "title": "red line",
                    "useLineColorForBulletBorder": true,
                    "valueField": "value",
                    "balloonText": "<span style='font-size:18px;'>[[value]]</span>"
                }],
                "chartScrollbar": {
                    "graph": "g1",
                    "oppositeAxis":false,
                    "offset":30,
                    "scrollbarHeight": 80,
                    "backgroundAlpha": 0,
                    "selectedBackgroundAlpha": 0.1,
                    "selectedBackgroundColor": "#888888",
                    "graphFillAlpha": 0,
                    "graphLineAlpha": 0.5,
                    "selectedGraphFillAlpha": 0,
                    "selectedGraphLineAlpha": 1,
                    "autoGridCount":true,
                    "color":"#AAAAAA"
                },
                "chartCursor": {
                    "pan": true,
                    "valueLineEnabled": true,
                    "valueLineBalloonEnabled": true,
                    "cursorAlpha":1,
                    "cursorColor":"#258cbb",
                    "limitToGraph":"g1",
                    "valueLineAlpha":0.2,
                    "valueZoomable":true
                },
                "valueScrollbar":{
                    "oppositeAxis":false,
                    "offset":50,
                    "scrollbarHeight":10
                },
                "categoryField": "date",
                "categoryAxis": {
                    "parseDates": true,
                    "dashLength": 1,
                    "minorGridEnabled": true
                },
                "export": {
                    "enabled": true
                },
                "dataProvider": [{
                    "date": "2012-07-27",
                    "value": 13
                }, {
                    "date": "2012-07-28",
                    "value": 11
                }, {
                    "date": "2012-07-29",
                    "value": 15
                }, {
                    "date": "2012-07-30",
                    "value": 16
                }, {
                    "date": "2012-07-31",
                    "value": 18
                }, {
                    "date": "2012-08-01",
                    "value": 13
                }, {
                    "date": "2012-08-02",
                    "value": 22
                }, {
                    "date": "2012-08-03",
                    "value": 23
                }, {
                    "date": "2012-08-04",
                    "value": 20
                }, {
                    "date": "2012-08-05",
                    "value": 17
                }, {
                    "date": "2012-08-06",
                    "value": 16
                }, {
                    "date": "2012-08-07",
                    "value": 18
                }, {
                    "date": "2012-08-08",
                    "value": 21
                }, {
                    "date": "2012-08-09",
                    "value": 26
                }, {
                    "date": "2012-08-10",
                    "value": 24
                }, {
                    "date": "2012-08-11",
                    "value": 29
                }, {
                    "date": "2012-08-12",
                    "value": 32
                }, {
                    "date": "2012-08-13",
                    "value": 18
                }, {
                    "date": "2012-08-14",
                    "value": 24
                }, {
                    "date": "2012-08-15",
                    "value": 22
                }, {
                    "date": "2012-08-16",
                    "value": 18
                }, {
                    "date": "2012-08-17",
                    "value": 19
                }, {
                    "date": "2012-08-18",
                    "value": 14
                }, {
                    "date": "2012-08-19",
                    "value": 15
                }, {
                    "date": "2012-08-20",
                    "value": 12
                }, {
                    "date": "2012-08-21",
                    "value": 8
                }, {
                    "date": "2012-08-22",
                    "value": 9
                }, {
                    "date": "2012-08-23",
                    "value": 8
                }, {
                    "date": "2012-08-24",
                    "value": 7
                }, {
                    "date": "2012-08-25",
                    "value": 5
                }, {
                    "date": "2012-08-26",
                    "value": 11
                }, {
                    "date": "2012-08-27",
                    "value": 13
                }, {
                    "date": "2012-08-28",
                    "value": 18
                }, {
                    "date": "2012-08-29",
                    "value": 20
                }, {
                    "date": "2012-08-30",
                    "value": 29
                }, {
                    "date": "2012-08-31",
                    "value": 33
                }, {
                    "date": "2012-09-01",
                    "value": 42
                }, {
                    "date": "2012-09-02",
                    "value": 35
                }, {
                    "date": "2012-09-03",
                    "value": 31
                }, {
                    "date": "2012-09-04",
                    "value": 47
                }, {
                    "date": "2012-09-05",
                    "value": 52
                }, {
                    "date": "2012-09-06",
                    "value": 46
                }, {
                    "date": "2012-09-07",
                    "value": 41
                }, {
                    "date": "2012-09-08",
                    "value": 43
                }, {
                    "date": "2012-09-09",
                    "value": 40
                }, {
                    "date": "2012-09-10",
                    "value": 39
                }, {
                    "date": "2012-09-11",
                    "value": 34
                }, {
                    "date": "2012-09-12",
                    "value": 29
                }, {
                    "date": "2012-09-13",
                    "value": 34
                }, {
                    "date": "2012-09-14",
                    "value": 37
                }, {
                    "date": "2012-09-15",
                    "value": 42
                }, {
                    "date": "2012-09-16",
                    "value": 49
                }, {
                    "date": "2012-09-17",
                    "value": 46
                }, {
                    "date": "2012-09-18",
                    "value": 47
                }, {
                    "date": "2012-09-19",
                    "value": 55
                }, {
                    "date": "2012-09-20",
                    "value": 59
                }, {
                    "date": "2012-09-21",
                    "value": 58
                }, {
                    "date": "2012-09-22",
                    "value": 57
                }, {
                    "date": "2012-09-23",
                    "value": 61
                }, {
                    "date": "2012-09-24",
                    "value": 59
                }, {
                    "date": "2012-09-25",
                    "value": 67
                }, {
                    "date": "2012-09-26",
                    "value": 65
                }, {
                    "date": "2012-09-27",
                    "value": 61
                }, {
                    "date": "2012-09-28",
                    "value": 66
                }, {
                    "date": "2012-09-29",
                    "value": 69
                }, {
                    "date": "2012-09-30",
                    "value": 71
                }, {
                    "date": "2012-10-01",
                    "value": 67
                }, {
                    "date": "2012-10-02",
                    "value": 63
                }, {
                    "date": "2012-10-03",
                    "value": 46
                }, {
                    "date": "2012-10-04",
                    "value": 32
                }, {
                    "date": "2012-10-05",
                    "value": 21
                }, {
                    "date": "2012-10-06",
                    "value": 18
                }, {
                    "date": "2012-10-07",
                    "value": 21
                }, {
                    "date": "2012-10-08",
                    "value": 28
                }, {
                    "date": "2012-10-09",
                    "value": 27
                }, {
                    "date": "2012-10-10",
                    "value": 36
                }, {
                    "date": "2012-10-11",
                    "value": 33
                }, {
                    "date": "2012-10-12",
                    "value": 31
                }, {
                    "date": "2012-10-13",
                    "value": 30
                }, {
                    "date": "2012-10-14",
                    "value": 34
                }, {
                    "date": "2012-10-15",
                    "value": 38
                }, {
                    "date": "2012-10-16",
                    "value": 37
                }, {
                    "date": "2012-10-17",
                    "value": 44
                }, {
                    "date": "2012-10-18",
                    "value": 49
                }, {
                    "date": "2012-10-19",
                    "value": 53
                }, {
                    "date": "2012-10-20",
                    "value": 57
                }, {
                    "date": "2012-10-21",
                    "value": 60
                }, {
                    "date": "2012-10-22",
                    "value": 61
                }, {
                    "date": "2012-10-23",
                    "value": 69
                }, {
                    "date": "2012-10-24",
                    "value": 67
                }, {
                    "date": "2012-10-25",
                    "value": 72
                }, {
                    "date": "2012-10-26",
                    "value": 77
                }, {
                    "date": "2012-10-27",
                    "value": 75
                }, {
                    "date": "2012-10-28",
                    "value": 70
                }, {
                    "date": "2012-10-29",
                    "value": 72
                }, {
                    "date": "2012-10-30",
                    "value": 70
                }, {
                    "date": "2012-10-31",
                    "value": 72
                }, {
                    "date": "2012-11-01",
                    "value": 73
                }, {
                    "date": "2012-11-02",
                    "value": 67
                }, {
                    "date": "2012-11-03",
                    "value": 68
                }, {
                    "date": "2012-11-04",
                    "value": 65
                }, {
                    "date": "2012-11-05",
                    "value": 71
                }, {
                    "date": "2012-11-06",
                    "value": 75
                }, {
                    "date": "2012-11-07",
                    "value": 74
                }, {
                    "date": "2012-11-08",
                    "value": 71
                }, {
                    "date": "2012-11-09",
                    "value": 76
                }, {
                    "date": "2012-11-10",
                    "value": 77
                }, {
                    "date": "2012-11-11",
                    "value": 81
                }, {
                    "date": "2012-11-12",
                    "value": 83
                }, {
                    "date": "2012-11-13",
                    "value": 80
                }, {
                    "date": "2012-11-14",
                    "value": 81
                }, {
                    "date": "2012-11-15",
                    "value": 87
                }, {
                    "date": "2012-11-16",
                    "value": 82
                }, {
                    "date": "2012-11-17",
                    "value": 86
                }, {
                    "date": "2012-11-18",
                    "value": 80
                }, {
                    "date": "2012-11-19",
                    "value": 87
                }, {
                    "date": "2012-11-20",
                    "value": 83
                }, {
                    "date": "2012-11-21",
                    "value": 85
                }, {
                    "date": "2012-11-22",
                    "value": 84
                }, {
                    "date": "2012-11-23",
                    "value": 82
                }, {
                    "date": "2012-11-24",
                    "value": 73
                }, {
                    "date": "2012-11-25",
                    "value": 71
                }, {
                    "date": "2012-11-26",
                    "value": 75
                }, {
                    "date": "2012-11-27",
                    "value": 79
                }, {
                    "date": "2012-11-28",
                    "value": 70
                }, {
                    "date": "2012-11-29",
                    "value": 73
                }, {
                    "date": "2012-11-30",
                    "value": 61
                }, {
                    "date": "2012-12-01",
                    "value": 62
                }, {
                    "date": "2012-12-02",
                    "value": 66
                }, {
                    "date": "2012-12-03",
                    "value": 65
                }, {
                    "date": "2012-12-04",
                    "value": 73
                }, {
                    "date": "2012-12-05",
                    "value": 79
                }, {
                    "date": "2012-12-06",
                    "value": 78
                }, {
                    "date": "2012-12-07",
                    "value": 78
                }, {
                    "date": "2012-12-08",
                    "value": 78
                }, {
                    "date": "2012-12-09",
                    "value": 74
                }, {
                    "date": "2012-12-10",
                    "value": 73
                }, {
                    "date": "2012-12-11",
                    "value": 75
                }, {
                    "date": "2012-12-12",
                    "value": 70
                }, {
                    "date": "2012-12-13",
                    "value": 77
                }, {
                    "date": "2012-12-14",
                    "value": 67
                }, {
                    "date": "2012-12-15",
                    "value": 62
                }, {
                    "date": "2012-12-16",
                    "value": 64
                }, {
                    "date": "2012-12-17",
                    "value": 61
                }, {
                    "date": "2012-12-18",
                    "value": 59
                }, {
                    "date": "2012-12-19",
                    "value": 53
                }, {
                    "date": "2012-12-20",
                    "value": 54
                }, {
                    "date": "2012-12-21",
                    "value": 56
                }, {
                    "date": "2012-12-22",
                    "value": 59
                }, {
                    "date": "2012-12-23",
                    "value": 58
                }, {
                    "date": "2012-12-24",
                    "value": 55
                }, {
                    "date": "2012-12-25",
                    "value": 52
                }, {
                    "date": "2012-12-26",
                    "value": 54
                }, {
                    "date": "2012-12-27",
                    "value": 50
                }, {
                    "date": "2012-12-28",
                    "value": 50
                }, {
                    "date": "2012-12-29",
                    "value": 51
                }, {
                    "date": "2012-12-30",
                    "value": 52
                }, {
                    "date": "2012-12-31",
                    "value": 58
                }, {
                    "date": "2013-01-01",
                    "value": 60
                }, {
                    "date": "2013-01-02",
                    "value": 67
                }, {
                    "date": "2013-01-03",
                    "value": 64
                }, {
                    "date": "2013-01-04",
                    "value": 66
                }, {
                    "date": "2013-01-05",
                    "value": 60
                }, {
                    "date": "2013-01-06",
                    "value": 63
                }, {
                    "date": "2013-01-07",
                    "value": 61
                }, {
                    "date": "2013-01-08",
                    "value": 60
                }, {
                    "date": "2013-01-09",
                    "value": 65
                }, {
                    "date": "2013-01-10",
                    "value": 75
                }, {
                    "date": "2013-01-11",
                    "value": 77
                }, {
                    "date": "2013-01-12",
                    "value": 78
                }, {
                    "date": "2013-01-13",
                    "value": 70
                }, {
                    "date": "2013-01-14",
                    "value": 70
                }, {
                    "date": "2013-01-15",
                    "value": 73
                }, {
                    "date": "2013-01-16",
                    "value": 71
                }, {
                    "date": "2013-01-17",
                    "value": 74
                }, {
                    "date": "2013-01-18",
                    "value": 78
                }, {
                    "date": "2013-01-19",
                    "value": 85
                }, {
                    "date": "2013-01-20",
                    "value": 82
                }, {
                    "date": "2013-01-21",
                    "value": 83
                }, {
                    "date": "2013-01-22",
                    "value": 88
                }, {
                    "date": "2013-01-23",
                    "value": 85
                }, {
                    "date": "2013-01-24",
                    "value": 85
                }, {
                    "date": "2013-01-25",
                    "value": 80
                }, {
                    "date": "2013-01-26",
                    "value": 87
                }, {
                    "date": "2013-01-27",
                    "value": 84
                }, {
                    "date": "2013-01-28",
                    "value": 83
                }, {
                    "date": "2013-01-29",
                    "value": 84
                }, {
                    "date": "2013-01-30",
                    "value": 81
                }]
            });

            chart.addListener("rendered", zoomChart);

            zoomChart();

            function zoomChart() {
                chart.zoomToIndexes(chart.dataProvider.length - 40, chart.dataProvider.length - 1);
            }
        </script>

        <!-- HTML -->
        <div id="chartdiv"></div>

    </div>
    <div role="tabpanel" class="tab-pane" id="tab2">

    </div>
    <%--<div role="tabpanel" class="tab-pane" id="tab3">--%>

    <%--</div>--%>
</div>


<a href="strategy.jsp" class="btn btn-primary" role="button" style="margin: 1%">返回</a>
</body>
</html>