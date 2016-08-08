<%@ page import="model.market.MarketVO" %>
<%@ page import="model.stock.StockAttribute" %>
<%@ page import="util.enums.AttributeEnum" %>
<%@ page import="java.util.ArrayList" %><%--
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
    <!-- Bootstrap Styles-->
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="css/font-awesome-4.5.0/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="css/custom-styles.css" rel="stylesheet"/>

    <link rel="stylesheet" href="css/stock.css"/>
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/echarts.min.js"></script>
    <script src="js/stock.js"></script>
</head>

<body>
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

        <ul class="nav navbar-top-links navbar-right">

            <!--在此添加横向导航-->

        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu" style="font-family: 'Yuanti SC'">
                <li>
                    <a class="active-menu" href="all.markets?from=markets" onclick="showLoading()"><i
                            class="fa fa-globe"></i> 大盘详情</a>
                </li>

                <li>
                    <a href="analysis.industry?from=markets" onclick="showLoading()"><i class="fa fa-area-chart"></i> 行业概况</a>
                </li>

                <li>
                    <a href="single.singleStock?from=markets" onclick="showLoading()"><i class="fa fa-line-chart"></i>
                        单股行情</a>
                </li>

                <li>
                    <a href="single.analysis?from=markets" onclick="showLoading()"><i class="fa fa-bar-chart-o"></i>
                        技术分析</a>
                </li>

                <li>
                    <a href="single.history?from=markets" onclick="showLoading()"><i class="fa fa-table"></i> 个股历史</a>
                </li>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">
        <%--索引--%>
        <div class="header">
            <h1 class="page-header" style="font-family: 'Yuanti SC'">
                大盘详情
                <small style="font-family: Consolas">Welcome to AnyQuant</small>
            </h1>
            <ol class="breadcrumb" style="font-family: 'Yuanti SC'">
                <li><a href="index.return">首页</a></li>
                <li class="active">个股历史</li>
            </ol>

        </div>

        <%
            MarketVO marketVO = (MarketVO) request.getAttribute("marketVO");
            StockAttribute marketAttribute = marketVO.getLastestDay();
//            String marketInfo= marketVO.getMarketInfo();


        %>

        <div id="page-inner">

            <!-- /. ROW  -->

            <div class="row">
                <div class="col-xs-12 col-md-12">

                    <div class="panel panel-default">
                        <div style="text-align: center">
                            <h4 style="font-family: 'Yuanti SC';font-size: 18px"><strong><%=marketVO.getMarketName()%></strong></h4>
                        </div>

                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr style="font-family: 'Yuanti SC'">
                                    <th style="text-align:center;">日期</th>
                                    <th style="text-align:center;">开盘价</th>
                                    <th style="text-align:center;">最高价</th>
                                    <th style="text-align:center;">最低价</th>
                                    <th style="text-align:center;">收盘价</th>
                                    <th style="text-align:center;">成交量</th>

                                </tr>
                                </thead>
                                <tbody>


                                <tr>
                                    <td align="center"><%=marketAttribute.getDate()%>
                                    </td>
                                    <td align="center"><%=marketAttribute.getAttribute(AttributeEnum.getENbyCH("开盘价"))%>
                                    </td>
                                    <td align="center"><%=marketAttribute.getAttribute(AttributeEnum.getENbyCH("最高价"))%>
                                    </td>
                                    <td align="center"><%=marketAttribute.getAttribute(AttributeEnum.getENbyCH("最低价"))%>
                                    </td>
                                    <td align="center"><%=marketAttribute.getAttribute(AttributeEnum.getENbyCH("收盘价"))%>
                                    </td>
                                    <td align="center"><%=marketAttribute.getAttribute(AttributeEnum.getENbyCH("成交量"))%>
                                    </td>


                                </tr>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div><!--/.row-->


            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <div class="panel panel-default">
                        <div class="k_line" id="market_K" style="width:100%;height:580px;"></div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="font-family: 'Yuanti SC';font-size: 18px;text-align: center">
                            大盘概览
                        </div>
                        <div class="panel-body">
                            <p>&nbsp;&nbsp;<%=marketVO.getMarketInfo()%>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <script type="text/javascript">
                createKLine('market_K', <%=marketVO.getkLineJson()%>);
                window.onresize = createKLine('market_K', <%=marketVO.getkLineJson()%>);
            </script>
            <!-- /. ROW  -->

            <!-- /. ROW  -->


        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<!-- Bootstrap Js -->
<script src="js/bootstrap.min.js"></script>

<!-- Custom Js -->
<script src="js/custom-scripts.js"></script>

<script>

    function showLoading() {
        $(".loading").fadeTo(100, 0.5);
    }
    ;
    //    $(window).load(function() {
    $(".loading").fadeOut(750);
    //    });
</script>

</body>

</html>
