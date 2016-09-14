<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/8/15
  Time: 下午2:21
  To change this template use File | Settings | File Templates.注意!:::::用到的css样式表在joinquant网站查看源文件里找!!!!!!!!!!!!!!!!!!!!!!很关键!!!!
--%>
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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>newPost</title>
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

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
                        <li><a href="SimulatedTrading.jsp">虚拟交易1</a></li>
                        <li><a href="#">虚拟交易2</a></li>
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

<!--/header-->
<div class="panel panel-default" style="margin: 3% 3%">
    <div class="panel-heading">
        <h3 class="panel-title">发起主题</h3>
    </div>
    <div class="panel-body">
        <!--/item_title-->
        <label>标 题</label>
        <div class="row">
            <div class="col-md-2">
                <select class="form-control" id="postType">
                    <option value="model">模型交流</option>
                    <option value="bug">bug反馈</option>
                    <option value="invest" _alias="algorithm">投资教学</option>
                    <option value="news" _alias="algorithm">新闻快递</option>
                    <option value="operation" _alias="algorithm">操作使用</option>
                    <option value="other">其他问题</option>
                </select>
            </div>
            <div class="col-md-5">
                <input type="text" name="PostModel[title]" value=""
                       id="postTitle" class="form-control"
                       placeholder="请输入主题标题">
            </div>
        </div>
        <label>内 容</label>
        <div id="div1"></div>
        <a href="community.jsp" id="btn1"
           class="btn btn-primary"
           role="button" style="margin: 1.5%">发起主题</a>
    </div>
</div>
    <!--这里引用jquery和wangEditor.js-->
    <script type="text/javascript">
        var editor = new wangEditor('div1');
        editor.create();

        $('#btn1').click(function () {
            // 获取编辑器区域完整html代码
            var html = editor.$txt.html();
            // 获取编辑器纯文本内容
            var text = editor.$txt.text();
            // 获取格式化后的纯文本
            var formatText = editor.$txt.formatText();

            var postType = $('#postType').find('option:selected').val();
            var ipt = document.getElementById('postTitle');
            var postTitle = ipt.value;

            $.ajax({
                type: 'POST',
                url: 'inputPost.do',
                data:{
                    inputHtml : html,
                    inputText : text,
                    inputFormatText : formatText,
                    postType : postType,
                    postTitle : postTitle
                },
                cache: false,

                success: function (response) {
                   alert("input success")
                }

            });
        });
    </script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>


