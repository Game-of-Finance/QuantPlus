<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/8/15
  Time: 下午12:53
  To change this template use File | Settings | File Templates.
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
                <li class="active"><a href="">首页</a></li>

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
                    <a href="">社区</a>
                </li>

                <li><a href="">登录</a></li>

                <li><a href="">注册</a></li>
            </ul>
        </nav>
        <!-- </div> -->
    </header>

    <!--/header-->
    <div class="kk_body ">
        <div class="in_body">
            <div id="carousel-example-generic" class="carousel slide relat ive" data-ride="carousel"
                 style="background-color:#000000">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="banner item active ">
                        <div class="banner_o"><img class="fleft"
                                                   src="images/index/slide01.png"
                                                   alt="">
                            <!--<div class="text-center fright" style=" position: relative;top: 183px;"><a
                                    href="/algorithm/index/new" class="btn btn-default btn_l btn_start"
                                    style="display:block;width:132px;margin-bottom:10px" target="_blank">编写策略</a><a
                                    href="/faq?f=home&m=banner" class="btn btn-default btn_l btn_start new"
                                    style="margin-left:12px;display:block;width:132px;margin-left:0" target="_blank">新人必读</a>
                            </div>-->
                        </div>
                    </div>
                    <div class="banner item " style="text-align:center">
                        <div class="banner_t" style="z-index:2">
                            <img class="fleft" src="images/index/slide01.png"
                                 alt="" style="margin-right:20px">
                            <!--<div class="text-center fright" style="">
                                <div class="row"><h1 class="title" style="font-size:40px">分享策略，赢周年庆礼包</h1></div>
                                <a href="https://www.joinquant.com/post/2126?f=home&m=banner"
                                   class="btn btn-default btn_l btn_start"
                                   style="width:132px;width:132px;position:relative;bottom:-77px">活动规则</a>
                                <a href="https://www.joinquant.com/algorithm/trade/list?f=home&m=banner"
                                   class="btn btn-default btn_l btn_start new"
                                   style="margin-left:12px;width:132px;position:relative;bottom:-77px">分享策略</a>
                            </div>-->
                        </div>
                        <div class="container numbers">
                            <div class="bg_num_cont">
                                <span class="num num1 blur2">$</span>
                                <span class="num num2 blur2">$</span>
                                <span class="num num3">$</span>
                                <span class="num num4">$</span>
                                <span class="num num5 blur2">$</span>
                                <span class="num num6 blur2">$</span>
                                <span class="num num7">$</span>
                                <span class="num num8">$</span>
                                <span class="num num9 blur1">$</span>
                            </div>
                        </div>
                    </div>
                    <div class="banner item" style="text-align:center">
                        <div class="banner_thr">
                            <img class="fright" src="images/index/slide01.png"
                                 alt="" style="">
                            <!--<div class="text-center fleft" style="">
                                <a href="https://www.joinquant.com/post/1988?f=home&m=banner"
                                   class="btn btn-default btn_l btn_start new"
                                   style="margin-left:12px;width:132px;width:132px;position:relative;bottom:-77px;left:300px">活动规则</a>

                            </div>-->
                        </div>
                    </div>
                </div>
            </div>

            <!--/banner-->

        </div>

        <!--<script src="https://joinquant-static.b0.upaiyun.com/third/jquery.min.js"></script>
        <script>
            var indexObj = {
                init: function () {
                    this.calcNum();
                    this.moveNum();
                },
                calcNum: function () {
                    // $('.bg_num_cont').each(function(){
                    //   var $num = $(this).find('.num');
                    //   var len = $num.length;
                    //   //开始随机数
                    //   var randData = [11.21,0.43,302.23,4.78,35.23,106.11,7.44,10.21,11.98];
                    //   //自定义随机时间
                    //   var timeData = [550,200,100,1000,2000,140,1200,800,90];
                    //   for(var i =0;i<len;i++){
                    //       (function(i){
                    //           setInterval(function(){
                    //               randData[i] += 0.01;
                    //               $num.eq(i).text(randData[i].toFixed(2));
                    //           },timeData[i]);
                    //       })(i);
                    //   }
                    // });
                },
                //跟随鼠标移动
                moveNum: function () {
                    $('.bg_num_cont').each(function () {
                        var $num = $(this).find('.num');
                        var $banner = $(".banner");
                        $banner.on('mousemove', function (event) {
                            var centerX = $banner.width() / 2;
                            var centerY = $banner.height() / 2;
                            var x = event.offsetX,
                                    y = event.offsetY;
                            var newStyle = {'transform': 'translate3D(' + parseInt(-(x - centerX) / 60) + 'px,' + parseInt(-(y - centerY) / 60) + 'px,' + parseInt(y / 50) + 'px)'};
                            $num.css(newStyle)
                        })
                    });
                }
            }
            indexObj.init();
        </script>-->

    </div>
    <!--/body-->


