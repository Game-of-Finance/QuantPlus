<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>虚拟交易</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/navbar.css" rel="stylesheet">
    <style>
        .jumbotron{
            background:url(images/jumu.jpeg);
            width: auto;
            height: auto;
        }
    </style>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
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
            <%--<a class="navbar-brand" href="#"><img src="images/index/logo.png" style="width: auto;height: auto"></a>--%>
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
                        <li class="active"><a href="SimulatedTrading.jsp">虚拟交易</a></li>
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
<a class="btn btn-primary" href="startNewTrading.jsp" style="margin-left: 5%" role="button">新建虚拟交易</a>
<a class="btn btn-primary" href="test.jsp" style="margin-left: 5%" role="button">test</a>
<div class="panel-body" style="margin: 1%">
    <ul class="nav nav-tabs" role="tablist">
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#all-live" role="tab" data-toggle="tab">全部</a></li>
        <li role="presentation"><a href="#time" role="tab" data-toggle="tab">进行中</a></li>
        <li role="presentation"><a href="#model" role="tab" data-toggle="tab">已关闭</a></li>
    </ul>
    <!-- Tab panes -->
    <!--择股设置-->
    <div class="tab-content" >
        <div role="tabpanel" class="tab-pane active" id="all-live">

        </div>
        <div role="tabpanel" class="tab-pane active" id="running-live"></div>
        <div role="tabpanel" class="tab-pane active" id="stop-live"></div>
    </div>
</ul>
</div>
</div>
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>