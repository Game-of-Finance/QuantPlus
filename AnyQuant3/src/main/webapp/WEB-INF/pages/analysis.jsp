<%@ page import="java.util.List" %>
<%@ page import="util.math.arima.MA" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.text.ParseException" %><%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2016/5/23
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>AnyQuant</title>
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="css/font-awesome-4.5.0/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="css/custom-styles.css" rel="stylesheet"/>


    <link rel="stylesheet" href="css/stock.css"/>
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/echarts.min.js"></script>
    <script src="js/stock.js"></script>


    <!--搜索提示-->
    <script src="js/jquery-ui.min.js"></script>
    <link href="css/jquery-ui.min.css" rel="stylesheet"/>
    <style>
        .ui-autocomplete {
            max-height: 100px;
            overflow-y: auto;
            max-width: 200px;
            /* prevent horizontal scrollbar */
            overflow-x: hidden;
            position: relative;
            z-index: 9999
        }

        .thumbnail{
            border:none;
        }

        .caption{
            padding: 5%;
        }
    </style>

</head>

<body>
<script>
    var TwoSpace = "&nbsp;&nbsp;";
</script>
<div class="loading">
    <div id="loading">
        <div id="loading-center">
            <div id="loading-center-absolute">
                <div class="object" id="object_one"></div>
                <div class="object" id="object_two" style="left:20px;"></div>
                <div class="object" id="object_three" style="left:40px;"></div>
                <div class="object" id="object_four" style="left:60px;"></div>
                <div class="object" id="object_five" style="left:80px;"></div>
            </div>
        </div>

    </div>
</div>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#" style="font-family: Consolas;"><strong>AnyQuant</strong></a>

            <div id="sideNav" href=""><i class="fa fa-caret-right"></i></div>
        </div>

        <ul class="nav navbar-top-links">
            <form class="form-inline text-left" style="padding-top: 15px" action="single.search" method="get">
                <div class="form-group">
                    <div class="row-inline" class="thumbnail" style="border: none">
                        <input type="text" id="search" name="number" class="form-control" placeholder="请输入股票代码"
                               style="margin-left:40px;"/>
                        <input type="text" id="viewID" name="view" value="analysis" style="display:none;"/>
                        <input type="text" name="from" value="analysis" style="display:none;"/>
                        <input type="text" name="isSearch" value="true" style="display:none;"/>
                        <input type="text" name="rawNumber" id="number" value="true" style="display:none;"/>
                        <input type="submit" value="搜索" style="margin-left:30px;" onclick="showLoading()"/>
                    </div>
                </div>
            </form>
            <%
                String number = (String) request.getSession().getAttribute("number");
            %>
            <script type="text/javascript">
                var text = <%=number%>;
                document.getElementById("search").value = text.number;
                document.getElementById("number").value = text.number;
                document.getElementById("viewID").value = "analysis";
            </script>
            <!--在此添加横向导航-->

        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu" style="font-family: 'Yuanti SC'">
                <li>
                    <a href="all.markets?from=analysis" onclick="showLoading()"><i class="fa fa-globe"></i> 大盘详情</a>
                </li>
                <li>
                    <a href="analysis.industry?from=analysis" onclick="showLoading()"><i class="fa fa-area-chart"></i>
                        行业概况</a>
                </li>
                <li>
                    <a href="single.singleStock?from=analysis" onclick="showLoading()"><i class="fa fa-line-chart"></i>
                        单股行情</a>
                </li>

                <li>
                    <a class="active-menu" href="single.analysis?from=analysis" onclick="showLoading()"><i
                            class="fa fa-bar-chart-o"></i> 技术分析</a>
                </li>
                <li>
                    <a href="single.history?from=analysis" onclick="showLoading()"><i class="fa fa-table"></i>
                        个股历史</a>
                </li>

            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">
        <%--索引--%>
        <div class="header">
            <h1 class="page-header" style="font-family: 'Yuanti SC'">
                技术分析
                <small style="font-family: Consolas">Welcome to AnyQuant</small>
            </h1>
            <ol class="breadcrumb" style="font-family: 'Yuanti SC'">
                <li><a href="index.return">首页</a></li>
                <li class="active">技术分析</li>
            </ol>

        </div>

        <div id="page-inner">

            <div class="row">
                <div class="col-xs-6 col-md-8">
<<<<<<< HEAD
                    <div class="panel panel-default" style="height: 540px;">

                        <h4 style="font-family: 'Yuanti SC';padding-left: 5%;padding-top: 10px">总体分析</h4>
                        <div style="width:100%;height:145px;padding: 0px auto;">
                            <p id="summary">This is a very good stock website</p>
=======
                    <div class="panel panel-default" style="height: 400px;">
                        <h4>个股概况</h4>
                        <div style="width:100%;height:120px;">
                            thumbnail(是这个)
