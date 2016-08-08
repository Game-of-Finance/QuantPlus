<%@ page import="model.industry.IndustryVO" %>
<%@ page import="javax.persistence.criteria.CriteriaBuilder" %>
<%@ page import="model.industry.Industry" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="model.industry.IndustryPack" %>
<%@ page import="model.industry.IndustryBasicInfo" %>
<%@ page import="model.stock.OneDayInfo" %><%--
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
    <link rel="stylesheet" href="css/slider.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="js/jquery-2.2.3.min.js"></script>

    <style>
        .myblock {
            text-align: center;
        }
    </style>

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
                    <a href="all.markets?from=industry" onclick="showLoading()"><i class="fa fa-globe"></i> 大盘详情</a>
                </li>

                <li>
                    <a class="active-menu" href="analysis.industry?from=industry" onclick="showLoading()"><i
                            class="fa fa-area-chart"></i> 行业概况</a>
                </li>

                <li>
                    <a href="single.singleStock?from=industry" onclick="showLoading()"><i class="fa fa-line-chart"></i>
                        单股行情</a>
                </li>

                <li>
                    <a href="single.analysis?from=industry" onclick="showLoading()"><i class="fa fa-bar-chart-o"></i>
                        技术分析</a>
                </li>

                <li>
                    <a href="single.history?from=industry" onclick="showLoading()"><i class="fa fa-table"></i> 个股历史</a>
                </li>

            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">
        <%--索引--%>
        <div class="header">
            <h1 class="page-header" style="font-family: 'Yuanti SC'">
                行业概况
                <small style="font-family: Consolas">Welcome to AnyQuant</small>
            </h1>
            <ol class="breadcrumb" style="font-family: 'Yuanti SC'">
                <li><a href="index.return">首页</a></li>
                <li class="active">行业概况</li>
            </ol>

        </div>


        <%
            IndustryPack industryPack = (IndustryPack) request.getAttribute("industryPack");
            List<IndustryVO> industryVOs = industryPack.getIndustrySeasonVO();
            List<OneDayInfo> stockInIndusList = (List<OneDayInfo>) request.getAttribute("stockInIndusList");


        %>

        <div id="page-inner">

            <!-- /. ROW  -->
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div id="banner_tabs" class="flexslider">
                            <ul class="slides">
                                <%
                                    for (IndustryVO industryVO : industryVOs) {
//                                        System.out.println(i);

                                        String name = industryVO.getIndustryName();
                                        String season = industryVO.getSeason();
                                        IndustryBasicInfo industryBasicInfo = industryVO.getIndustryBasicInfo();
//                                        System.out.println(industryBasicInfo.getAverageChange());
//                                        System.out.println(industryBasicInfo.getAveragePrice());
//                                        System.out.println();
                                %>

                                <li>
                                    <div class="col-md-12">
                                        <div style="text-align:center;padding-top: 20px">
                                            <h3>
                                                <%=name%>
                                                <small>
                                                    <%=season%>
                                                </small>
                                            </h3>
                                        </div>
                                        <br>
                                        <br>
                                        <div class="myblocks" style="font-family: 'Yuanti SC'">
                                            <%--<div class="arrow"></div>--%>
                                            <div class="myblock col-md-2">
                                                <span class="title"><strong>股票数量</strong></span>
                                                <h3><%=industryBasicInfo.getNumberOfstocks()%>
                                                </h3>
                                            </div>
                                            <div class="myblock col-md-2">
                                                <span class="title"><strong>平均价格</strong></span>
                                                <h3><%=industryBasicInfo.getAveragePrice()%>
                                                </h3>
                                            </div>
                                            <div class="myblock col-md-2">
                                                <span class="title"><strong>平均涨跌幅</strong></span>
                                                <h3><%=industryBasicInfo.getAverageChange()%>
                                                </h3>
                                            </div>
                                            <div class="myblock col-md-2">
                                                <span class="title"><strong>平均每股收益</strong></span>
                                                <h3><%=industryBasicInfo.getAverageProfit()%></h3>
                                            </div>
                                            <div class="myblock col-md-2">
                                                <span class="title"><strong>总成交量(万股)</strong></span>
                                                <h3><%=industryBasicInfo.getTotalVolume()%>
                                                </h3>
                                            </div>
                                            <div class="myblock col-md-2">
                                                <span class="title"><strong>总成交金额(万股)</strong></span>
                                                <h3><%=industryBasicInfo.getTotalAmount()%>
                                                </h3>
                                            </div>
                                        </div>
                                    </div>


                                </li>


                                <%
                                    }
                                %>
                            </ul>
                            <ul class="flex-direction-nav">
                                <li><a class="flex-prev" href="javascript:;">Previous</a></li>
                                <li><a class="flex-next" href="javascript:;">Next</a></li>
                            </ul>
                            <ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
                                <li><a>1</a></li>
                                <li><a>2</a></li>
                                <li><a>3</a></li>
                                <li><a>4</a></li>
                            </ol>

                        </div>

                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr style="font-family: 'Yuanti SC'">
                                    <th style="text-align:center;">排名</th>
                                    <th style="text-align:center;">股票名称</th>
                                    <th style="text-align:center;">日期</th>
                                    <th style="text-align:center;">开盘价</th>
                                    <th style="text-align:center;">收盘价</th>
                                    <th style="text-align:center;">最高价</th>
                                    <th style="text-align:center;">最低价</th>

                                    <th style="text-align:center;">成交量</th>
                                    <th style="text-align:center;">市净率</th>

                                </tr>
                                </thead>
                                <tbody>

                                <%
                                    for (int i = 0; i < Math.min(10, stockInIndusList.size()); i++) {
                                        OneDayInfo oneDayInfo = stockInIndusList.get(i);
                                %>
                                <tr>
                                    <td align="center"><%=i + 1%>
                                    </td>
                                    <td align="center"><%=oneDayInfo.getName()%>
                                    </td>
                                    <td align="center"><%=oneDayInfo.getDate()%>
                                    </td>
                                    <td align="center"><%=oneDayInfo.getOpen()%>
                                    </td>
                                    <td align="center"><%=oneDayInfo.getClose()%>
                                    </td>
                                    <td align="center"><%=oneDayInfo.getHigh()%>
                                    </td>
                                    <td align="center"><%=oneDayInfo.getLow()%>
                                    </td>
                                    <td align="center"><%=oneDayInfo.getVolume()%>
                                    </td>
                                    <td align="center"><%=oneDayInfo.getPB()%>
                                    </td>


                                </tr>
                                <%
                                    }
                                %>


                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
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

<script src="js/slider.js"></script>
<script type="text/javascript">

    var bannerSlider = new Slider($('#banner_tabs'), {
        time: 5000,
        delay: 400,
        event: 'hover',
        auto: true,
        mode: 'fade',
        controller: $('#bannerCtrl'),
        activeControllerCls: 'active'
    });
    $('#banner_tabs .flex-prev').click(function () {

        bannerSlider.prev()
    });
    $('#banner_tabs .flex-next').click(function () {

        bannerSlider.next()
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
