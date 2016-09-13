<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="wangEditor/dist/css/wangEditor.min.css">
    <style type="text/css">
        #div1,#div2 {
            width: 100%;
            height: 250px;
        }
    </style>
    <script type="text/javascript" src="wangEditor/dist/js/lib/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="wangEditor/dist/js/wangEditor.js"></script>

    <%
        String postID = request.getParameter("id");
    %>

    <script type="text/javascript">
        var a="<%=postID%>";
        alert("a="+a);

        $(document).ready(function () {
            $.ajax({
                type: 'GET',
                url: 'getPost.do',
                dataType: 'html',
                cache: false,

                success: function (response) {

                },
                error: function (msg) {

                }
            });
        });

    </script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Post</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">quant+</a>
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
                        <li><a href="strategy.jsp">我的策略</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">虚拟交易 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="SimulatedTrading.jsp">虚拟交易1</a></li>
                        <li><a href="#">虚拟交易2</a></li>
                    </ul>
                </li>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="community.jsp">社区</a></li>
                <li><a href="login.jsp">登陆</a></li>
                <li><a href="register.jsp">注册</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<a href="community.jsp" class="btn btn-primary" role="button" style="margin: 1%">返回主题列表</a>
<div class="panel panel-default" style="margin: 1%">
    <div class="panel-heading">
        <h3 class="panel-title">Panel title</h3>
        <h6>作者+时间+浏览数</h6>
    </div>
    <div class="panel-body">
        文章，1984年6月26日出生于陕西省西安市，中国内地男演员、导演。2006年毕业于中央戏剧学院表演系。
    </div>
    <!-- List group -->
    <button class="glyphicon glyphicon-heart" style="margin: 1%"></button>
    <button class="glyphicon glyphicon-thumbs-up" style="margin: 1%"></button>
    <button class="glyphicon glyphicon-thumbs-down" style="margin: 1%"></button>

    <div class="list-group">
        <a href="#" class="list-group-item">
            <h6 class="list-group-item-heading">作者+时间</h6>
            <p class="list-group-item-text">评论内容</p></a>
        <a href="#" class="list-group-item">
            <h6 class="list-group-item-heading">作者+时间</h6>
            <p class="list-group-item-text">评论内容</p></a>
    </div>
    <div id="div1"></div>
    <a href="#" class="btn btn-primary" role="button" style="margin: 1%">发表评论</a>
</div>
<a href="community.jsp" class="btn btn-primary" role="button" style="margin: 1%">返回主题列表</a>

<!--这里引用jquery和wangEditor.js-->
<script type="text/javascript">
    var editor = new wangEditor('div1');
    editor.create();
</script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>