>>>>>>> 5df6484faba71a1947f20f1f46c014b6649a8b40
                        </div>
                        <div style="width:100%;height:290px;">
                            <div class="col-md-4">
                                <div class="thumbnail">
                                    <div style="height: 150px;width:100%;text-align: center;"><br><br>

                                        <img src="images/bodong.png" style="width:50px;height:50px;"
                                             alt="通用的占位符缩略图">
                                        <h2 id="variationValue">1</h2>
                                    </div>
                                    <div class="caption" style="margin: 0 auto;font-family: 'Yuanti SC'">
                                        <p id="variation">2</p>
                                        <!--</ul>-->
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="thumbnail">
                                    <div style="height: 150px;width:100%;text-align: center;"><br><br>

                                        <img src="images/predict.jpg" style="width:50px;height:50px;"
                                             alt="通用的占位符缩略图"><h2 id="tomorrowValue">1</h2>
                                    </div>

                                    <div class="caption" style="margin: 0 auto;font-family: 'Yuanti SC'">
                                        <p id="tomorrow">2</p>
                                        <!--</ul>-->
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="thumbnail">
                                    <div style="height:150px;width:100%;text-align: center;"><br><br>
                                        <img src="images/season.png" style="width:65px;height:50px;"
                                             alt="通用的占位符缩略图"/>
                                        <h2 id="seasonValue">1</h2>
                                    </div>
                                    <div class="caption" style="margin: 0 auto;font-family: 'Yuanti SC'">
                                        <p id="seasonPredict">2</p>
                                    </div>

                                </div>
                            </div>

                        </div>


                    </div>
                </div>

                <div class="col-xs-6 col-md-4">
                    <div class="panel panel-default" style="height: 540px;">

                        <h4>交易量</h4>
                        <a href="" class="tooltip-show" data-toggle="tooltip" id="PIE_Tip" title="百度百科"
                           style="float:right;"><img src="images/tip.png"></a>

                        <ul class="nav nav-tabs" style="font-family: 'Yuanti SC'">
                            <li class="active"><a href="#pietab" data-toggle="tab"
                                                  onclick="createAmount()"
                            >成交金额</a>
                            </li>
                            <li class=""><a href="#pietab" data-toggle="tab"
                                            onclick="createVolume()"
                            >成交量</a>
                            </li>
                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="pietab">
                                <div class="analysis_pieChart" id="pieChart" style="width:100%;height:440px;">amount
                                </div>
                            </div>

                        </div>
                        <%--<div style="width:100%;height: 80px;">--%>
                            <%--<p>成交情况分析</p>--%>
                        <%--</div>--%>


                    </div>
                </div>

            </div>


            <div class="row">
                <div class="col-xs-6 col-md-8">
                    <div class="panel panel-default" style="height: 520px;">
                        <div class="panel-heading">
                            <a href="" class="tooltip-show" data-toggle="tooltip" id="MAER_Tip" title="百度百科"
                               style="float:right;"><img src="images/tip.png"></a>
                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#MACDtab" data-toggle="tab"
                                                      onclick="createMACD()"
                                >MACD</a>
                                </li>

                                <li class=""><a href="#MACDtab" data-toggle="tab"
                                                onclick="createARBR()"
                                >ARBR</a>
                                </li>

                                <li class=""><a href="#MACDtab" data-toggle="tab"
                                                onclick="createRSI()"
                                >RSI</a>
                                </li>

                                <li class=""><a href="#MACDtab" data-toggle="tab"
                                                onclick="createEMA()"
                                >EMA</a>
                                </li>

                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="MACDtab">
                                    <div class="analysis_lineChart" id="MERA" style="width:100%;height:400px;">MERA
                                    </div>
                                </div>

                            </div>
                            <%--<div style="width:100%;height: 60px;">--%>
                                <%--<p id="singleConclusion">singleConclusion</p>--%>
                            <%--</div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-md-4">
                    <div class="panel panel-default" style="height: 520px;">
                        <div style="width:100%;height:300px">
                            <div class="col-md-12">

                                <div class="panel-body easypiechart-panel">
                                    <h4>&nbsp;&nbsp;精准程度</h4>
                                    <div class="easypiechart" id="easypiechart-orange" data-percent="100">
                                        <span class="percent" style="margin: 20px;padding-right:10px;">55.22%</span>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div style="width:100%;height:220px;font-family: 'Yuanti SC';padding:5%;" >
                            <p id="singleIndex">singleIndex</p>
                        </div>


                    </div>
                </div>
            </div>


            </footer>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>

<%
    List<String> MACDLine = (List<String>) request.getAttribute("macdLine");
//    System.out.println("MACDLINE:"+MACDLine.size());
    List<String> RSILine = (List<String>) request.getAttribute("rsiLine");
