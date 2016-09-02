<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>模拟交易 - QuantPlus</title>
        <meta name="keywords" content="quantplus,聚宽,量化,宽客,quant,量化交易,量化平台,量化投资,量化策略,程序化交易,量化交易平台,python,金融工程,level2,level1" />
        <meta name="description" content="QuantPlus量化交易平台是为量化爱好者（宽客）量身打造的云平台，我们为您提供精准的回测功能、高速实盘交易接口、易用的API文档、由易入难的策略库，便于您快速实现、使用自己的量化交易策略。" />
        <meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	            <link type='text/css'  href="https://joinquant-static.b0.upaiyun.com/common/css/lib.min.css?v=201608311338" rel='stylesheet'></link>
        <link type='text/css'  href="https://joinquant-static.b0.upaiyun.com/common/css/common.min.css?v=201608311338" rel='stylesheet'></link>
        	    <link rel="icon" href="https://joinquant-static.b0.upaiyun.com/common/img/favicon-16-16.png?v=2" type="image/x-icon">
        
        <link href="https://joinquant-static.b0.upaiyun.com/third/bootstrap/css/bootstrap-switch.min.css" rel="stylesheet" />
<link href="https://joinquant-static.b0.upaiyun.com/algorithm/css/algorithm.min.css?v=201608311338" rel="stylesheet" />
<style>
	@media (max-width: 500px){
	.mainpage-container .container{padding:10px;}
	.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th{padding:8px 0px;}
	.algo-toolbar .btn-group{margin-left: 0 !important;}
	.align-left{text-align: center;}
}
.mobile .yjb{
	float: left;
}
	#kk_navbar.kk_navbar .nav li:nth-child(5) a{
		color:#EEE5D8;
	}
</style>
        
                                        <style>
        span.new{
        background: EEE5D8;
    }
    </style>
    </head>
    <body >
                                <div class="kk_main in_wrap">
            
            <header id="kk_nav" class="fixed-top kk_nav navbar narbar-static-top">
                <!-- <div class="container"> -->
                    <div class="navbar-header">
                        <button id="btn_menu" class="navbar-toggle" type="button"  data-toggle="collapse" data-target='#kk_navbar'>
                            <span class="sr-only">Toggle nav</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="/" title='QuantPlus' class="navbar-brand "></a>
                    </div>
                    <nav id="kk_navbar" class="kk_navbar collapse navbar-collapse" aria-expanded='false'>
                        <ul class="nav navbar-nav">
                            <li ><a href="login.jsp">登录</a></li>
                            <li ><a href="register.jsp">注册</a></li>                
                           
                        </ul>  
                    </nav>
                <!-- </div> -->
            </header>
            
            <!--/header-->
            <div class="kk_body top_50">
                <div class="mainpage-container algo-list">
    <div class="bg-white container margin_20t paper-trading">
        <div class="inline-block algo-toolbar">
            <div class="algo-title klavika inline-block live-trading-header">模拟交易</div>
            <div data-toggle="buttons-radio" class="btn-group algotrade-filter-controls">
                <button type="button" id="all-live" class="btn btn-small">全部</button>
                <button type="button" id="running-live" class="active btn btn-small">进行中</button>
                <button type="button" id="stop-live" class="btn btn-small">已关闭</button>
            </div>
                       <div class="btn-group inline-block margin_20l" style="top:6px">
               
            </div>
                        <div class="btn-group inline-block">
                <btn id="del-live" class="btn btn-small live-algo-delete-button disabled">
                <i class="icon icon-trash"></i>
                删除
                </btn>
            </div>
        </div>
        
        <div class="margin_15t" style="text-align:center">
                        <div style="margin-top:30px">
               <a href="startNewTrading.jsp">新建模拟交易</a>
            </div>
                    </div>
    </div>
