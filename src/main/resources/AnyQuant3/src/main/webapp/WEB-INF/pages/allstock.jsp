<%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2016/6/11
  Time: 0:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="model.stock.StockVO" %>
<%@ page import="model.stock.StockAttribute" %>
<%@ page import="java.util.List" %>
<%@ page import="util.enums.AttributeEnum" %>
<%@ page import="model.stock.OneDayInfo" %>
<%--
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

    <link href="css/dataTables.bootstrap.css" rel="stylesheet"/>

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
            min-width: 200px;
            overflow-y: auto;
            /* prevent horizontal scrollbar */
            overflow-x: hidden;
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

        <ul class="nav navbar-top-links">
            <form class="form-inline text-left" style="padding-top: 15px" action="single.search" method="get">
                <div class="form-group">
                    <div class="row-inline" class="thumbnail" style="border: none">
                        <input type="text" id="search" name="number" class="form-control" placeholder="请输入股票代码"
                               style="margin-left: 40px;"/>
                        <input type="text" id="viewID" name="view" value="history" style="display:none;"/>
                        <input type="text" name="from" value="allstock" style="display:none;"/>
                        <input type="text" name="isSearch" value="true" style="display:none;"/>
                        <%--<input type="text" name="rawNumber" id="number" value="true" style="display:none;"/>--%>
                        <input type="submit" class="btn btn-default" value="搜索" style="margin-left: 30px;" onclick="showLoading()"/>
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
                document.getElementById("viewID").value = "history";
            </script>
            <!--在此添加横向导航-->

        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu" style="font-family: 'Yuanti SC'">

                <li>
                    <a href="sh2.allstock?market=sh" id="sh" onclick="showLoading()"><i class="fa fa-area-chart"></i> 上证指数</a>
                </li>
                <li>
                    <a href="sz.allstock?market=sz" id="sz" onclick="showLoading()"><i class="fa fa-area-chart"></i> 深证指数</a>
                </li>


            </ul>

        </div>

    </nav>
    <%
        String market = (String) request.getAttribute("market");
        System.out.println("Market:" + market);
        market = "#" + market;
    %>
    <script>
        alert('in');
        $(<%=market%>).addClass("active-menu");
        alert('out');
    </script>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">
        <%--索引--%>
        <div class="header">
            <h1 class="page-header" style="font-family: 'Yuanti SC'">
                个股列表
                <small style="font-family: Consolas">Welcome to AnyQuant</small>
            </h1>
            <ol class="breadcrumb" style="font-family: 'Yuanti SC'">
                <li><a href="index.return">首页</a></li>
                <li class="active">股票概览</li>
            </ol>

        </div>

        <div id="page-inner">

            <!-- /. ROW  -->

            <div class="row">
                <div class="col-xs-6 col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr style="font-family: 'Yuanti SC'">
                                        <th style="text-align:center;">股票名称</th>
                                        <th style="text-align:center;">开盘价</th>
                                        <th style="text-align:center;">最高价</th>
                                        <th style="text-align:center;">最低价</th>
                                        <th style="text-align:center;">收盘价</th>
                                        <th style="text-align:center;">后复权价</th>
                                        <th style="text-align:center;">成交量(万)</th>
                                        <th style="text-align:center;">换手率</th>
                                        <th style="text-align:center;">市盈率</th>
                                        <th style="text-align:center;">市净率</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        List<OneDayInfo> oneDayInfoList = (List<OneDayInfo>) request.getAttribute("oneDayInfoList");
                                        for (OneDayInfo oneDayInfo : oneDayInfoList) {
                                    %>

                                    <tr>
                                        <td align="center"><%=oneDayInfo.getName()%>
                                        </td>
                                        <td align="center"><%=oneDayInfo.getAttribute(AttributeEnum.getENbyCH("开盘价"))%>
                                        </td>
                                        <td align="center"><%=oneDayInfo.getAttribute(AttributeEnum.getENbyCH("最高价"))%>
                                        </td>
                                        <td align="center"><%=oneDayInfo.getAttribute(AttributeEnum.getENbyCH("最低价"))%>
                                        </td>
                                        <td align="center"><%=oneDayInfo.getAttribute(AttributeEnum.getENbyCH("收盘价"))%>
                                        </td>
                                        <td align="center"><%=oneDayInfo.getAttribute(AttributeEnum.getENbyCH("后复权价"))%>
                                        </td>
                                        <td align="center"><%=oneDayInfo.getAttribute(AttributeEnum.getENbyCH("成交量"))%>
                                        </td>
                                        <td align="center"><%=oneDayInfo.getAttribute(AttributeEnum.getENbyCH("换手率"))%>
                                        </td>
                                        <td align="center"><%=oneDayInfo.getAttribute(AttributeEnum.getENbyCH("市盈率"))%>
                                        </td>
                                        <td align="center"><%=oneDayInfo.getAttribute(AttributeEnum.getENbyCH("市净率"))%>
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


        $('#search').autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: "allstock.fuzzy",
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
                $("#result").val(ui.item.label);
                return false;
            },
            select: function (event, ui) {
                $("#result").val(ui.item.value);
                return false;
            },
        });
    });
</script>
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