//    System.out.println("RSILINE:"+RSILine.size());
    List<String> EMALine = (List<String>) request.getAttribute("emaLine");
//    System.out.println("EMALINE:"+EMALine.size());
    List<String> ARBRLine = (List<String>) request.getAttribute("arbrLine");
//    System.out.println("EMALINE:"+EMALine.size());

    List<String> amountList = (List<String>) request.getAttribute("amountPie");
    List<String> volumeList = (List<String>) request.getAttribute("volumePie");
//    System.out.println("amountList");
//    amountList.forEach(System.out::println);
//    System.out.println("volumeList");
//    volumeList.forEach(System.out::println);
    String rsiAcurc = (String)request.getAttribute("rsiAcurc");
    String arbrAcurc = (String)request.getAttribute("arbrAcurc");
    String arimaAcurc = (String)request.getAttribute("arimaAcurc");
    String macdAcurc = (String)request.getAttribute("macdAcurc");

    double rsiAcur = Double.parseDouble(rsiAcurc);
    double arbrAcur = Double.parseDouble(arbrAcurc);
    double arimaAcur = Double.parseDouble(arimaAcurc);
    double macdAcur = Double.parseDouble(macdAcurc);

%>


<script type="text/javascript">



    var MERA = 1;
    var isAmount = 1;

    function setAcurc(acu,acur){
        var percent = acu+"%";
//        alert("acur:"+acur);
//        $('#easypiechart-orange').attr('data-percent',acu);
//        alert("acu:"+acu)
        $('.percent').html(percent);

    }
    function createMACD() {
        MERA = 1;
        var width = $('#MACDtab').css('width');
        $('#MACD').css('width', width);
        var MACDData = [];
        <%
            for(String s:MACDLine){%>
        MACDData.push(<%=s%>);
        <%
            }
        %>
        var MACDLegend = [];
        MACDLegend.push('MACD');
        MACDLegend.push('DIF');
        createLineChart('MERA', MACDData, 'MACD', MACDLegend);
        $('#singleIndex').html(TwoSpace +<%=request.getAttribute("macdStr")%>);
//        $('#singleConclusion').html('MACD');

        $('#MAER_Tip').attr('title', "MACD\nMACD称为指数平滑异同平均线,由快、慢均线的离散、" +
                "聚合表征当前的多空状态和股价可能的发展变化趋势。\n当MACD从负数转向正数，是买的" +
                "信号；\n当MACD从正数转向负数，是卖的信号；\n当MACD以大角度变化，表示快的移动平均线和" +
                "慢的移动平均线的差距非常迅速的拉开，代表了一个市场大趋势的转变。");

        setAcurc(<%=macdAcurc%>,<%=macdAcur%>);
    }

    function createEMA() {
        MERA = 2;
        var width = $('#MACDtab').css('width');
        $('#EMA').css('width', width);
        var EMAData = [];
        <%
            for(String s:EMALine){%>
        EMAData.push(<%=s%>);
        <%
            }
        %>
        var EMALegend = [];
        EMALegend.push('EMA-6Day');
        EMALegend.push('EMA-12Day');
        EMALegend.push('EMA-35Day');
        createLineChart('MERA', EMAData, 'EMA', EMALegend);
        $('#singleIndex').html(TwoSpace +<%=request.getAttribute("emaStr")%>);
//        $('#singleConclusion').html('EMA');

        $('#MAER_Tip').attr('title', "EMA\nEMA称为指数平均数指标。也叫EXPMA指标，它也是一种趋向类指标，" +
                "指数平均数指标是以指数式递减加权的移动平均。");

        $('#easypiechart-orange').attr('data-percent','100');
        $('.percent').html("<h3>>_<</h3>");

    }

    function createRSI() {
        MERA = 3;
        var width = $('#MACDtab').css('width');
        $('#RSI').css('width', width);
        var RSIData = [];
        <%
            for(String s:RSILine){%>
        RSIData.push(<%=s%>);
        <%
            }
        %>
        var RSILegend = [];
        RSILegend.push('RSI-6Day');
        RSILegend.push('RSI-12Day');
        RSILegend.push('RSI-24Day');
        var rsi = createLineChart('MERA', RSIData, 'RSI', RSILegend);

        $('#singleIndex').html(TwoSpace +<%=request.getAttribute("rsiStr")%>);

        $('#MAER_Tip').attr('title', "RSI\nRSI称为相对强弱指数，是根据一定时期内上涨点数和涨跌点数之和的比率制作出的一种技术曲线。" +
                "能够反映出市场在一定时期内的景气程度。");

        setAcurc(<%=rsiAcurc%>,<%=rsiAcur%>);
//        $('#singleConclusion').html('RSI');
    }

    function createARBR() {
        MERA = 4;
        var width = $('#MACDtab').css('width');
        $('#ARBR').css('width', width);
        var ARBRData = [];
        <%
            for(String s:ARBRLine){%>
        ARBRData.push(<%=s%>);
        <%
            }
        %>
        var ARBRLegend = [];
        ARBRLegend.push('AR');
        ARBRLegend.push('BR');
        createLineChart('MERA', ARBRData, 'ARBR', ARBRLegend);
        $('#singleIndex').html(TwoSpace +<%=request.getAttribute("arbrStr")%>);

        $('#MAER_Tip').attr('title', "ARBR\nARBR是情绪指标，也称为人气意愿指标，其英文缩写亦可表示为BRAR。由人气指标(AR)和意愿指标(BR)两个指标构成。" +
                "\nAR指标是反映市场当前情况下多空双方力量发展对比的结果。它是以当日的开盘价为基点，与当日最高价相比较，依固定公式计算出来的强弱指标。" +
                "\nBR指标是“强弱指标判定法”中的指标之一，是以前一天的收盘价为基准，用数字把当天行情的波动情形表现出来，用来预测股票变动趋势的预测指标。" +
                "BR指标反映的是昨日收盘价与今日最高价和最低价之间的强弱走势从而反映股指意愿。");


        setAcurc(<%=arbrAcurc%>,<%=arbrAcur%>);
//        $('#singleConclusion').html('arbr');
    }
    function createAmount() {
        isAmount = 1;
        createPieChart('pieChart', '成交金额', <%=amountList.get(0)%>, <%=amountList.get(1)%>)
    }

    function createVolume() {
        isAmount = 0;
        createPieChart('pieChart', '成交量', <%=volumeList.get(0)%>, <%=volumeList.get(1)%>)
    }

    $('#PIE_Tip').attr('title', "买盘：表示以比市价高的价格进行委托买入，并已经“主动成交”，代表外盘；\n" +
            "卖盘：表示以比市价低的价格进行委托卖出，并已经“主动成交”，代表内盘；\n" +
            "中性盘：表示主动性不明确的买入卖出；\n" +
            "内盘为主动性卖盘之即时和。外盘为主动性买盘之即时和。主动买大于主动卖会改变瞬间走势。" +
            "当成交价在买入价时，将现手数量加入内盘累计数量中，当内盘累计数量比外盘累计数量大很多，而股价下跌时表示很多人在强抛卖出股票。" +
            "如外盘很大，意味着多数卖的价位有人来接，显示买势强劲。");
    createMACD();
    createAmount();
    $('#summary').html(TwoSpace+<%=request.getAttribute("summary")%>);
    $('#variation').html(TwoSpace+<%=request.getAttribute("varStr")%>);
    $('#variationValue').html(<%=request.getAttribute("varianceValue")%>);
    $('#tomorrowValue').html(<%=request.getAttribute("priceValue")%>);
    $('#tomorrow').html(TwoSpace+<%=request.getAttribute("arimaStr")%>);
    $('#seasonValue').html(<%=request.getAttribute("volumeValue")%>);
    $('#seasonPredict').html(TwoSpace+<%=request.getAttribute("seasonVolume")%>);

    window.onresize = function () {
        switch (MERA) {
            case 1:
                createMACD();
                break;
            case 2:
                createEMA();
                break;
            case 3:
                createRSI();
                break;
            case 4:
                createARBR();
                break;
            default:
                break;
        }

        if (isAmount == 1) {
            createAmount();
        } else if (isAmount == 0) {
            createVolume();
        }
    }
</script>
<!-- /. WRAPPER  -->

<!-- Bootstrap Js -->
<script src="js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="js/jquery.metisMenu.js"></script>

<!--EasyPieChart Js-->
<script src="js/easypiechart.js"></script>
<script src="js/easypiechart-data.js"></script>

<!-- Custom Js -->
<script src="js/custom-scripts.js"></script>

<script>

    $('#search').autocomplete({
        source: function (request, response) {
            $.ajax({
                url: "analysis.fuzzy",
                dataType: "json",
                data: {
                    info: request.term
                },
                success: function (data) {
                    var lines = new Array();
                    for (var obj in data) {
                        var json = JSON.parse(data[obj]);
                        var line = new Object();
                        line.label = json.stockNumber + " " + json.stockName;
                        line.value = json.stockNumber;
                        lines.push(line);
                    }
                    return response(lines);
                }
            });
        },
        focus: function (event, ui) {
            $("#search").val(ui.item.value);
            return false;
        },
        select: function (event, ui) {
            $("#search").val(ui.item.value);
            return false;
        },
    });


    function showLoading() {
        $(".loading").fadeTo(100, 0.5);
    }
    ;
    //    $(window).load(function () {
    $(".loading").fadeOut(750);
    //    });
</script>

</body>

</html>
