<%@ page import="java.util.List" %>
<%@ page import="util.enums.AttributeEnum" %>
<%@ page import="model.stock.OneDayInfo" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="model.stock.InfoMine" %>
<%@ page import="model.stock.InfoMineLine" %><%--
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
    <link href="css/font-awesome-4.5.0/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="css/custom-styles.css" rel="stylesheet"/>

    <link href="css/stock.css" rel="stylesheet"/>
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

        td{
            width:25%;
            font-size: 14px;
            text-align: center;
            vertical-align: middle;
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
            <%
                String number = (String) request.getSession().getAttribute("number");
            %>
            <form class="form-inline text-left" style="padding-top: 15px;" action="single.search" method="get">
                <div class="form-group">
                    <div class="row-inline" class="thumbnail" style="border: none">
                        <input type="text" id="search" name="number" class="form-control" placeholder="请输入股票代码"
                               style="margin-left:40px;"/>
                        <input type="text" id="viewID" name="view" value="singleStock" style="display:none;"/>
                        <input type="text" name="from" value="singleStock" style="display:none;"/>
                        <input type="text" name="isSearch" value="true" style="display:none;"/>
                        <input type="text" name="rawNumber" id="number" value="true" style="display:none;"/>
                        <input type="submit" class="btn btn-default" value="搜索" style="margin-left:30px;" onclick="showLoading()"/>
                    </div>
                </div>
            </form>

            <script type="text/javascript">
                var text = <%=number%>;
                document.getElementById("search").value = text.number;
                document.getElementById("number").value = text.number;
                document.getElementById("viewID").value = "singleStock";
            </script>

            <%--<script>window.onload=initSearch()</script>--%>

            <!--在此添加横向导航-->

        </ul>
    </nav>

    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu" style="font-family: 'Yuanti SC'">
                <li>
                    <a href="all.markets?from=singleStock" onclick="showLoading()"><i class="fa fa-globe"></i> 大盘详情</a>
                </li>

                <li>
                    <a href="analysis.industry?from=singleStock" onclick="showLoading()"><i class="fa fa-area-chart"></i>
                        行业概况</a>
                </li>

                <li>
                    <a class="active-menu" href="single.singleStock?from=singleStock" onclick="showLoading()"><i
                            class="fa fa-line-chart"></i>
                        单股行情</a>
                </li>

                <li>
                    <a href="single.analysis?from=singleStock" onclick="showLoading()"><i class="fa fa-bar-chart-o"></i>
                        技术分析</a>
                </li>

                <li>
                    <a href="single.history?from=singleStock" onclick="showLoading()"><i class="fa fa-table"></i>
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
                单股行情
                <small style="font-family: Consolas">Welcome to AnyQuant</small>
            </h1>
            <ol class="breadcrumb" style="font-family: 'Yuanti SC'">
                <li><a href="index.return">首页</a></li>
                <li class="active">单股行情</li>
            </ol>

        </div>

        <div id="page-inner">

            <!-- /. ROW  -->

            <div class="row">
                <div class="col-xs-6 col-md-8">
                    <div class="panel panel-default" style="height: 560px;">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#Ktab" data-toggle="tab"
                                                  onclick="createK()"
                            >K线</a>
                            </li>
                            <li class=""><a href="#Ktab" data-toggle="tab"
                                            onclick="createDaily()"
                            >分时</a>
                            </li>
                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="Ktab">
                                <div class="k_line" id="single_k_line" style="width:100%;height: 480px;"></div>
                            </div>

                        </div>

                    </div>
                </div>
                <%
                    OneDayInfo oneDayInfo = (OneDayInfo) request.getAttribute("oneDayInfo");
                    System.out.println(oneDayInfo == null);
                    String name = oneDayInfo.getName();
                    String date = oneDayInfo.getDate();
                    HashMap<String, String> attributes = oneDayInfo.getAttribute();
                %>
                <div class="col-xs-6 col-md-4">
                    <div class="panel panel-default" style="height: 560px;">
                        <div class="panel-heading"></div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" style="height: 450px;">
                                    <thead>
                                    <tr>
                                        <td colspan="4" style="text-align: center">
                                            <h3>
                                                <%=name%>
                                                <small><%=date%>
                                                </small>
                                            </h3>

                                        </td>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <%
                                        if (attributes.size() > 0) {
                                    %>


                                    <tr>
                                        <td>开盘价</td>
                                        <td><%=attributes.get(AttributeEnum.getENbyCH("开盘价"))%>
                                        </td>
                                        <td>收盘价</td>
                                        <td><%=attributes.get(AttributeEnum.getENbyCH("收盘价"))%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>最低价</td>
                                        <td><%=attributes.get(AttributeEnum.getENbyCH("最低价"))%>
                                        </td>
                                        <td>最高价</td>
                                        <td><%=attributes.get(AttributeEnum.getENbyCH("最高价"))%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>成交量</td>
                                        <td><%=attributes.get(AttributeEnum.getENbyCH("成交量"))%>
                                        </td>
                                        <td>换手率</td>
                                        <td><%=attributes.get(AttributeEnum.getENbyCH("换手率"))%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>市盈率</td>
                                        <td><%=attributes.get(AttributeEnum.getENbyCH("市盈率"))%>
                                        </td>
                                        <td>市净率</td>
                                        <td><%=attributes.get(AttributeEnum.getENbyCH("市净率"))%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>后复权价</td>
                                        <td><%=attributes.get(AttributeEnum.getENbyCH("后复权价"))%>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <%
                                    } else if (attributes.size() == 0) {
                                    %>
                                    <tr style="font-family: 'Yuanti SC'">
                                        <td>开盘价</td>
                                        <td>- -</td>
                                        <td>收盘价</td>
                                        <td>- -</td>
                                    </tr>
                                    <tr style="font-family: 'Yuanti SC'">
                                        <td>最低价</td>
                                        <td>- -</td>
                                        <td>最高价</td>
                                        <td>- -</td>
                                    </tr>
                                    <tr style="font-family: 'Yuanti SC'">
                                        <td>成交量</td>
                                        <td>- -</td>
                                        <td>换手率</td>
                                        <td>- -</td>
                                    </tr>
                                    <tr style="font-family: 'Yuanti SC'">
                                        <td>市盈率</td>
                                        <td>- -</td>
                                        <td>市净率</td>
                                        <td>- -</td>
                                    </tr>
                                    <tr style="font-family: 'Yuanti SC'">
                                        <td>后复权价</td>
                                        <td>- -</td>
                                        <td></td>
                                        <td></td>
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

            </div>

            <%
                InfoMine infoMine = (InfoMine) request.getAttribute("InfoMine");
                List<InfoMineLine> infoMineLines = infoMine.getInfos();
//                System.out.println("size"+infoMineLines.size());
            %>

            <div class="row">
                <div class="col-xs-6 col-md-8">
                    <div class="panel panel-default" style="height: 360px;">
                        <div class="bar" id="single_bar" style="width:100%;height: 360px;"></div>
                    </div>
                </div>
                <div class="col-xs-6 col-md-4">
                    <div class="panel panel-default" style="height: 360px;">
                        <%--放东西--%>
                        <div class="panel-heading" style="font-family: 'Yuanti SC';font-size: 16px"><strong>行业地雷</strong></div>
                        <div class="panel-body">
                            <ul>
                                <%
                                    for (int i = 0; i < Math.min(4, infoMineLines.size()); i++) {

                                        InfoMineLine infoMineLine = infoMineLines.get(i);
                                        String title = infoMineLine.getTitle();
                                        int length = title.length();
                                        if(length>20){
                                            title = title.substring(0,20)+"...";
                                        }

                                %>

                                <li>
                                    <a href=<%=infoMineLine.getStringUrl()%> target="_blank"><%=infoMineLine.getDate()%>  <%=title%>
                                    </a></li>
                                <br>
                                <%
                                    }
                                %>
                            </ul>

                        </div>
                    </div>
                </div>

            </div>


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

<%
    //    System.out.println("in daily");
    List<String> dailyLineList = (List<String>) request.getAttribute("dailyLine");
//    System.out.println(dailyLineList.size());
//    dailyLineList.forEach(System.out::println);
    String volumeLine = (String) request.getAttribute("volumeLine");
//    System.out.println(volumeLine);
%>

<script type="text/javascript">
    createKLine("single_k_line", <%=request.getAttribute("kLine")%>);

    var isKLine = 1;
    function createK() {

        isKLine = 1;
        var top = createKLine('single_k_line', <%=request.getAttribute("kLine")%>);
        var down = createBarChart('single_bar', <%=request.getAttribute("singleVolumeLine")%>, '成交量柱状图', ['成交量']);
        top.group = 'group1';
        down.group = 'group1';
        echarts.connect('group1');
    }

    function createDaily() {
//        alert("daily");
        isKLine = 0;
        var dailyLineData = [];
        var dailyLegend = [];
        <%
            dailyLineList=(List<String>)request.getAttribute("dailyLine");
            for(String s:dailyLineList){
        %>
        dailyLineData.push(<%=s%>);
        <%}%>
        dailyLegend.push('实时价格');
        dailyLegend.push('累计均价');
        var top = createLineChart('single_k_line', dailyLineData, '股价分时图', dailyLegend);
        var down = createBarChart('single_bar', <%=request.getAttribute("volumeLine")%>, '成交量分时柱状图', ['成交量']);
        top.group = 'group1';
        down.group = 'group1';
        echarts.connect('group1');
    }

    createK();

    window.onresize = function () {
        if (isKLine == 1) {
            createK();
        } else {
            createDaily();
        }
    }
</script>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<script src="js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="js/jquery.metisMenu.js"></script>
<!-- Custom Js -->
<script src="js/custom-scripts.js"></script>

<script>

    $('#search').autocomplete({
        source: function (request, response) {
            $.ajax({
                url: "singlestock.fuzzy",
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
    //    $(window).load(function() {
    $(".loading").fadeOut(750);
    //    });


</script>

</body>

</html>
