<%@ page import="java.util.List" %>
<%@ page import="model.analyse.RiseAndFallVO" %>
<%@ page import="org.json.JSONArray" %>
<%@ page import="util.enums.TypeOfVolumn" %>
<%@ page import="java.util.DoubleSummaryStatistics" %>
<%@ page import="com.fasterxml.jackson.databind.ObjectMapper" %>
<%@ page import="util.constant.StockConstant" %><%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 16/5/12
  Time: 下午8:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta content="" name="keywords"/>
<meta content="" name="description"/>
<meta name="author" content="codetker"/>
<head>
    <title>AnyQuant股票分析</title>

    <script src="js/jquery-2.2.3.min.js"></script>
    <script type="text/javascript" src="js/jquery.codetker.windowScroll.js"></script>

    <script src="js/bootstrap.min.js"></script>

    <link href="css/reset.css" rel="stylesheet" type="text/css"/>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <link href="css/jquery-ui.min.css" rel="stylesheet"/>
    <link href="css/stock.css" rel="stylesheet"/>
    <!--引入ECharts文件-->
    <script src="js/echarts.min.js"></script>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <script src="js/stock.js"></script>
    <script src="js/jquery-ui.min.js"></script>


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

<body scroll="no">
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
<div class="wrap" style="dispaly:block;">
    <div class="stageControl" style="z-index: 1">
        <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#" style="font-family:Arial,Helvetica,sans-serif;font-size:100%">AnyQuant</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav" style="font-family: 'Yuanti SC';size: 16px">
                        <li><a href="#">单股查询</a></li>
                        <li><a href="#">热门行业</a></li>
                        <li><a href="#">热门股票</a></li>
                        <li><a href="#">关于我们</a></li>
                    </ul>
                </div><!-- /.nav-collapse -->
            </div><!-- /.container -->
        </div>

    </div>
    <div class="stage stage1" style="background-color: floralwhite">
        <div class="container-fluid text-center" style="padding-top: 60px">
            <img class="logo-img" src="images/logo.png" alt="股票分析"
                 style="padding-top:4%;max-width: 40%;max-height: 40%;">
        </div>

        <form class="form-inline text-center" style="padding-top: 5%" action="stock.search" method="get">
            <div class="form-group">
                <div class="row-inline" style="border: none;font-family: 'Microsoft Yahei'">
                    <input type="text" class="form-control" id="result" name="number" placeholder="请输入股票代码" style="width: 70%"/>
                    <input type="text" name="view" value="singleStock" style="display:none"/>
                    <input type="text" name="from" value="frontpage" style="display:none"/>
                    <input type="text" name="isSearch" id="search" value="false" style="display:none;"/>
                    <input class="btn btn-default" type="submit" value="搜索" onclick="showLoading()"/>
                    <%--<p><%=request.getAttribute("message")%></p>--%>
                </div>
            </div>
        </form>

    </div>
    <div class="stage stage2" style="background-color: floralwhite">
        <div class="container">
            <div class="row">

                <div class="col-md-3 text-left" style="margin-top: 20%">
                    <h3 class="h3" style="font-family: 'Yuanti SC';"><strong>行业榜单</strong></h3>
                    <p style="font-family: 'Yuanti SC';">通过对昨日的交易数据进行分析,我们分别选出了位于涨幅和跌幅前三名的行业,希望可以为您提供关于整个行业的大致印象</p>
                </div>

                <div class="col-md-4 col-md-offset-1 text-center">
                    <div style="margin-top: 50%">
                        <table class="table">

                            <thead>
                            <tr style="background-color: #e7c3c3;">
                                <th>#</th>
                                <th style="text-align:center;font-family: 'Yuanti SC';">行业</th>
                                <th style="text-align: center;font-family: 'Yuanti SC';">涨幅</th>
                            </tr>
                            </thead>

                            <tbody>
                            <%
                                List<RiseAndFallVO> riseVOs = (List<RiseAndFallVO>) request.getAttribute("industryRiseList");
                                int i = 0;
                                for (; i < riseVOs.size() && i < 5; i++) {
                                    RiseAndFallVO riseVo = riseVOs.get(riseVOs.size()-i-1);
                                    String riseVoName = riseVo.getName();
                                    String rise = riseVo.getRiseStr();

                            %>
                            <script>
                                alert(<%=riseVoName%>);
                            </script>

                            <tr>
                                <th scope="row"><%=(i+1)%>
                                </th>
                                <td align="center"><%=riseVoName%>
                                </td>
                                <td align="center" style="color:#fa6e6f;"><%=rise%>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                            </tbody>

                        </table>
                    </div>
                </div>

                <div class="col-md-4 text-center">
                    <div style="margin-top: 50%">
                        <table class="table">
                            <thead>
                            <tr style="background-color: #c1e2b3;">
                                <th>#</th>
                                <th style="text-align:center;font-family: 'Yuanti SC'">行业</th>
                                <th style="text-align: center;font-family: 'Yuanti SC';">跌幅</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                List<RiseAndFallVO> fallVOs = (List<RiseAndFallVO>) request.getAttribute("industryFallList");
                                i = 0;
                                for (; i < fallVOs.size() && i < 5; i++) {
                                    RiseAndFallVO fallVO = fallVOs.get(fallVOs.size() - 1 - i);
                                    String fallVOName = fallVO.getName();
                                    String fall = fallVO.getRiseStr();
                            %>
                            <tr>
                                <th scope="row"><%=(i+1)%>
                                </th>
                                <td align="center"><%=fallVOName%>
                                </td>
                                <td align="center" style="color: #1ebfae;"><%=fall%>
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
            <div style="text-align: right;font-family: 'Yuanti SC';">
                <a href="main.allindustry?season=201601" onclick="showLoading()"><i class="btn-info"></i>更多行业</a>
            </div>
        </div>
    </div>

    <div class="stage stage3" style="background-color: floralwhite">
        <div class="container">
            <div class="row">
                <div class="col-md-3 text-left" style="margin-top: 20%">
                    <h3 class="h3" style="font-family: 'Yuanti SC'"><strong>个股榜单</strong></h3>
                    <p style="font-family: 'Yuanti SC';">通过对昨日的交易数据进行分析,我们分别选出了位于涨幅和跌幅前三名的股票,希望可以为您提供关于整个股票市场的大致印象</p>
                </div>

                <div class="col-md-4  col-md-offset-1 text-center">
                    <div style="margin-top: 50%">
                        <table class="table table-striped">
                            <thead>
                            <tr style="background-color: #e7c3c3;">
                                <th>#</th>
                                <th style="text-align:center;font-fmily: 'Yuanti SC';">股票名称</th>
                                <th style="text-align: center;font-family: 'Yuanti SC';">涨幅</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                List<RiseAndFallVO> stockRiseVOs = (List<RiseAndFallVO>) request.getAttribute("stockRiseList");
                                i = 0;
                                for (; i < stockRiseVOs.size() && i < 5; i++) {
                                    RiseAndFallVO stockRiseVO = stockRiseVOs.get(stockRiseVOs.size() - 1 - i);
                                    String stockRiseVOName = stockRiseVO.getName();
                                    String stockRise = stockRiseVO.getRiseStr();
                            %>
                            <tr>
                                <th scope="row"><%=(i+1)%></th>
                                <td align="center"><%=stockRiseVOName%>
                                </td>
                                <td align="center" style="color: #fa6e6f"><%=stockRise%>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div style="margin-top: 50%">
                        <table class="table table-striped">
                            <thead>
                            <tr style="background-color: #c1e2b3;">
                                <th>#</th>
                                <th style="text-align:center;font-family: 'Yuanti SC'">股票名称</th>
                                <th style="text-align: center;font-family: 'Yuanti SC';">跌幅</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                List<RiseAndFallVO> stockFallVOs = (List<RiseAndFallVO>) request.getAttribute("stockFallList");
                                i = 0;
                                for (; i < stockFallVOs.size() && i < 5; i++) {
                                    RiseAndFallVO stockFallVO = stockFallVOs.get(i);
                                    String stockFallVOName = stockFallVO.getName();
                                    String stockFall = stockFallVO.getRiseStr();
                            %>
                            <tr>
                                <th scope="row"><%=(i+1)%>
                                </th>
                                <td align="center"><%=stockFallVOName%>
                                </td>
                                <td align="center" style="color: #1ebfae;"><%=stockFall%>
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
            <div style="text-align: right;font-family: 'Yuanti SC'">
                <a href="sh.allstock?market=sh" onclick="showLoading()"><i class="btn-info"></i>更多股票</a>
            </div>
        </div>
        <div class="row" style="height: 30%">

        </div>
        <div class="row footer">
            <div class="col-md-6 text-left" style="font-family: 'Yuanti SC'">
                Copyright &copy; 2016.AnyQuant All rights reserved.
            </div>
            <div class="col-md-6 text-right">
                Design and Developed by Marvel
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {

        $('#result').autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: "main.fuzzysearch",
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
                $("#result").val(ui.item.value);
                return false;
            },
            select: function (event, ui) {
                $("#result").val(ui.item.value);
                return false;
            },
        });


        $(".wrap").windowScroll({
            'choose': 0,
            'verticalSpeed': 1,
            'objControlUl': '.wrap .stageControl',
            'list': '.wrap .stage',
            'crash': true,
            'liHover': 'stageSelect'
        });

    });

    function showLoading() {
        $(".loading").fadeTo(100, 0.5);
        $('#search').attr('value', "true");
    }
    ;

    //    $(window).load(function() {
    $(".loading").fadeOut(750);
    //    });
</script>

</body>
</html>