</div>

            </div>
            <!--/body-->
            
            <footer class="kk_footer clearfix bottom-50">
                <div class="inner auto_w">
                    
                    <div class="wp20 fleft">
                        <div class="item title"><a href="index.jsp">首页</a></div>
                    </div>
                    <div class="wp20 fleft">
                        <div class="item title">实盘交易</div>
                        <div class="item"><a href="/">实盘账户</a></div>
                        <div class="item"><a href="/">我的交易</a></div>
                       
                    </div>
                    <div class="wp20 fleft">
                        <div class="item title">策略研究</div>
                        <div class="item"><a href="/">优选策略</a></div>
                        <div class="item"><a href="/">我的策略</a></div>
                    </div>
                    <div class="wp20 fleft">
                        <div class="item title"><a href="communication.jsp">社区</a></div>
                    </div>
                    <div class="copyright clear">@2016 @quantplus</div>
                </div>
            </footer>
          

        <script>
        var g_staticHost = 'https://joinquant-static.b0.upaiyun.com';
        var g_isBackToTop = true;
                var g_isMobile = false;
        
                var g_isLogin = true;
                </script>
	            <script src="https://joinquant-static.b0.upaiyun.com/common/js/lib.min.js?v=201608311338"></script>
                
        
        <script>
        $('.dropdown-toggle').dropdown();
        $("body").delegate("a","click",function(){ 
            if ($(this)[0].hostname.length>0 && $(this)[0].hostname != window.location.hostname) {
                window.open($(this)[0].href);
                return false;
            }
        }); 

        function addUserIcon(){
            var user = {
                "莫邪的救赎":'<i class="icon icon-trophy icon-trophy-gold" title="2015年最受欢迎策略冠军"></i>',
                "Waiting":'<i class="icon icon-trophy icon-trophy-silver" title="2015年最受欢迎策略亚军"></i>',
                "kuhn":'<i class="icon icon-trophy icon-trophy-copper" title="2015年最受欢迎策略季军"></i>',
                "胡庆平":'<i class="icon icon-trophy icon-trophy-gold" title="2015年圣诞节最受欢迎策略冠军"></i>',
                "Kris":'<i class="icon icon-trophy icon-trophy-silver" title="2015年圣诞节最受欢迎策略亚军"></i>',
                "海纳百川":'<i class="icon icon-trophy icon-trophy-copper" title="2015年圣诞节最受欢迎策略季军"></i>',
            }

            $('.user-alias').each(function(){
                var alias =  $(this).html();
                if(user[alias]){
                    alias = alias+user[alias];
                }
                $(this).html(alias);
           });
        }
	</script>
        <script src="https://joinquant-static.b0.upaiyun.com/third/bootstrap/js/bootstrap-switch.min.js?v=201608311338"></script>
<script src="https://joinquant-static.b0.upaiyun.com/algorithm/js/tradeList.min.js?v=201608311338"></script>

 
	            <div style="display:none">
	    <script src="https://s95.cnzz.com/z_stat.php?id=1256107754&web_id=1256107754" language="JavaScript"></script>
        <!-- 返回顶部 -->
        <script>
        if(g_isBackToTop){
            $('#leftsead').removeClass('hidden');
            $("#leftsead a").hover(function(){
                if($(this).prop("className")=="youhui"){
                    $(this).children("img.hides").show();
                }else{
                    $(this).children("div.hides").show();
                    $(this).children("img.shows").hide();
                    $(this).children("div.hides").animate({marginRight:'0px'},'0'); 
                }
            },function(){ 
                if($(this).prop("className")=="youhui"){
                    $(this).children("img.hides").hide();
                }else{
                    $(this).children("div.hides").animate({marginRight:'-163px'},0,function(){$(this).hide();$(this).next("img.shows").show();});
                }
            });
            $("#top_btn").click(function(){if(scroll=="off") return;$("html,body").animate({scrollTop: 0}, 300);});
            
            //右侧导航 - 二维码
            $(".youhui").mouseover(function(){
                    $(this).children(".2wm").show();
            })
            $(".youhui").mouseout(function(){
                    $(this).children(".2wm").hide();
            });
        }
        </script>
        <script>
             var img = new Image();   
             var referer = "https%3A%2F%2Fwww.joinquant.com%2Fuser%2Fmsg%2Flist";
             var euid = "9a93db98aefe81f18a67af01af0e1a71";
             var urd = "2016-08-10";
             var logHost = '';
             var timestamp=new Date().getTime();
             img.src = logHost+'/log/p.gif?euid='+euid+"&referer="+referer+'&urd='+urd+'&_t='+timestamp;
        </script>
        <script>
        /*cnzz点击事件统计*/
        $('.track_event_click').click(function(){
            var cate = $(this).attr('_cate');
            var name = $(this).attr('_name');
             _czc.push(['_trackEvent', cate, '点击', name]);
        });
        </script>
        </div>
    </body>
</html>
