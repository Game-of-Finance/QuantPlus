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
	            <link type='text/css'  href="https://joinquant-static.b0.upaiyun.com/common/css/lib.min.css?v=201609011505" rel='stylesheet'></link>
        <link type='text/css'  href="https://joinquant-static.b0.upaiyun.com/common/css/common.min.css?v=201609011505" rel='stylesheet'></link>
        	    <link rel="icon" href="https://joinquant-static.b0.upaiyun.com/common/img/favicon-16-16.png?v=2" type="image/x-icon">
        
        <link href="https://joinquant-static.b0.upaiyun.com/third/jquery-ui/jquery-ui-jq.min.css?v=201609011505" rel="stylesheet" />
<link href="https://joinquant-static.b0.upaiyun.com/algorithm/css/algorithm.min.css?v=201609011505" rel="stylesheet" />
<style>
.modal-dialog{
    width:750px;
}
.layPager .pagination{
    margin-top:0px;
    margin-bottom:0px;
} 
#backtest-select-btn{
    border-top:none;
    border-right:none;
    border-bottom:none;
}
input[readonly] {
    cursor:default;
}
@media (max-width: 750px){
	.modal-dialog{width:97%;}
}
</style>


        
                                        <style>
        span.new{
        background: rgba(0,0,0,0);
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
                <div class="backtest-area content content-area old-style padding_b0">
    <form name="BacktestModel">
        <div id="subnav" class="subnav">
            <a href="/algorithm/index/list" class="algo-back" title="返回">
                <i class="icon icon-chevron-left no-decoration"></i>
            </a>
            <label style="position:absolute;top:15px;margin-left:3px">模拟交易</label>
        </div>
        <div id="main-pane" class="main-pane">
            <div id="backtest-area" class="backtest-area">

                <div id="backtest-atomic-container" class="">

                    <div id="backtest-settings-outer-container" class="box clearfix">
                        <div class="left-container pull-left">
                            <table id="backtest-settings-middle-table">
                                <tbody>
                                    <tr>
                                        <td>
                                            <table id="backtest-settings-container">
                                                <tbody>
                                                    <tr>
                                                        <td class="title-cell valign-top" style="width:100px">
                                                            <div class="title" style="padding-top:12px">设 置</div>
                                                        </td>
                                                        <td>
                                                            <table class="backtest-settings-details-payload">
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="settings valign-top">
                                                                            <table id="live-settings-table" class="backtest-settings-table form-horizontal" style="width:500px">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td id="backtest_settings_data_frequency_container" class="control-group">
                                                                                            <label class="control-label">
                                                                                                <span data-original-title="" class="has-tooltip" rel="tooltip">名称:</span>
                                                                                            </label>

                                                                                            <div class="controls inline-block valign-top">
                                                                                                <input type="text"  name="name" id="name" value="模拟交易-1">
                                                                                            </div>

                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td id="backtest_settings_data_frequency_container" class="control-group">
                                                                                            <label class="control-label">
                                                                                                <span data-original-title="" class="has-tooltip" rel="tooltip">回测:</span>
                                                                                            </label>

                                                                                            <div class="controls inline-block valign-top">
                                                                                                <input type="hidden" name="backtestId" id="backtestId" value="">
                                                                                                <input type="text" readonly  id="backtestName" value="" placeholder="使用选中回测的代码进行模拟交易">
                                                                                                <div class="btn-group inline-block" style="position:relative;left:-57px;">
                                                                                                    <a id="backtest-select-btn" class="btn" href="###">
                                                                                                        <i class="icon icon-list-alt large-icon"></i>
                                                                                                    </a>
                                                                                                </div>
                                                                                            </div>

                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr class="">
                                                                                       <td id="backtest_settings_data_frequency_container" class="control-group">
                                                                                           <label class="control-label">
                                                                                               <span data-original-title="" class="has-tooltip" rel="tooltip">数据频率:</span>
                                                                                           </label>

                                                                                           <div class="controls inline-block valign-top">
                                                                                               <input type="hidden" id="frequency" name="frequency"  value="minute">
                                                                                               <div class="btn-group bootstrap-select frequency-selector-ide show-tick" style="width: 80px;">
                                                                                                   <button data-toggle="dropdown" class="btn dropdown-toggle selectpicker btn-default" type="button" title="Daily">
                                                                                                       <span class="filter-option pull-left">分钟</span>&nbsp;<span class="caret"></span>
                                                                                                   </button>
                                                                                                   <div class="dropdown-menu open">
                                                                                                       <ul role="menu" class="dropdown-menu inner selectpicker">
                                                                                                           <li rel="day">
                                                                                                               <a  style="" class="" tabindex="0"><i class="icon icon-ok icon-ok check-mark"></i><span class="text">每天</span>
                                                                                                               </a>
                                                                                                           </li>
                                                                                                           <li rel="minute" class="selected">
                                                                                                               <a  style="" class="" tabindex="0"><i class="icon icon-ok icon-ok check-mark"></i><span class="text">分钟</span>
                                                                                                               </a>
                                                                                                           </li>
                                                                                                           <li rel="tick">
                                                                                                               <a  style="" class="" tabindex="0"><i class="icon icon-ok icon-ok check-mark"></i><span class="text">TICK</span>
                                                                                                               </a>
                                                                                                           </li>
                                                                                                       </ul>
                                                                                                   </div>
                                                                                               </div>
                                                                                           </div>

                                                                                       </td>
                                                                                   </tr>
                                                                                   <tr>
                                                                                       <td id="backtest_settings_capitalbase_container" class="control-group">
                                                                                           <label class="control-label">
                                                                                               <span data-original-title="Risk and returns will be based on your assumed capital base." class="has-tooltip" rel="tooltip">初始资金:</span>
                                                                                           </label>
                                                                                           <div class="controls capitalbase">
                                                                                               <div class="input-prepend">
                                                                                                   <input type="number" name="basecapital"  value="10000" step="1000" min="1000" id="daily_backtest_capital_base_box" class="capitalbase">
                                                                                               </div>
                                                                                           </div>
                                                                                       </td>
                                                                                   </tr>

                                                                                   <tr>
                                                                                        <td id="backtest_settings_data_frequency_container" class="control-group">
                                                                                            <label class="control-label">
                                                                                                <span data-original-title="" class="has-tooltip" rel="tooltip">开始日期:</span>
                                                                                            </label>

                                                                                            <div class="controls inline-block valign-top">
                                                                                                <input type="text"  name="startTime" class="datepicker" style="text-align:left" id="startTime" value="2016-09-03" readonly="readonly">
                                                                                            </div>

                                                                                        </td>
                                                                                   </tr>

                                                                                </tbody>
                                                                        </table>
                                                                    </td>
                                                                    <td class="backtest-controls-area">
                                                                        <div id="start-backtest-pane" class="backtest-status-pane start-backtest-pane">
                                                                            <btn id="start-backtest-button" class="btn btn-primary btn-large large-font">
                                                                                <img id="build-loading" src="https://joinquant-static.b0.upaiyun.com/algorithm/img/loader_R.gif" class="loading hidden">
                                                                                <span class="button-label" id="build-span">开始模拟交易</span>
                                                                            </btn>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </form>
</div>
<div class="hidden" id="backtest-select">
    <table class="table backtest-list checkbox-table checkbox-done" style="width:100%">
        <thead>
            <tr>
                <td>
                </td>
                <td>对应策略</td>
                <td>回测编号</td>
                <td>创建时间</td>
                <td>
                    频率                                        
                </td>
                <td>
                    收益
                </td>
            </tr>
        </thead>
        <tbody id="backtest-list-tbody">
        </tbody>
    </table>
    <div class="layPager">
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
            

        </div>
                        <!-- 回到顶部 联系我们 -->
                <div id="leftsead" class="hidden">
                    <ul>
                        <li>
                        <a href="javascript:void(0)" class="youhui">
                            <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/l02.png" width="47" height="49" class="shows" />
                            <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/a.png" width="57" height="49" class="hides" />
                            <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/weixin.jpg" width="145" class="2wm" style="display:none;margin:-100px 57px 0 0" />
                        </a>
                        </li>
                        <li>
			<!--
                        <a href="http://shang.qq.com/wpa/qunwpa?idkey=3d953481afd338d17ecbedfa4c9f82172b059d404372221c0c7a27489d761de0" target="_blank">
			-->
                        <a href="http://jq.qq.com/?_wv=1027&k=27PjcZu" target="_blank">
                            <div class="hides" style="width:161px;display:none;" id="qq">
                                <div class="hides" id="p1">
                                    <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/ll04.png">
                                </div>
				<!--
                                <div class="hides" id="p2"><span style="color:#FFF;font-size:13px">429620025</span>
				-->
                                <div class="hides" id="p2"><span style="color:#FFF;font-size:13px">484717016</span>
                                </div>
                            </div>
                            <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/l04.png" width="47" height="49" class="shows" />
                        </a>
                        </li>
                        <li id="tel">
                        <a target="_blank" href="/community/post/edit?tag=faq">
                            <div class="hides" style="width:161px;display:none;" id="tels">
                                <div class="hides" id="p1">
                                    <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/ll05.png">
                                </div>
                                <div class="hides" id="p3"><span style="color:#FFF;font-size:15px">反馈</span>
                                </div>
                            </div>
                            <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/l05.png" width="47" height="49" class="shows" />
                        </a>
                        </li>
                        <li id="btn">
                        <a id="top_btn">
                            <div class="hides" style="width:161px;display:none">
                                <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/ll06.png" width="161" height="49" />
                            </div>
                            <img src="https://joinquant-static.b0.upaiyun.com/third/backtotop/images/l06.png" width="47" height="49" class="shows" />
                        </a>
                        </li>
                    </ul>
                </div>

        <script>
        var g_staticHost = 'https://joinquant-static.b0.upaiyun.com';
        var g_isBackToTop = true;
                var g_isMobile = false;
        
                var g_isLogin = true;
                </script>
	            <script src="https://joinquant-static.b0.upaiyun.com/common/js/lib.min.js?v=201609011505"></script>
                
        
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
        <script type="text/javascript" charset="utf-8" src="https://joinquant-static.b0.upaiyun.com/third/jquery-ui/jquery-ui-jq.min.js?v=201609011505"></script>
<script type="text/javascript" charset="utf-8" src="https://joinquant-static.b0.upaiyun.com/algorithm/js/newLive.min.js?v=201609011505"></script>
 
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
             var referer = "https%3A%2F%2Fwww.joinquant.com%2Falgorithm%2Ftrade%2Flist%3Ff%3Dhome%26m%3Dmemu";
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
