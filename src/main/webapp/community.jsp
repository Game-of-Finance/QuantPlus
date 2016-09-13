<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>LOF Index</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <script type="text/javascript" src="js/jquery-3.1.0.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="bootstrap/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>

    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>

    <link href="bootstrap/css/navbar.css" rel="stylesheet">

    <script type="text/javascript">
        function getFormatTime(nS) {
            var date = new Date(nS);
            var year = date.getFullYear();
            var month = date.getMonth() + 1;
            var day = date.getDate();
            return year + "-" + month + "-" + day;
        }

        $(document).ready(function () {
            $.ajax({
                type: 'GET',
                url: 'getPostList.do',
                dataType: 'json',
                cache: false,

                success: function (response) {
                    var list = response.postList;
                    for (var i = 0; i < list.length; i++) {
                        var onePost = list[i];
                        var id = onePost.basicInfo.postID;
                        var title = onePost.basicInfo.title;
                        var author = onePost.basicInfo.author;
                        var time = onePost.basicInfo.date;
                        var topic = onePost.basicInfo.topic;
                        var content = onePost.content;
                        var postViews = onePost.views;
                        var newNode = document.createElement("a");//创建a标签
                        newNode.innerHTML = "<a href='post.jsp?id=" + id + "' class='list-group-item'>" +
                                "<span class='badge'>postViews</span>" +
                                "<h4 class='list-group-item-heading'>" + title + "</h4>" +
                                "<h6 class='list-group-item-heading' >" + "作者：" + author + "<br />时间:" + getFormatTime(time) + "</h6>" +
                                "<p class='list-group-item-text' >" + "内容：<br />" + topic + content + "</p>" +
                                "</a>";
                        var cloneNode = newNode.cloneNode(true);
                        document.getElementById('table_all').appendChild(cloneNode);
                        switch (topic) {
                            case "value":document.getElementById('table_value').appendChild(newNode);break;
                            case "model":document.getElementById('table_model').appendChild(newNode);break;
                            case "bug":document.getElementById('table_bug').appendChild(newNode);break;
                            case "invest":document.getElementById('table_invest').appendChild(newNode);break;
                            case "news":document.getElementById('table_news').appendChild(newNode);break;
                            case "operation":document.getElementById('table_operation').appendChild(newNode);break;
                            case "other":document.getElementById('table_other').appendChild(newNode);break;
                        }

                    }
                },
                error: function (msg) {

                }
            });

        });

    </script>

    <![endif]-->
</head>

<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
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
                <li class="active"><a href="community.jsp">社区</a></li>
                <li><a href="login.jsp">登陆</a></li>
                <li><a href="register.jsp">注册</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="row">
    <div class="row">
        <div class="col-md-1">

        </div>
        <div class="col-md-9">
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
        <div class="col-md-2">
            <a href="startNewPost.jsp" class="btn btn-primary" role="button" style="margin: 1.5%">发起主题</a>
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-body">

        <!--tab 1-8:全部 精品区 模型交流 投资教学 新闻快递 操作使用 其他问题-->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#tab1" role="tab" data-toggle="tab">全部</a></li>
            <li role="presentation"><a href="#tab2" role="tab" data-toggle="tab">精品区</a></li>
            <li role="presentation"><a href="#tab3" role="tab" data-toggle="tab">模型交流</a></li>
            <li role="presentation"><a href="#tab4" role="tab" data-toggle="tab">bug反馈</a></li>
            <li role="presentation"><a href="#tab5" role="tab" data-toggle="tab">投资教学</a></li>
            <li role="presentation"><a href="#tab6" role="tab" data-toggle="tab">新闻快递</a></li>
            <li role="presentation"><a href="#tab7" role="tab" data-toggle="tab">操作使用</a></li>
            <li role="presentation"><a href="#tab8" role="tab" data-toggle="tab">其他问题</a></li>
        </ul>
        <div class="tab-content">
            <!--全部-->
            <div role="tabpanel" class="tab-pane active" id="tab1">
                <div class="list-group" id="table_all"></div>
            </div>
            <!--精品区-->
            <div role="tabpanel" class="tab-pane" id="tab2">
                <div class="list-group" id="table_value"></div>
            </div>
            <!--模型交流-->
            <div role="tabpanel" class="tab-pane" id="tab3">
                <div class="list-group" id="table_model"></div>
            </div>
            <!--bug反馈-->
            <div role="tabpanel" class="tab-pane" id="tab4">
                <div class="list-group" id="table_bug"></div>
            </div>
            <!--投资教学-->
            <div role="tabpanel" class="tab-pane" id="tab5">
                <div class="list-group" id="table_invest"></div>
            </div>
            <!--新闻快递-->
            <div role="tabpanel" class="tab-pane" id="tab6">
                <div class="list-group" id="table_news"></div>
            </div>
            <!--操作使用-->
            <div role="tabpanel" class="tab-pane" id="tab7">
                <div class="list-group" id="table_operation"></div>
            </div>
            <!--其他问题-->
            <div role="tabpanel" class="tab-pane" id="tab8">
                <div class="list-group" id="table_other"></div>
            </div>
        </div>
        <nav>
            <ul class="pagination">
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </nav>
    </div>
</div>


<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>