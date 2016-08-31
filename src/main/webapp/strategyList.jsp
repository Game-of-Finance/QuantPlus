<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/8/30
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
    <div class="mainpage-container algo-list">
        <div class="container bg-white algo-feed margin_20t">
            <div class="inline-block algo-toolbar" >
                <div class="algo-title backtest-header klavika inline-block">
                    策略列表
                </div>
                <div class="btn-group inline-block margin_20l">
                    <a id="new-algo-button" href="startNewstrategy.jsp" target="_blank">新建策略</a>
                    <%--<a id="new-algo-button" href="login.jsp" data-toggle="modal" class="btn btn-small btn-primary inline-block margin_15l" target="_blank">新建策略</a>--%>
                </div>
                <div class="btn-group inline-block">
                    <btn id="del-algorithm" class="btn btn-small algo-delete-button disabled">
                        <i class="icon icon-trash"></i>
                        删除
                    </btn>
                </div>
                <div class="alg-bbs">
                    <a href="modelStrategy.jsp" target="_blank">优选策略</a>
                </div>
            </div>
            <div class="search-form">
                <div class="form-group">
                    <span class="icon-search-wrapper " id="btn-search-submit"></span>
                    <span class="hidden icon-close icon-close-wrapper" id="btn-search-del"></span>
                    <input type="text" value="" placeholder="策略名称" id="search-box" class="form-control">
                </div>
            </div>
            <div class="margin_15t" style="text-align:center">
                <table id="algo_table" delete-button-id="algo-delete-button" class="table checkbox-table checkbox-done">
                    <thead>
                    <tr><td>
                        <input type="checkbox" id="selectAll">
                    </td>
                        <td>名称</td>
                        <td>最后修改时间</td>
                        <td>历史回测</td>
                        <td></td>
                    </tr></thead>
                    <tbody>
                    <tr >
                        <td _algorithmId="170038"><input type="checkbox"></td>
                        <td class="align-left">
                            <a href="/algorithm/index/edit?algorithmId=1fcb3f1d35bb47973b40ccb630310e09" class="black" target="_blank">这是一个简单的策略</a>
                        </td>
                        <td>2016-08-16 10:01:53</td>
                        <td>
                            0
                        </td>
                        <td>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

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


