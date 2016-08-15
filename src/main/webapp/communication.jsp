<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/8/15
  Time: 下午12:53
  To change this template use File | Settings | File Templates.
  注意!:::::用到的css样式表在joinquant网站查看源文件里找!!!!!!!!!!!!!!!!!!!!!!很关键!!!!
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

                        <a href="" class="item">优选策略</a>
                        <a href="" class="item">我的策略</a>
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
    <!--TODO-->
    <div class="kk_body top_50">

        <div class="community_body with_sidebar">
            <div class="item item_title clearfix">
                <div class="plr_18 tool_bar">
                    <h3 class="title">社 区</h3>
                    <a href="/community/post/edit?tag=new" class="btn btn-default btn_l blue_on_white"
                       style="float:right" target="_blank">发起主题</a>
                    <div class="search-form">
                        <div class="form-group">
                            <span class="icon-search-wrapper " id="btn-search-submit"></span>
                            <span class="hidden icon-close icon-close-wrapper" id="btn-search-del"></span>
                            <input type="text" value="" placeholder="标题/作者/内容" id="search-box" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="tab-container">
                    <div class="post-nav">
                        <table>
                            <tr>
                                <td class="no-border active ">
                                    <a href="communication.jsp" class="track_event_click sort-by sort-by-interesting"
                                       _cate="社区分类" _name="全部">全部</a>
                                </td>

                                <td class=" no-border ">
                                    <a href="/community/algorithm" class="track_event_click sort-by sort-by-interesting"
                                       _cate="社区分类" _name="策略探讨">策略探讨</a>
                                </td>
                                <!--<td class="  ">
                                    <a href="/community/faq" class="track_event_click sort-by sort-by-interesting"
                                       _cate="社区分类" _name="问答">问答</a>
                                </td>

                                <td class="  ">
                                    <a href="/community/python" class="track_event_click sort-by sort-by-interesting"
                                       _cate="社区分类" _name="一起学习">一起学习</a>
                                </td>

                                <td class="  ">
                                    <a href="/community/recommend" class="track_event_click sort-by sort-by-interesting"
                                       _cate="社区分类" _name="聚宽推荐">聚宽推荐</a>
                                </td>-->
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <!--/item_post-->
            <!--<br/>-->
            <div style="overflow:hidden;">
                <div class="item item_body">
                    <div class="list" style="min-height:100px;">
                        <div style="width:auto;float:left">
                            <div class="post-row">
                                <!--<div class="avatar-container" title="朱铭">
                                    <a target="_blank" href="/user/6142888221fa300c35198fadc8029c37">
                                        <img src="https://joinquant-image.b0.upaiyun.com/d4280920ea915a26e5257b5045bc9004"
                                             class="avatar">
                                    </a>
                                </div>-->
                                <div class="post-title">
                                    <!--<div class="container-top">
                                        <i title="置顶" alt="置顶" class="icon-top"></i>
                                    </div>-->
                                    <a class="subtitle" target="_blank" href="/post/2126?tag=new">
                                        【周年庆第二弹】分享策略，赢周年庆礼包~~
                                    </a>
                                    <div class="hidden">
                                        <div>
                                            <p></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="info abstract">
                                作者 <a target="_blank" href="/user/6142888221fa300c35198fadc8029c37" class="user-alias">王梦麟</a>
                                <span class="ml_10">回复 5</span> <span class="ml_10">浏览 202</span>
                                <span class="ml_10">赞 20</span>
                            </div>
                        </div>
                        <!--标签暂时会注释-->
                        <div class="tags_box hidden">
                            <a href="" class="tag">finance theory</a>
                            <a href="" class="tag">finance theory</a>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="list" style="min-height:100px;">
                        <div style="width:auto;float:left">
                            <div class="post-row">
                                <!--<div class="avatar-container" title="aimforever">
                                    <a target="_blank" href="/user/bb7039e63e8908a605a9eef8d6a4306d">
                                        <img src="https://joinquant-static.b0.upaiyun.com/common/img/default_header.png"
                                             class="avatar">
                                    </a>
                                </div>-->
                                <div class="post-title">
                                    <a class="subtitle" target="_blank" href="/post/2118?tag=new">
                                        参数优化
                                    </a>
                                    <div class="hidden">
                                        <div>
                                            <p></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="info abstract">
                                作者 <a target="_blank" href="/user/6142888221fa300c35198fadc8029c37" class="user-alias">王梦麟</a>
                                <span class="ml_10">回复 2</span> <span class="ml_10">浏览 115</span>
                                <span class="ml_10">赞 7</span>
                            </div>
                        </div>
                        <!--标签暂时会注释-->
                        <div class="tags_box hidden">
                            <a href="" class="tag">finance theory</a>
                            <a href="" class="tag">finance theory</a>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <!--/item_body-->
                    <div class="plr_18">
                        <div class="mt_m page_box">
                            <div class="pagination m15 cf f13">
                                <ul class="pagination" id="yw0">
                                    <li class="first nodisplay"><a href="/community?f=home&amp;m=memu">首页</a></li>
                                    <li class="previous nodisplay"><a href="/community?f=home&amp;m=memu">上一页</a></li>
                                    <li class="page selected"><a href="/community?f=home&amp;m=memu">1</a></li>
                                    <li class="page"><a href="/community?f=home&amp;m=memu&amp;page=2">2</a></li>
                                    <li class="page"><a href="/community?f=home&amp;m=memu&amp;page=3">3</a></li>
                                    <li class="page"><a href="/community?f=home&amp;m=memu&amp;page=4">4</a></li>
                                    <li class="page"><a href="/community?f=home&amp;m=memu&amp;page=5">5</a></li>
                                    <li class="page"><a href="/community?f=home&amp;m=memu&amp;page=6">6</a></li>
                                    <li class="page"><a href="/community?f=home&amp;m=memu&amp;page=7">7</a></li>
                                    <li class="page"><a href="/community?f=home&amp;m=memu&amp;page=8">8</a></li>
                                    <li class="page"><a href="/community?f=home&amp;m=memu&amp;page=9">9</a></li>
                                    <li class="page"><a href="/community?f=home&amp;m=memu&amp;page=10">10</a></li>
                                    <li class="next"><a href="/community?f=home&amp;m=memu&amp;page=2">下一页</a></li>
                                    <li class="last"><a href="/community?f=home&amp;m=memu&amp;page=102">尾页</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!--/body-->


        </div>

        <script src="https://joinquant-static.b0.upaiyun.com/common/js/lib.min.js?v=201608151157"></script>

        <script src="https://joinquant-static.b0.upaiyun.com/third/looper/looper.min.js"></script>
        <script src="https://joinquant-static.b0.upaiyun.com/default/js/data.js"></script>

</body>
</html>


