<%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2016/6/9
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'/>
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>

    <link href="css/stock.css" rel="stylesheet"/>
    <script src="js/jquery-2.2.3.min.js"></script>

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
<!--/Error Page-->
<%
    String from = (String) request.getAttribute("from");
    String errorMsg = (String) request.getAttribute("errorMsg");
    String isSearch = (String) request.getAttribute("isSearch");
    String rawNumber = (String) request.getAttribute("rawNumber");
    String href = "";
    if (isSearch != null) {
        //是搜索
        System.out.println("Error:isSearch");
        if (rawNumber != null) {
            href = "back.search" + "?isReturn=true&lastNumber=" + rawNumber + "&from=" + from;
        } else {
            if(from.equals("frontpage")){
                href = "index.return?isReturn=true";
            }else{
                href = "back."+from+ "?isReturn=true";
            }

        }

    } else {
        //不是搜索
        System.out.println("Error:notSearch");
        if (rawNumber != null) {
            href = "back." + from + "?isReturn=true&lastNumber=" + rawNumber;
        } else {
            href = "index.return?isReturn=true";
        }
    }

    System.out.println("error Page:"+href);
    System.out.println("isSearch:"+isSearch);
    System.out.println("rawNumber"+rawNumber);
    System.out.println();
%>
<div class="error_page">
    <!--/error-top-->
    <div class="error-top error">
        <h4 style="font-family: 'Yuanti SC'">Ooop...出错啦</h4>
        <p class="sorry" style="font-family: 'Yuanti SC'"><strong><%=errorMsg%>
        </strong></p>
        <div class="error-btn" onclick="showLoading()">
            <a class="read fourth" href=<%=href%>>Return</a>
        </div>
    </div>

    <!--//error-top-->
</div>
<!--footer section start-->
<div class="footer error">

</div>

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
