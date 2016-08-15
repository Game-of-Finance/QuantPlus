<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/8/15
  Time: 上午10:48
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>JoinQuant聚宽量化交易平台</title>
    <meta name="keywords"
          content="joinquant,聚宽,量化,宽客,quant,量化交易,量化平台,量化投资,量化策略,程序化交易,量化交易平台,python,金融工程,level2,level1"/>
    <meta name="description"
          content="聚宽（JoinQuant）量化交易平台是为量化爱好者（宽客）量身打造的云平台，我们为您提供精准的回测功能、高速实盘交易接口、易用的API文档、由易入难的策略库，便于您快速实现、使用自己的量化交易策略。"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link type='text/css' href="https://joinquant-static.b0.upaiyun.com/common/css/lib.min.css?v=201608131019"
          rel='stylesheet'></link>
    <link type='text/css' href="https://joinquant-static.b0.upaiyun.com/common/css/common.min.css?v=201608131019"
          rel='stylesheet'></link>
    <link rel="icon" href="https://joinquant-static.b0.upaiyun.com/common/img/favicon-16-16.png?v=2"
          type="image/x-icon">

    <!-- <link type='text/css'  href="https://joinquant-static.b0.upaiyun.com/third/looper/looper.min.css?v=201608131019" rel='stylesheet'/> -->
    <link type='text/css' href="https://joinquant-static.b0.upaiyun.com/default/css/style.min.css?v=201608131019"
          rel='stylesheet'/>
    <style>
        body {
            background-color: #fff
        }

        #kk_nav {
            background-color: #005ea8
        }

        .in_body .banner {
            background-color: #005ea8;
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
            background: url(http://a2.qpic.cn/psb?/V12obnzL2CldYM/e5RvOENSEdzyDoIuJx9VL0*665FUCNuJ*xjkZgoFEFM!/c/dOUAAAAAAAAA&ek=1&kp=1&pt=0&bo=9gAoAAAAAAAFAP0!&sce=60-2-2&rf=0-0) no-repeat;
            background-size: 100%;
            width: 210px;
            height: 40px;
            margin-top: 25px;
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
            <a href="" title='joinQuant' class="navbar-brand "></a>
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

        <script src=""></script>
        <script>
            var indexObj = {
                init: function () {
                    this.calcNum();
                    this.moveNum();
                },
                calcNum: function () {
                    $('.bg_num_cont').each(function () {
                        var $num = $(this).find('.num');
                        var len = $num.length;
                        //开始随机数
                        var randData = [11.21, 0.43, 302.23, 4.78, 35.23, 106.11, 7.44, 10.21, 11.98];
                        //自定义随机时间
                        var timeData = [550, 200, 100, 1000, 2000, 140, 1200, 800, 90];
                        for (var i = 0; i < len; i++) {
                            (function (i) {
                                setInterval(function () {
                                    randData[i] += 0.01;
                                    $num.eq(i).text(randData[i].toFixed(2));
                                }, timeData[i]);
                            })(i);
                        }
                    });
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
        </script>

    </div>
    <!--/body-->
</div>


<script>
    //var g_staticHost = 'https://joinquant-static.b0.upaiyun.com';
    var g_isBackToTop = true;
    var g_isMobile = false;

    var g_isLogin = false;
</script>
<script src=""></script>


<script>
    $('.dropdown-toggle').dropdown();
    $("body").delegate("a", "click", function () {
        if ($(this)[0].hostname.length > 0 && $(this)[0].hostname != window.location.hostname) {
            window.open($(this)[0].href);
            return false;
        }
    });

    function addUserIcon() {

    }
</script>
<script src="https://joinquant-static.b0.upaiyun.com/third/looper/looper.min.js"></script>
<script src="https://joinquant-static.b0.upaiyun.com/default/js/data.js"></script>


</div>
</body>
</html>