</div>

<script>
    var g_staticHost = 'https://joinquant-static.b0.upaiyun.com';
    var g_isBackToTop = true;
    var g_isMobile = false;

    var g_isLogin = false;
</script>
<script src="https://joinquant-static.b0.upaiyun.com/common/js/lib.min.js?v=201608151157"></script>


<script>
    $('.dropdown-toggle').dropdown();
    $("body").delegate("a", "click", function () {
        if ($(this)[0].hostname.length > 0 && $(this)[0].hostname != window.location.hostname) {
            window.open($(this)[0].href);
            return false;
        }
    });

    function addUserIcon() {
        var user = {
            "莫邪的救赎": '<i class="icon icon-trophy icon-trophy-gold" title="2015年最受欢迎策略冠军"></i>',
            "Waiting": '<i class="icon icon-trophy icon-trophy-silver" title="2015年最受欢迎策略亚军"></i>',
            "kuhn": '<i class="icon icon-trophy icon-trophy-copper" title="2015年最受欢迎策略季军"></i>',
            "胡庆平": '<i class="icon icon-trophy icon-trophy-gold" title="2015年圣诞节最受欢迎策略冠军"></i>',
            "Kris": '<i class="icon icon-trophy icon-trophy-silver" title="2015年圣诞节最受欢迎策略亚军"></i>',
            "海纳百川": '<i class="icon icon-trophy icon-trophy-copper" title="2015年圣诞节最受欢迎策略季军"></i>',
        }

        $('.user-alias').each(function () {
            var alias = $(this).html();
            if (user[alias]) {
                alias = alias + user[alias];
            }
            $(this).html(alias);
        });
    }
</script>
<script src="https://joinquant-static.b0.upaiyun.com/third/looper/looper.min.js"></script>
<script src="https://joinquant-static.b0.upaiyun.com/default/js/data.js"></script>
<script>
    // $('.looper').looper(
    //         {
    //             interval: 5000
    //       }
    // );
    // $('#bulletLooper').on('shown', function(e){
    //      $('.looper-nav > li', this)
    //      .removeClass('active')
    //      .eq(e.relatedIndex)
    //      .addClass('active');

    // });
    //    $('.carousel').carousel({
    //   interval: 5000
    // })
</script>
<div style="display:none">
    <script src="https://s95.cnzz.com/z_stat.php?id=1256107754&web_id=1256107754" language="JavaScript"></script>
    <!-- 返回顶部 -->
    <script>
        if (g_isBackToTop) {
            $('#leftsead').removeClass('hidden');
            $("#leftsead a").hover(function () {
                if ($(this).prop("className") == "youhui") {
                    $(this).children("img.hides").show();
                } else {
                    $(this).children("div.hides").show();
                    $(this).children("img.shows").hide();
                    $(this).children("div.hides").animate({marginRight: '0px'}, '0');
                }
            }, function () {
                if ($(this).prop("className") == "youhui") {
                    $(this).children("img.hides").hide();
                } else {
                    $(this).children("div.hides").animate({marginRight: '-163px'}, 0, function () {
                        $(this).hide();
                        $(this).next("img.shows").show();
                    });
                }
            });
            $("#top_btn").click(function () {
                if (scroll == "off") return;
                $("html,body").animate({scrollTop: 0}, 300);
            });

            //右侧导航 - 二维码
            $(".youhui").mouseover(function () {
                $(this).children(".2wm").show();
            })
            $(".youhui").mouseout(function () {
                $(this).children(".2wm").hide();
            });
        }
    </script>
    <script>
        var img = new Image();
        var referer = "https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DfWroWbfQksHsicvQxBYb1M3zbIl-P0iXBrTyU9JS6Lvq5aeOG9zrbkgCDHSLlHxR%26wd%3D%26eqid%3Dea14b357001886880000000557b1475e";
        var euid = "0";
        var urd = "0000-00-00";
        var logHost = '';
        var timestamp = new Date().getTime();
        img.src = logHost + '/log/p.gif?euid=' + euid + "&referer=" + referer + '&urd=' + urd + '&_t=' + timestamp;
    </script>
    <script>
        /*cnzz点击事件统计*/
        $('.track_event_click').click(function () {
            var cate = $(this).attr('_cate');
            var name = $(this).attr('_name');
            _czc.push(['_trackEvent', cate, '点击', name]);
        });
    </script>
</div>
</body>
</html>

