<%@ page import="model.industry.IndustryVO" %>
<%@ page import="java.util.List" %>
<%@ page import="model.industry.IndustryVOForSeven" %><%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 16/6/2
  Time: 下午7:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>行业信息</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- Bootstrap Styles-->
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="css/font-awesome-4.5.0/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="css/custom-styles.css" rel="stylesheet"/>
    <link href="css/dataTables.bootstrap.css" rel="stylesheet"/>

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
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#" style="font-family: Consolas;"><strong>AnyQuant</strong></a>

            <div id="sideNav" href=""><i class="fa fa-caret-right"></i></div>
        </div>
    </nav>

    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu" style="font-family: 'Yuanti SC'">

                <li>
                    <a href="main.allindustry?season=201601" id="201601" onclick="showLoading()"><i class="fa fa-table"></i>2016第一季度</a>
                </li>
                <li>
                    <a href="main.allindustry?season=201504" id="201504" onclick="showLoading()"><i class="fa fa-table"></i>2015第四季度</a>
                </li>
                <li>
                    <a href="main.allindustry?season=201503" id="201503" onclick="showLoading()"><i class="fa fa-table"></i>2015第三季度</a>
                </li>
                <li>
                    <a href="main.allindustry?season=201502" id="201502" onclick="showLoading()"><i class="fa fa-table"></i>2015第二季度</a>
                </li>
                <li>
                    <a href="main.allindustry?season=201501" id="201501" onclick="showLoading()"><i class="fa fa-table"></i>2015第一季度</a>
                </li>

            </ul>

        </div>

    </nav>
    <%
        String season = (String) request.getAttribute("season");
    %>

    <script>
        $(document).ready(function () {
            document.getElementById(<%=season%>).setAttribute("class", "active-menu");
        })
    </script>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">
        <%--索引--%>
        <div class="header">
            <h1 class="page-header" style="font-family: 'Yuanti SC'">
                 行业榜单
                <small style="font-family: Consolas">Welcome to AnyQuant</small>
            </h1>
            <ol class="breadcrumb" style="font-family: 'Yuanti SC'">
                <li><a href="index.return">首页</a></li>
                <li class="active">所有行业</li>
            </ol>

        </div>

        <div id="page-inner">

            <!-- /. ROW  -->

            <div class="row">
                <div class="col-xs-6 col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"></div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr style="font-family: 'Yuanti SC'">
                                        <th style="text-align:center;vertical-align: middle">行业名称</th>
                                        <th style="text-align:center;vertical-align: middle">股票数量</th>
                                        <th style="text-align:center;vertical-align: middle">平均价格</th>
                                        <th style="text-align:center;vertical-align: middle">平均<br>涨跌幅</th>
                                        <th style="text-align:center;vertical-align: middle">平均<br>每股收益</th>
                                        <th style="text-align:center;vertical-align: middle">总成交量<br>(万股)</th>
                                        <th style="text-align:center;vertical-align: middle">总成交额<br>(百万)</th>
                                        <th style="text-align:center;vertical-align: middle">领头股</th>
                                        <th style="text-align:center;vertical-align: middle">最新价格</th>
                                        <th style="text-align:center;vertical-align: middle">涨跌幅</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        List<IndustryVOForSeven> industryVOList = (List<IndustryVOForSeven>) request.getAttribute("industryVOList");
                                        for (IndustryVOForSeven industryVO : industryVOList) {
                                    %>

                                    <tr>
                                        <td align="center"><%=industryVO.getIndustryName()%>
                                        </td>
                                        <td align="center"><%=industryVO.getIndustryBasicInfo().getNumberOfstocks()%>
                                        </td>
                                        <td align="center"><%=industryVO.getIndustryBasicInfo().getAveragePrice()%>
                                        </td>
                                        <td align="center"><%=industryVO.getIndustryBasicInfo().getAverageChange()%>
                                        </td>
                                        <td align="center"><%=industryVO.getIndustryBasicInfo().getAverageProfit()%>
                                        </td>
                                        <td align="center"><%=industryVO.getIndustryBasicInfo().getTotalVolume()%>
                                        </td>
                                        <td align="center"><%=industryVO.getIndustryBasicInfo().getTotalAmount()%>
                                        </td>
                                        <td align="center"><%=industryVO.getTypicalStockInfo().getStockName()%>
                                        </td>
                                        <td align="center"><%=industryVO.getTypicalStockInfo().getLatestPrice()%>
                                        </td>
                                        <%
                                            if (industryVO.getTypicalStockInfo().getChange() > 0) {
                                        %>
                                        <td align="center"
                                            style="color: #fa6e6f;"><%=industryVO.getTypicalStockInfo().getChange()%>
                                        </td>
                                        <%
                                        } else {
                                        %>
                                        <td align="center"
                                            style="color: #1ebfae;"><%=industryVO.getTypicalStockInfo().getChange()%>
                                        </td>
                                        <%
                                            }
                                        %>
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

            </div><!--/.row-->

            <div class="row">
                <div class="col-md-12">

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

<!-- Bootstrap Js -->
<script src="js/bootstrap.min.js"></script>

<!-- DATA TABLE SCRIPTS -->
<script src="js/jquery.dataTables.js"></script>
<script src="js/dataTables.bootstrap.js"></script>
<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
</script>

<!-- Custom Js -->
<script src="js/custom-scripts.js"></script>

<script>
    $(window).load(function () {
        $(".loading").fadeOut(750);
    });
    function showLoading() {
        $(".loading").fadeTo(100, 0.5);
    }
    ;
</script>

</body>
</html>
