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
    <link rel="stylesheet" type="text/css" href="wangEditor/dist/css/wangEditor.min.css">
    <style type="text/css">
        #div1,#div2 {
            width: 100%;
            height: 250px;
        }
    </style>
    <script type="text/javascript" src="wangEditor/dist/js/lib/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="wangEditor/dist/js/wangEditor.js"></script>
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
        <div class="community_body new">
            <form name="PostModel" class="form_pane" novalidate="novalidate">
                <input type="hidden" name="PostModel[postId]" value="">

                <div class="item item_title">
                    <h3 class="title pb_0i">发起主题</h3>
                </div>
                <!--/item_title-->
                <div class="item item_head item_title">
                    <div class="form_label">
                        <label>标 题</label>
                        <span class="tip"></span>
                    </div>
                    <div class="form-group form-group-lg">
                        <select class="selectpicker" id="tag-select" name="PostModel[tagId]">
                            <option value="3" _alias="algorithm">策略探讨</option>
                            <%--<option value="10" _alias="faq">问答</option>--%>
                            <%--<option value="9" _alias="python">一起学习</option>--%>
                        </select>
                        <input type="text" name="PostModel[title]" value="" id="title" class="title_input form-control"
                               placeholder="请输入主题标题">
                    </div>
                </div>
                <!--/item_head-->
                <div class="item item_detail">
                    <div class="form_label">
                        <label>内 容</label>
                        <span class="tip"></span>
                    </div>
                    <div id="div1">
                        <%--<p>请输入内容...</p>--%>
                    </div>

                    <%--<div class="form-group form-group-lg">--%>
                        <%--<div id="wmd-button-bar"></div>--%>
                        <%--<input type="hidden" name="PostModel[atUsers]" value="" id="atUsers">--%>
                        <%--<textarea class="form-control wmd-input" rows="8" id="wmd-input" name="PostModel[content]"--%>
                                  <%--value=""></textarea>--%>
                        <%--<span class="tip">内容编辑使用MarkDown语法。<a target="_blank" href="http://segmentfault.com/markdown">查看编写帮助</a></span>--%>
                    <%--</div>--%>
                </div>
                <%--<div class="item item_others">--%>
                    <%--<div class="form_label">--%>
                        <%--<label>回 测</label>--%>
                        <%--<!----%>
                        <%--<span class="tip">可以在主题中插入一个回测实例.</span>--%>
                        <%---->--%>
                    <%--</div>--%>
                    <%--<div class="form-group form-group-lg relative">--%>
                        <%--<input type="hidden" name="PostModel[backtestId]" value="0" id="backtestId">--%>
                        <%--<input type="text" name="PostModel[backtestName]" class="form-control" id="backtestName"--%>
                               <%--value="" placeholder="所选回测的结果会插入到主题中">--%>
                        <%--<span class="remove-attachment-link hidden" id="btn-backtest-remove"--%>
                              <%--title="点击将回测从主题中删除"> </span>--%>
                        <%--<button id="btn-select-backtest" class="btn btn-default input_addon" type="button"--%>
                                <%--disabled="disabled">选 择--%>
                        <%--</button>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="item item_others">--%>
                    <%--<div class="form_label">--%>
                        <%--<label>研 究</label>--%>
                    <%--</div>--%>
                    <%--<div class="form-group form-group-lg relative">--%>
                        <%--<input type="hidden" name="PostModel[notebookReport]" value="" id="notebookReport">--%>
                        <%--<input type="text" name="PostModel[notebookPath]" class="form-control" id="notebookPath"--%>
                               <%--value="" placeholder="所选研究的结果会插入到主题中">--%>
                        <%--<span class="remove-attachment-link hidden" id="btn-notebook-remove"--%>
                              <%--title="点击将研究从主题中删除"> </span>--%>
                        <%--<button id="btn-select-notebook" class="btn btn-default input_addon" type="button">选 择</button>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <!--/item_others-->
                <div class="item item_submit clearfix">
                    <div class="form-group form-group-lg">
                        <div class="pull-right post-submit">
                            <!--
                            <a href="/community/post/list" class="btn btn-link f18 link_gray nounderline mr_10">取 消</a>
                            -->
                            <%--<button id="btn-preview"--%>
                                    <%--class="btn btn-default btn_l blue_on_white mr_20 btn-preview disabled"--%>
                                    <%--type="button">预 览--%>
                            <%--</button>--%>
                            <button id="btn-submit" title="需要输入标题与内容"
                                    class="btn btn-default btn_l blue_on_white mr_20 disabled" type="button">提 交
                            </button>
                        </div>
                    </div>
                </div>
                <!--/item_others-->
            </form>
        </div>

    </div>


    <!--这里引用jquery和wangEditor.js-->
    <script type="text/javascript">
        var editor = new wangEditor('div1');
        editor.create();
    </script>
    <script src="https://joinquant-static.b0.upaiyun.com/common/js/lib.min.js?v=201608151157"></script>
    <script src="https://joinquant-static.b0.upaiyun.com/third/looper/looper.min.js"></script>
    <script src="https://joinquant-static.b0.upaiyun.com/default/js/data.js"></script>
</div>
</div>
</body>
</html>


