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


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>

    <link href="bootstrap/css/navbar.css" rel="stylesheet">

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
            <a class="navbar-brand" href="#">quant+</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="index.html">首页</a></li>
                <!--<li><a href="#">Link</a></li>-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">策略研究 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="test2.html">优选策略</a></li>
                        <li><a href="test.html">我的策略</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">虚拟交易 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="community.html">社区</a></li>
                <li><a href="login.html">登陆</a></li>
                <li><a href="register.html">注册</a></li>
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
            <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
            <a href="startNewPost.jsp">发起主题</a>
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
            <li role="presentation"><a href="#tab4" role="tab" data-toggle="tab">投资教学</a></li>
            <li role="presentation"><a href="#tab5" role="tab" data-toggle="tab">新闻快递</a></li>
            <li role="presentation"><a href="#tab6" role="tab" data-toggle="tab">操作使用</a></li>
            <li role="presentation"><a href="#tab7" role="tab" data-toggle="tab">其他问题</a></li>
        </ul>
        <div class="tab-content">
            <!--全部-->
            <div role="tabpanel" class="tab-pane active" id="tab1">
                <table class="table table-hover">
                    <div class="list-group">
                        <a href="post.jsp" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                            <h6 class="list-group-item-heading">作者+时间</h6>
                            <p class="list-group-item-text">文章内容</p></a>
                        <a href="post.jsp" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                            <h6 class="list-group-item-heading">作者+时间</h6>
                            <p class="list-group-item-text">文章内容</p></a>
                        <a href="#" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                            <h6 class="list-group-item-heading">作者+时间</h6>
                            <p class="list-group-item-text">文章内容</p></a>
                        <a href="#" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                            <h6 class="list-group-item-heading">作者+时间</h6>
                            <p class="list-group-item-text">文章内容</p></a>
                    </div>
                </table>
            </div>
            <!--精品区-->
            <div role="tabpanel" class="tab-pane" id="tab2">
                <a href="#" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                    <h6 class="list-group-item-heading">作者+时间</h6>
                    <p class="list-group-item-text">文章内容</p></a>
            </div>
            <!--模型交流-->
            <div role="tabpanel" class="tab-pane" id="tab3">
                <a href="#" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                    <h6 class="list-group-item-heading">作者+时间</h6>
                    <p class="list-group-item-text">文章内容</p></a>
                <a href="#" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                    <h6 class="list-group-item-heading">作者+时间</h6>
                    <p class="list-group-item-text">文章内容</p></a>
            </div>
            <!--投资教学-->
            <div role="tabpanel" class="tab-pane" id="tab4">
                <a href="#" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                    <h6 class="list-group-item-heading">作者+时间</h6>
                    <p class="list-group-item-text">文章内容</p></a>
            </div>
            <!--新闻快递-->
            <div role="tabpanel" class="tab-pane" id="tab5">
                <a href="#" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                    <h6 class="list-group-item-heading">作者+时间</h6>
                    <p class="list-group-item-text">文章内容</p></a>
                <a href="#" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                    <h6 class="list-group-item-heading">作者+时间</h6>
                    <p class="list-group-item-text">文章内容</p></a>
                <a href="#" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                    <h6 class="list-group-item-heading">作者+时间</h6>
                    <p class="list-group-item-text">文章内容</p></a>
            </div>
            <!--操作使用-->
            <div role="tabpanel" class="tab-pane" id="tab6">
                <a href="#" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                    <h6 class="list-group-item-heading">作者+时间</h6>
                    <p class="list-group-item-text">文章内容</p></a>
            </div>
            <!--其他问题-->
            <div role="tabpanel" class="tab-pane" id="tab7">
                <a href="#" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                    <h6 class="list-group-item-heading">作者+时间</h6>
                    <p class="list-group-item-text">文章内容</p></a>
                <a href="#" class="list-group-item"><span class="badge">浏览数</span><h4 class="list-group-item-heading">List group item heading</h4>
                    <h6 class="list-group-item-heading">作者+时间</h6>
                    <p class="list-group-item-text">文章内容</p></a>
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