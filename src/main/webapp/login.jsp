<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/8/15
  Time: 下午2:21
  To change this template use File | Settings | File Templates.注意!:::::用到的css样式表在joinquant网站查看源文件里找!!!!!!!!!!!!!!!!!!!!!!很关键!!!!
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>quant+</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link type='text/css' href="https://joinquant-static.b0.upaiyun.com/common/css/lib.min.css?v=201608151157"
          rel='stylesheet'></link>
    <link type='text/css' href="https://joinquant-static.b0.upaiyun.com/common/css/common.min.css?v=201608151157"
          rel='stylesheet'></link>
    <link rel="icon" href="https://joinquant-static.b0.upaiyun.com/common/img/favicon-16-16.png?v=2"
          type="image/x-icon">

    <!-- <link type='text/css'  href="https://joinquant-static.b0.upaiyun.com/third/looper/looper.min.css?v=201608151157" rel='stylesheet'/> -->
    <link type='text/css' href="https://joinquant-static.b0.upaiyun.com/default/css/style.min.css?v=201608151157"
          rel='stylesheet'/>
    <style>
        body {
            background-color: #fff
        }

        #kk_nav {
            background-color: #000000;
        }

        .in_body .banner {
            background-color: #ffffff;
        }

        #kk_nav .nav a {
            padding: 35px 27px 17px 27px;
            font-size: 15px;
            -webkit-font-smoothing: auto
        }

        #kk_nav .nav a .bor {
            transition: .5s ease all;
            display: inline-block;
            border: 2px solid #fff;
            border-radius: 3px;
            position: absolute;
            width: 70px;
            height: 40px;
            margin-left: -35px;
            margin-top: -10px;
            left: 50%;
            top: 50%;
        }

        #kk_nav .nav a:hover .bor {
            border-color: rgba(255, 255, 255, .3);
        }

        #kk_nav .nav .submenu a {
            padding: 0 0 0 10px
        }

        #kk_nav .nav a:hover, #kk_nav .nav a:focus {
            color: rgba(255, 255, 255, .3);
            background-color: transparent;
        }

        #kk_nav .navbar-brand {
            background: url(images/index/logo.png) no-repeat;
            background-size: 100%;
            width: 400px;
            height: 60px;
            margin-top: 10px;
        }

        #kk_nav .navbar-brand-mob {
            margin-top: 15px;
        }

        #kk_nav .nav .message-badge-nav {
            top: 26px;
        }

        .new.btn-default {
            border: 2px solid #fff;
            background: none;
            color: #fff;
            box-sizing: border-box;
            width: 132px;
            height: 45px;
            padding-top: 7px;
        }

        @media (max-width: 1225px) {
            #kk_nav .nav a {
                padding-left: 20px;
            }
        }

        @media (max-width: 1170px) {
            #kk_nav .nav a {
                padding: 33px 13px;
            }

            #kk_nav .nav a .bor {
                margin-top: -20px;
            }
        }

        @media (max-width: 970px) {
            #kk_nav .nav a {
                padding: 33px 6px;
            }

            #kk_nav .nav a .bor {
                width: 50px;
                margin-left: -25px
            }
        }

        @media (max-width: 870px) {
            #kk_nav .navbar-brand {
                width: 160px;
            }

            #kk_nav .nav a {
                padding-top: 28px;
            }
        }

        @media (max-width: 767px) {
            #kk_nav .navbar-brand {
                width: 160px;
                background-size: 80%;
            }

            #kk_nav .nav a .bor {
                display: none
            }
        }
    </style>

    <style>
    </style>
</head>
<body>

<div class="kk_main in_wrap">

    <header id="kk_nav" class=" kk_nav navbar narbar-static-top">
        <!-- <div class="container"> -->
        <div class="navbar-header">
            <button id="btn_menu" class="navbar-toggle" type="button" data-toggle="collapse" data-target='#kk_navbar'>
                <span class="sr-only">Toggle nav</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/?f=home&m=logo" title='joinQuant' class="navbar-brand "></a>
        </div>
        <nav id="kk_navbar" class="kk_navbar collapse navbar-collapse" aria-expanded='false'>
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp">首页</a></li>

                <li data-step="5" data-intro="策略研究" data-position='bottom'>
                    <a href="javascript:void(0)">策略研究</a>

                    <div class="submenu" id="research">
                        <span class="sanjiao"></span>

                        <a href="modelStrategy.jsp" class="item">优选策略</a>
                        <a href="strategyList.jsp" class="item">我的策略</a>
                    </div>
                </li>

                <li data-step="5" data-intro="实盘交易" data-position='bottom'>
                    <a href="javascript:void(0)">实盘交易</a>

                    <div class="submenu" id="jiaoyi">
                        <span class="sanjiao"></span>

                        <a href="" class="item">实盘账户</a>
                        <a href="" class="item">我的交易</a>
                    </div>
                </li>

                <li><a href="">常见问题</a></li>

                <li data-step="6" data-intro="查看其它小伙伴分享的策略" data-position='bottom'>
                    <a href="communication.jsp">社区</a>
                </li>

                <li><a href="login.jsp">登录</a></li>
                <li><a href="register.jsp">注册</a></li>
            </ul>
        </nav>
        <!-- </div> -->
    </header>

    <!--/header-->
    <div class="kk_body top_50">
        <div class="kk_main signup_wrap container mb_30">
            <h2 class="signup_header clearfix"><a href="register.jsp"
                                                  class="btn btn-md btn-default pull-right btn_gray">还没有账号？立即注册</a></h2>
            <div class="form_pane">
                <h1 class="text-center form_title">登陆</h1>
                <form class='kkform' name="UserModel" autocomplete="off">
                    <input class='hidden' type="text"/>
                    <input class='hidden' type="password"/>

                    <div class="relative">
                        <div class="form-group form-group-lg">
                            <input type="password" id="password" name="UserModel[pwd]" class="form-control"
                                   placeholder="用户名">
                        </div>
                    </div>

                    <div class="relative">
                        <div class="form-group form-group-lg">
                            <input type="昵称" name="UserModel[alias]" class="form-control" placeholder="密码">
                        </div>
                    </div>

                    <button class="btn btn-primary btn-block btn-lg" id="btnSubmit" type="submit" disabled>注册</button>

                </form>
            </div>
            <!--/body-->


        </div>

        <script src="https://joinquant-static.b0.upaiyun.com/common/js/lib.min.js?v=201608151157"></script>
        <script src="https://joinquant-static.b0.upaiyun.com/third/looper/looper.min.js"></script>
        <script src="https://joinquant-static.b0.upaiyun.com/default/js/data.js"></script>
    </div>
</div>
</body>
</html>


