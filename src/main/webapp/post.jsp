<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="wangEditor/dist/css/wangEditor.min.css">
    <style type="text/css">
        #div1, #div2 {
            width: 100%;
            height: 250px;
        }
    </style>
    <script type="text/javascript" src="wangEditor/dist/js/lib/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="wangEditor/dist/js/wangEditor.js"></script>

    <%--获取community界面里超链接的参数--%>
    <%
        String postID = request.getParameter("id");
    %>

    <script type="text/javascript">
        <%--让JS获取上面JAVA里的参数--%>
        var id = "<%=postID%>";

        // 根据获取的帖子ID进行URL请求,获取帖子的内容
        $(document).ready(function () {
            $.ajax({
                type: 'GET',
                url: 'getOnePost.do',
                data: {
                    postID: id
                },
                dataType: 'json',
                cache: false,

                success: function (response) {
                    // 获取到的帖子
                    var onePost = response.returnPost;
                    // 帖子基本信息
                    var title = onePost.basicInfo.title;
                    var author = onePost.basicInfo.author;
                    var time = onePost.basicInfo.date;
                    var topic = onePost.basicInfo.topic;

                    // 帖子内容
                    var content = onePost.content;

                    // 评论内容
                    var postViews = onePost.views;
                    var viewsNum = postViews.viewsNum;
                    var thanks = postViews.thanks;
                    var likes = postViews.likes;
                    var disagrees = postViews.disagrees;

                    // 评论列表
                    var commentList = postViews.commentList;

                    // 添加主题内容
                    var webContent = document.getElementById("post-content");
                    webContent.innerHTML = content;
                    // 添加基本信息
                    var webBasic = document.getElementById("post-basic");
                    webBasic.innerHTML = "<h6 class='list-group-item-heading' >" +
                            "作者：" + author + "时间:" + getFormatTime(time) + "浏览数" + viewsNum + "</h6>";

                    // 添加评论信息
                    var webViews = document.getElementById("post-views");
                    for (var i = 0; i < webViews.length; i++) {
                        var oneView = webViews[i];
                        var comtAuthor = oneView.author;
                        var comtDate = oneView.date;
                        var comtContent = oneView.content;
                        // 创建a标签
                        var newNode = document.createElement("a");
                        newNode.innerHTML = "<a href='#' class='list-group-item'>" +
                                "<h6 class='list-group-item-headin'>" + comtAuthor + " " + comtDate + "</h6>" +
                                "<p class='list-group-item-text'>"+comtContent+"</p>" +
                                "</a>";
                        webViews.appendChild(newNode);
                    }
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
                <li><a href="community.jsp">社区</a></li>
                <li><a href="login.jsp">登陆</a></li>
                <li><a href="register.jsp">注册</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<a href="community.jsp" class="btn btn-primary" role="button" style="margin: 1%">返回主题列表</a>
<div class="panel panel-default" style="margin: 1%">
    <div class="panel-heading" id="post-basic">
        <h3 class="panel-title">Panel title</h3>

    </div>
    <div class="panel-body" id="post-content"></div>

    <!-- List group -->
    <button class="glyphicon glyphicon-heart" style="margin: 1%"></button>
    <button class="glyphicon glyphicon-thumbs-up" style="margin: 1%"></button>
    <button class="glyphicon glyphicon-thumbs-down" style="margin: 1%"></button>

    <div class="list-group" id="post-views">


    </div>
    <div id="div1"></div>
    <a href="#" id="btn1" class="btn btn-primary" role="button" style="margin: 1%">发表评论</a>
</div>
<a href="community.jsp" class="btn btn-primary" role="button" style="margin: 1%">返回主题列表</a>

<!--这里引用jquery和wangEditor.js-->
<script type="text/javascript">
    var editor = new wangEditor('div1');
    editor.create();

    // 获取编辑器纯文本内容
    var text = editor.$txt.text();


    $('#btn1').click(function () {
        // 获取编辑器区域完整html代码
        var html = editor.$txt.html();
        // 获取编辑器纯文本内容
        var text = editor.$txt.text();
        // 获取格式化后的纯文本
        var formatText = editor.$txt.formatText();
        var id = "<%=postID%>";

        var author = "test_viewer";
        $.ajax({
            type: 'POST',
            url: 'inputComment.do',
            data:{
                inputHtml : html,
                inputText : text,
                inputFormatText : formatText,
                postID : id,
                author : author
            },
            cache: false,

            success: function (response) {
                var viewDiv = document.getElementById('post-views');
                var newNode = document.createElement("a");//创建a标签
                newNode.innerHTML = "<a href='#' class='list-group-item'>" +
                        "<h6 class='list-group-item-heading' >" + "作者："+author + " 时间:" + getFormatTime(time) + "</h6>" +
                        "<p class='list-group-item-text' >" + "内容：<br />"  + content + "</p>" +
                        "</a>";
                viewDiv.appendChild(newNode);
            }

        });
    });

</script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>