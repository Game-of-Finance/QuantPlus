<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/8/15
  Time: 上午9:38
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html><!--STATUS OK--><html>
<head>
    <meta name="keywords" content="贴吧,百度贴吧,论坛,兴趣,社区,BBS"/>
    <meta name="description"
          content="百度贴吧——全球最大的中文社区。贴吧的使命是让志同道合的人相聚。不论是大众话题还是小众话题，都能精准地聚集大批同好网友，展示自我风采，结交知音，搭建别具特色的“兴趣主题“互动平台。贴吧目录涵盖游戏、地区、文学、动漫、娱乐明星、生活、体育、电脑数码等方方面面，是全球最大的中文交流平台，它为人们提供一个表达和交流思想的自由网络空间，并以此汇集志同道合的网友。"/>
    <meta charset="GBK">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="search" type="application/opensearchdescription+xml" href="/tb/cms/content-search.xml" title="百度贴吧"/>
    <title>百度贴吧——全球最大的中文社区</title>
    <script type="text/javascript">void function (t, e, n, a, r, i, o) {
        t.alogObjectName = r, t[r] = t[r] || function () {
                    (t[r].q = t[r].q || []).push(arguments)
                }, t[r].l = t[r].l || +new Date, i = e.createElement(n), i.async = !0, i.src = a, o = e.getElementsByTagName(n)[0], o.parentNode.insertBefore(i, o)
    }(window, document, "script", "http://img.baidu.com/hunter/alog/alog.min.js", "alog"), void function () {
        function t() {
        }

        window.PDC = {
            mark: function (t, e) {
                alog("speed.set", t, e || +new Date), alog.fire && alog.fire("mark")
            }, init: function (t) {
                alog("speed.set", "options", t)
            }, view_start: t, tti: t, page_ready: t
        }
    }(), void function (t) {
        var e = !1;
        t.onerror = function (t, n, a, r) {
            var i = !0;
            return !n && /^script error/i.test(t) && (e ? i = !1 : e = !0), i && alog("exception.send", "exception", {
                msg: t,
                js: n,
                ln: a,
                col: r
            }), !1
        }, alog("exception.on", "catch", function (t) {
            alog("exception.send", "exception", {msg: t.msg, js: t.path, ln: t.ln, method: t.method, flag: "catch"})
        })
    }(window), window.xssfw = function (t) {
        function e(t, e) {
            if (!(10 < ++u)) {
                var n = {type: "INLINE", path: t, code: e.substr(0, 400), len: e.length};
                alog("xss.send", "xss", n), p.push(n), c()
            }
        }

        function n(t, e) {
            if (t && 0 != e) {
                var a = t.tagName;
                if ("BODY" != a) {
                    t.id && (a += "#" + t.id);
                    var r = t.className;
                    return r && (a += "." + r.split(" ")[0]), (r = n(t.parentNode, e - 1)) ? r + " " + a : a
                }
            }
        }

        function a(t) {
            for (var e = g.length - 1; e >= 0; e--) {
                var n = g[e];
                if (t > n.b)return n
            }
        }

        function r(t) {
            for (var e = l.length - 1; e >= 0; e--) {
                var n = l[e];
                if (n.b.test(t))return n
            }
        }

        function i(t, i) {
            function o(s) {
                var f = s._k;
                if (f || (f = s._k = ++d), f = f << 8 | i, !m[f] && (m[f] = !0, 1 == s.nodeType)) {
                    var l;
                    s[t] && (l = s.getAttribute(t)) && (f = a(l.length) || r(l) || {}, f.a && (s[t] = null), f.c && e(n(s, 5) + "[" + t + "]", l)), c && "A" == s.tagName && "javascript:" == s.protocol && (l = s.href.substr(11), f = a(l.length) || r(l) || {}, f.a && (s.href = "javascript:void(0)"), f.c && e(n(s, 5) + "[href]", l)), o(s.parentNode)
                }
            }

            var c = "onclick" == t;
            document.addEventListener(t.substr(2), function (t) {
                o(t.target)
            }, !0)
        }

        function o(t) {
            var e = [];
            if (t)for (var n = t.length - 1; n >= 0; n--) {
                var a = t[n], r = a.target;
                e.push({b: a.match, a: /D/.test(r), c: /W/.test(r)})
            }
            return e
        }

        function c() {
            if (s) {
                for (var t = 0; t < p.length; t++)s(p[t]);
                p = []
            }
        }

        var s, f, l, g, u = 0, m = {}, d = 0, p = [], h = {};
        return h.init = function (e) {
            if (t.addEventListener && !f) {
                f = !0, alog("xss.create", {
                    dv: 5,
                    postUrl: "http://tb1.bdstatic.com/tb/pms/img/st.gif",
                    page: "tb-xss"
                }), g = o(e["len-limit"]), l = o(e["key-limit"]), e = 0;
                for (var n in document)/^on./i.test(n) && i(n, e++)
            }
        }, h.watch = function (t) {
            s = t, c()
        }, h
    }(this), xssfw.init({
        "len-limit": [{match: 400, target: "Warn"}],
        "key-limit": [{match: /createElement/, target: "Warn"}, {
            match: /fromCharCode|eval|getScript|xss/,
            target: "Warn,Deny"
        }, {match: /alert\(|prompt/, target: "Warn"}]
    });</script>
    <!--[if lt IE 9]>
    <script>(function () {
        var tags = ['header', 'footer', 'figure', 'figcaption', 'details', 'summary', 'hgroup', 'nav', 'aside', 'article', 'section', 'mark', 'abbr', 'meter', 'output', 'progress', 'time', 'video', 'audio', 'canvas', 'dialog'];
        for (var i = tags.length - 1; i > -1; i--) {
            document.createElement(tags[i]);
        }
    })();</script><![endif]-->
    <link rel="shortcut icon" href="http://tb1.bdstatic.com/tb/favicon.ico"/>
    <link rel="stylesheet"
          href="http://tb1.bdstatic.com/??tb/static-common/style/tb_ui_f024af4.css,tb/static-common/style/tb_common_babf21a.css"/>
    <link rel="stylesheet"
          href="http://tb1.bdstatic.com/??/tb/_/card_9dfd566.css,/tb/_/js_pager_5be1e39.css,/tb/_/user_head_35f26e0.css,/tb/_/icons_3f854e8.css,/tb/_/wallet_dialog_a45f657.css,/tb/_/flash_lcs_d41d8cd.css,/tb/_/new_message_system_3bf63c5.css,/tb/_/base_user_data_80722fd.css,/tb/_/cashier_dialog_c6e53d7.css,/tb/_/qianbao_cashier_dialog_b484b39.css,/tb/_/base_dialog_user_bar_323aa35.css,/tb/_/qianbao_purchase_member_1fa89ee.css,/tb/_/pay_member_d41d8cd.css,/tb/_/http_transform_d41d8cd.css,/tb/_/userbar_cd9b958.css,/tb/_/poptip_f0fdc70.css,/tb/_/new_2_index_f000cf0.css,/tb/_/pad_overlay_ddb7074.css,/tb/_/suggestion_b13271b.css,/tb/_/search_bright_8b0ad41.css,/tb/_/top_banner_13dc075.css,/tb/_/couplet_78341bd.css,/tb/_/slide_show_aad29db.css,/tb/_/carousel_area_v3_512a845.css,/tb/_/interest_num_v2_ae5c514.css,/tb/_/shake_bear_1c76f32.css,/tb/_/payment_dialog_title_afc9224.css,/tb/_/qianbao_purchase_tdou_4b31f54.css,/tb/_/tdou_get_ba82096.css,/tb/_/like_tip_95a9a3c.css"/>
    <link rel="stylesheet"
          href="http://tb1.bdstatic.com/??/tb/_/tb_region_e558306.css,/tb/_/umoney_query_d2238a9.css,/tb/_/nameplate_f117c6a.css,/tb/_/my_current_forum_1ddd5b6.css,/tb/_/dialog_6ed86bb.css,/tb/_/cont_sign_card_1b553b8.css,/tb/_/sign_tip_5091005.css,/tb/_/sign_mod_bright_6041de1.css,/tb/_/tb_spam_814ec43.css,/tb/_/my_tieba_9ce937e.css,/tb/_/icon_tip_db299f2.css,/tb/_/popframe_1ca0182.css,/tb/_/scroll_panel_eb74727.css,/tb/_/often_visiting_forum_60e8fa1.css,/tb/_/grade_0558401.css,/tb/_/ihome/onekey_sign_7891375.css,/tb/_/spage_game_tab_9a2dba6.css,/tb/_/forum_directory_cad9c89.css,/tb/_/forum_rcmd_v2_82848e9.css,/tb/_/spage_liveshow_slide_7534cc9.css,/tb/_/activity_carousel_2490eb2.css,/tb/_/affairs_nav_be60081.css,/tb/_/threadItem_2_2449095.css,/tb/_/affairs_fac5457.css,/tb/_/voice_15495f7.css,/tb/_/tbshare_10e1498.css,/tb/_/aside_float_bar_5ff49fe.css,/tb/_/topic_rank_365c394.css,/tb/_/ihome/interaction_d4668aa.css,/tb/_/ihome/month_icon_4c9c072.css"/>
    <link rel="stylesheet"
          href="http://tb1.bdstatic.com/??/tb/_/residual_37cef8f.css,/tb/_/ihome/user_visit_card_e1bf134.css,/tb/_/member_rank_18318a8.css,/tb/_/aside_v2_ba11a06.css,/tb/_/aside_platform_1721ba9.css,/tb/_/feedback_b53cf14.css,/tb/_/common_footer_promote_1ddb19b.css,/tb/_/new_footer_820125e.css,/tb/_/stats_32e6988.css,/tb/_/tshow_out_date_warn_d8af5b9.css,/tb/_/ticket_warning_6a9bc92.css,/tb/_/member_upgrade_tip_8312b58.css,/tb/_/tpl_14_d41d8cd.css"/>
    <script>    var PageData = {"tbs": "", "charset": "GBK", "product": "index", "page": "index"};
    PageData.user = {
        "id": "",
        "user_id": "",
        "name": "",
        "user_name": "",
        "name_url": "",
        "no_un": 0,
        "is_login": 0,
        "portrait": "",
        "balv": {}, /* Ban 这个模块真够讨厌的 */
        "Parr_props": null,
        "Parr_scores": null,
        "mParr_props": null,
        "vipInfo": null,
        "power": {}
    };
    PageData.search_what = "";
    var Env = {server_time: 1471224922000};
    var Tbs = {"common": ""};</script>
    <script type="text/javascript">function resizePic_temp(e, t, i, s, n) {
        function r(e, t, i, s) {
            var n = 0, r = e, a = t;
            switch (e > i && (n += 1), t > s && (n += 2), n) {
                case 1:
                    r = i, a = t * i / e;
                case 2:
                    a = s, r = e * s / t;
                case 3:
                    a = t / s > e / i ? s : t * i / e, r = t / s > e / i ? e * s / t : i
            }
            return 0 != n && (l = !0), [r, a]
        }

        var a = t || 120, c = i || 120, l = !1, p = new Image;
        p.src = e.src;
        var h = r(p.width, p.height, a, c);
        return e.style.width = h[0] + "px", e.style.height = h[1] + "px", "function" == typeof n && n.apply(this, arguments), e.style.visibility = "visible", 1 == s && (e.style.marginTop = (i - parseInt(h[1])) / 2 + "px"), p = null, l
    }</script>
    <script type="text/javascript">alog("speed.set", "ht", new Date);</script>
</head>
<body>
<script type="text/template" id="u_notify">
    <div
    class="u_notity_bd">
    <ul class="sys_notify j_sys_notify j_category_list"></ul>
    <ul class="sys_notify_last">
        <li class="category_item  category_item_last j_category_item_last"><a target="_blank"
                                                                              href="/sysmsg/index?type=notity">
            我的通知 </a> <span class="unread_num clearfix">0</span>
            <ul class="new_message j_new_message j_category_list"></ul>
        </li>
    </ul></div></script>
<script type="text/template" id="u_notify_item"><%for (var i = 0; i < list.length; i++) {%>
<li class="category_item <% if(list[i].unread_count == 0) {%>category_item_empty<%}%>"><%if (list[i].category_href) {%>
    <a class="j_cleardata" href="<%=list[i].category_href%>" target="_blank"
       data-type="<%=list[i].type%>"><%=list[i].category_name%>        <% if (list[i].unread_count != 0) {%> <span
            class="unread_num clearfix"><%=list[i].unread_count%></span> <% } %></a> <%} else {%> <a
            href="/sysmsg/index?type=notity&category_id=<%=list[i].category_id%>" target="_blank"
            data-type="<%=list[i].type%>"><%=list[i].category_name%>        <% if (list[i].unread_count != 0) {%> <span
            class="unread_num clearfix"><%=list[i].unread_count%></span> <% } %></a> <% } %></li><%}%></script>
<div id="local_flash_cnt"></div>
<div class="wrap1">
    <div class="wrap2">
        <script>PageData.tbs = "d2f55d3c039780641471224921";
        PageData.is_iPad = 0;
        PageData.itbtbs = "a906665dd7a0c1c7";
        PageData.userTages = {};</script>
        <div class="page-container">
            <div class="search-sec">
                <div id="head" class="search_bright_index search_bright clearfix" style="">
                    <div class="head_inner"><a title="到贴吧首页" href="/" class="search_logo" style=""></a>
                        <div class="head_right_region">
                            <div class="search_top clearfix">
                                <div class="search_nav j_search_nav" style=""><a param="word"
                                                                                 href="http://news.baidu.com/ns?cl=2&amp;rn=20&amp;tn=news&amp;">新闻</a><a
                                        param="wd" href=https://www.baidu.com/s?cl=3&amp;>网页</a><b>贴吧</b><a param="word"
                                                                                                            href="http://zhidao.baidu.com/q?ct=17&amp;pn=0&amp;tn=ikaslist&amp;rn=10&amp;">知道</a><a
                                        param="key" href="http://music.baidu.com/search?fr=tieba&">音乐</a><a param="word"
                                                                                                            href="http://image.baidu.com/i?tn=baiduimage&amp;ct=201326592&amp;lm=-1&amp;cl=2&amp;ie=gbk&amp;">图片</a><a
                                        param="word"
                                        href="http://v.baidu.com/v?ct=301989888&amp;rn=20&amp;pn=0&amp;db=0&amp;s=21&amp;">视频</a><a
                                        param="word" href="http://map.baidu.com/m?fr=map006&amp;">地图</a><a
                                        href="http://baike.baidu.com/" param="searchword/?pic=1&fr=tieba&word">百科</a><a
                                        href="http://wenku.baidu.com/search?fr=tieba&lm=0&od=0&" param="word"
                                        target="_blank">文库</a></div>
                            </div>
                            <div class="search_main_wrap">
                                <div class="search_main clearfix">
                                    <div class="search_form"><a id="search_logo_small" class="" title="到贴吧首页"
                                                                href="/"></a>
                                        <form name="f1" class="clearfix j_search_form" action="/f"
                                              id="tb_header_search_form"><input
                                                class="search_ipt search_inp_border j_search_input tb_header_search_input"
                                                name="kw1" value="" type="text" autocomplete="off" size="42"
                                                tabindex="1" id="wd1" maxlength="100" x-webkit-grammar="builtin:search"
                                                x-webkit-speech="true"/><input autocomplete="off" type="hidden"
                                                                               name="kw" value="" id="wd2"/><span
                                                class="search_btn_wrap search_btn_enter_ba_wrap"><a
                                                class="search_btn search_btn_enter_ba j_enter_ba" href="#"
                                                onclick="return false;" onmousedown="this.className+=' search_btn_down'"
                                                onmouseout="this.className=this.className.replace('search_btn_down','')">进入贴吧</a></span><span
                                                class="search_btn_wrap"><a class="search_btn j_search_post" href="#"
                                                                           onclick="return false;"
                                                                           onmousedown="this.className+=' search_btn_down'"
                                                                           onmouseout="this.className=this.className.replace('search_btn_down','')">全吧搜索</a></span><a
                                                class="senior-search-link" href="http://tieba.baidu.com/f/search/adv">高级搜索</a>
                                        </form>
                                        <p style="display:none;" class="switch_radios"><input type="radio" class="nowtb"
                                                                                              name="tb"
                                                                                              id="nowtb"><label
                                                for="nowtb">吧内搜索</label><input type="radio" class="searchtb" name="tb"
                                                                               id="searchtb"><label
                                                for="searchtb">搜贴</label><input type="radio" class="authortb" name="tb"
                                                                                id="authortb"><label
                                                for="authortb">搜人</label><input type="radio" class="jointb"
                                                                                checked="checked" name="tb" id="jointb"><label
                                                for="jointb">进吧</label><input type="radio" class="searchtag" name="tb"
                                                                              id="searchtag"
                                                                              style="display:none;"><label
                                                for="searchtag" style="display:none;">搜标签</label></p></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-sec clearfix">
                <div class="top-sec clearfix">
                    <div id="rec_left" class="rec_left">
                        <div class="carousel_wrap tbui_slideshow_container" id="carousel_wrap">
                            <ul class="img_list tbui_slideshow_list">
                                <li alog-group="img_list_21pic" alog-alias="img_list_21pic"
                                    class="img_list_3pic tbui_slideshow_slide" style="display: none;">
                                    <div class="k57723ef78  clearfix">
                                        <a href="/link?client_type=pc_web&tbjump=lid%253D2121659560_26931_13___0%2526url%253D1364SYTZEbpAFqbVISMAZgky2DLSuEXHJQS0z0Z5-pLzrFIVKFj1ixo2Wd33rDLKWxjg7vsRRl7hu_nJKUhE-4ORL6ab3iy3SCKgPik-vAe7cw7IRmEMNLGDIg-C1VPhIgM9zNLfEjFbhSn301Dj-g5p0WzuapYz2X3Nhz4Rk-C_wWMG2VyiIFb-8dTEx7EnHFJkKF0gvZW6J-MYTG3tUw1ZkfR8g9y19jptDDkbYeSAH1B8mBOENN-ytVZoqjunqDjoJu5fujoE4yAiW6CNFztqN7yGSynCkLRovykb-fjHq8HlZyM_q3QxC_ic-i6jcf3dO9-KkotDjCs0YlpZb1YOGtwhxrmqkwPMygp5LB_5TREk9sp3651QF4KnNcPkfUHXp1y24sxqiB8ruL-596vemTfuEPxOEjVqaRIxVLY965hY1vcy1N3dqJGiU_THB_vm6KhtWQLMNtztTizCDZ9bLJeyuw6P1kAfqu-uCE6P2LXNH8SB6nP0bOFQreiRPoB-s5cszuoePUyf321-OyBt0aU4nf8c7WOhmsBl7C2-OqowCfq6By-Bp1m1YUO6q6DK3515YG93_jb354nJ73e8GM6-k-NrLdDJMotWNX6kOo5pLaDNK3BPPQ-ObCJgTaA2mefmcZHlvgEVO-F0WKHLXKDGs6M9J8Xl1zMKJGbtrw4uB61egAejwJzr2BrhFeBooibtDAtdV0KLTKBF5ntp3HhpbgT8cFeq2-it3MilLFX1VXH17L0_ph4A1ykTYI95n36JPSnwQTifVc_9ZfmXMnhmOmRqll3aP8zFJ8tk25ITMIyxSFmTQ6iWVFco45keBPwlbvMglY2jZGWeYgYacw&task=&locate=&page=index&type=click&url=http%3A%2F%2Ftieba.baidu.com%2Findex.html%3F&refer=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DQ1IjAfM_nh5HiQdR3bL07TaSO2DrhplKGuk8pEElk_7xRAefQv-_3mcopKxVtcw6%26wd%3D%26eqid%3Da5269ff9000e80b90000000557b11c55&fid=&fname=&uid=&uname=&is_new_user=&tid=&_t=1471224921&obj_id=26931"
                                           target="_blank" class="j_click_stats" data-locate="图片">
                                            <img src="http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470799563388.jpg"
                                                 style="width: 100%;height: 100%;" alt="贴吧图片" title="贴吧图片"/>
                                            <div class="img_txt">
                                                <p class="img_title">手工制作普罗旺斯小屋</p>
                                            </div>
                                        </a>
                                    </div>

                                    <style>
                                        div.k57723ef78 {
                                            width: 300px;
                                            height: 180px;
                                            border: none;
                                            background: none;
                                            display: inline-block;
                                            position: relative;

                                        }

                                        div.k57723ef78 .img_txt {
                                            width: 300px;
                                            height: 30px;
                                            border: none;
                                            background: rgba(0, 0, 0, 0.5);
                                            overflow: hidden;
                                            position: absolute;
                                            bottom: 0;
                                            left: 0;

                                        }

                                    </style>
                                    <div class="carousel_promotion_replacement" data-index="1"
                                         style="width:187px;height:180px;">
                                        <a href="http://tieba.baidu.com/f?ie=utf-8&kw=%E8%B4%B4%E5%90%A7%E5%A8%B1%E4%B9%90"
                                           target="_blank">
                                            <img src="http://tb1.bdstatic.com/tb/r/image/2016-03-25/034117a81ce8afcd9bee4fcd73ee8561.png"
                                                 alt="贴吧图片" title="贴吧图片"/>
                                            <div class="img_txt">
                                                <p class="img_title">爱豆们等你来翻牌！</p>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="h923cc28e4  clearfix">
                                        <a href="/link?client_type=pc_web&tbjump=lid%253D2121659560_26726_13___0%2526url%253D3686lIIvJQG22uuoJmJo6kJCm842B4DUR4aeGzh69cSZ3pGeneSsVIlVtZq4YtpNFPSu4_ze_MyF-j1TIsagD7KvItwprm12aPJ1LIcm-geeKOaO3M8t4CCvZ6_DfA-lX8iEp-gZWe3Orfur0qJCIAdf1hF-6hTKKVwg20W43Ce68WAh67s8kF91FQ9E8c0r9q8G2b4KW1ytPGykYBFTk-b73cwWs6Nd0486PVpSdcTBjExfgjs9PaYLzeItadY58RKPtLok7qjcbmXcDddBtAHnwbcByXzNbssOVyK5si33z7_0q9fAGZnzunUJlXn5bYaoUNw3OUwM2iIzybTWLOHKusA3kARQqALi1CzGFe7XZOmgLH7jpEt6In6QJtpSAC2oLrXrXrd6aS7VoTkLBOmglfr0X5tJ0YMNp-waTHhHfMEkdKiUBBvNEHOl60UX5mM0OpMf_4_cpcCPjrxiHEwsV5Uj6OjNac8bRD7PO651QBxu6gSUGARy1WMQlKBOY6vISXR0x-LZt2KTJwAa58yas2fB75Iq-lfbc09_f3YVrNs_VpqTU3ML51i308oyT8Ii3K62CGI7ur5O1KDper2X6J4YKEN0T8Dh37KLNP1TKWroUk1L4yF0XPlhS7MALMoRjqqGiU8x4r8v4mCBHkphOd-IKJR7o-RoHFJViznd8wTADpiOdTrfQ-MLWm3GII_ywDPFnYShY4klVPfkoFQ1qNtF85DQREoFx-Tk4HCab-kDkRaU291okAEFiGHaC1tf7eUsmAbQE5kYC5RIc6oSHWLGRjc2Jb6mERu21P9YHDb8jY1Ua5JV4cbtGaLMpNbc8bNoKuIBcmWr8XovD_qHMA&task=&locate=&page=index&type=click&url=http%3A%2F%2Ftieba.baidu.com%2Findex.html%3F&refer=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DQ1IjAfM_nh5HiQdR3bL07TaSO2DrhplKGuk8pEElk_7xRAefQv-_3mcopKxVtcw6%26wd%3D%26eqid%3Da5269ff9000e80b90000000557b11c55&fid=&fname=&uid=&uname=&is_new_user=&tid=&_t=1471224921&obj_id=26726"
                                           target="_blank" class="j_click_stats" data-locate="图片">
                                            <img src="http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470987698125.jpg"
                                                 style="width: 100%;height: 100%;" alt="贴吧图片" title="贴吧图片"/>
                                            <div class="img_txt">
                                                <p class="img_title">云南大理骑行泰国</p>
                                            </div>
                                        </a>
                                    </div>

                                    <style>
                                        div.h923cc28e4 {
                                            width: 187px;
                                            height: 180px;
                                            border: none;
                                            background: none;
                                            display: inline-block;
                                            position: relative;

                                        }

                                        div.h923cc28e4 .img_txt {
                                            width: 187px;
                                            height: 30px;
                                            border: none;
                                            background: rgba(0, 0, 0, 0.5);
                                            overflow: hidden;
                                            position: absolute;
                                            bottom: 0;
                                            left: 0;

                                        }

                                    </style>
                                </li>
                                <li alog-group="img_list_3pic" alog-alias="img_list_3pic"
                                    class="img_list_3pic tbui_slideshow_slide" style="display: none;">
                                    <div class="ca49a09e50  clearfix">
                                        <a href="/link?client_type=pc_web&tbjump=lid%253D2121659560_26727_13___0%2526url%253D8dcfc7WqT64tc6zMjFMw6qtxRE4gMvGmVJxeAKEfT79bOuzaYU44CZWn6wLG627IQwwuY7d8dI7Y6heOlDgE5YYnFXsxtmyb6tkWLqe68nnQEWaDOhvkmcwp-c8wUQRrTbs6dUdQtgNXMY3lcwD_kRw-ngFULnwIt-az9mw6D3oLdmFvAXqh2JlBGUg-eZotrvoIrcxLDTqy2zUxCLhskTwad2KKbYNrRxrcapPYoH7gEoStARpWVlwQXNd1BAuPmzFATj9zPdA0qaSh1Y6E-SQBhkGWDUOlCupOhI1PzB4CgKAgfyuamqAyjzflAUS3gNH6u8xb3aAzqB8HKo61QQzZaBcBbk1KpGud4Uqwu3gO4tJ4UddnPcJVWRekFcH_rBWzwQ1KURe3u4HLb1U7hs048E6TQ-U1TzQvn-ikH00AadifmuS_G_jhfhEtmF31d8vQSzyQqT6tJJai98LAU7zI2txL3e2CMcK8kN-x6KPDBMPnZjJhkT1f0YEBL8YOgo5sg8T8LunPp-o5uoqkHR1DhKP2gtY-4TUpQUKw6ihMqZO_MhNp613asXXWylWCYHLcFBbHG6r--q_cgbroVGMC8RklSoxlNwe1NLtaguDPMFn8ksiyR4pb6w04wjQTZmPayzPEv3js640Y5K_dghZPVlWH-ixAxrjCdfz_69DJKzqBWvBta_lcvzAf0oR4kEB06PI_pIGbVxAbyYGmnTTaeCcu3Pa7iGj-tooFkq2haDUIywIl8CZUEQTRxFqdmmOozbDRC3P6d0Yglc4RQjcIx7mX4vd_tyPCMSnBoRfEavAy8_NAsSpvW2Ut0aCdxxFNtW3k83T-XQa0EVqqR46EtQ&task=&locate=&page=index&type=click&url=http%3A%2F%2Ftieba.baidu.com%2Findex.html%3F&refer=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DQ1IjAfM_nh5HiQdR3bL07TaSO2DrhplKGuk8pEElk_7xRAefQv-_3mcopKxVtcw6%26wd%3D%26eqid%3Da5269ff9000e80b90000000557b11c55&fid=&fname=&uid=&uname=&is_new_user=&tid=&_t=1471224921&obj_id=26727"
                                           target="_blank" class="j_click_stats" data-locate="图片">
                                            <img src="http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470799693564.jpg"
                                                 style="width: 100%;height: 100%;" alt="贴吧图片" title="贴吧图片"/>
                                            <div class="img_txt">
                                                <p class="img_title">海峡西岸-鹭岛厦门</p>
                                            </div>
                                        </a>
                                    </div>

                                    <style>
                                        div.ca49a09e50 {
                                            width: 225px;
                                            height: 180px;
                                            border: none;
                                            background: none;
                                            display: inline-block;
                                            position: relative;

                                        }

                                        div.ca49a09e50 .img_txt {
                                            width: 225px;
                                            height: 30px;
                                            border: none;
                                            background: rgba(0, 0, 0, 0.5);
                                            overflow: hidden;
                                            position: absolute;
                                            bottom: 0;
                                            left: 0;

                                        }

                                    </style>
                                    <div class="v4a381ec96  clearfix">
                                        <a href="/link?client_type=pc_web&tbjump=lid%253D2121659560_26934_13___0%2526url%253Df66dM7OPa3rdVLh_nISsAnrE_ohKqZeuJPdAWmbLtKu5KNVJ0T2t0ILx87ZQ8AioeKHUXTrBp_9SRTHnh6BOKfjL_FqN4sx7KHagwXDovELNncT43XXEmD2KRqR9e-yTv9l4zyBia5rnH32OK-UhAodpbcii_2Ahgmbxd8mg4j5xtv1b0qH_extmMZ4VL85wS5GhJqZ4MC9OCkE1MAcjDqAvf4PWuzEUFICrg37GU5RUCG2f-gB6NfE2bhZWtR21FOQTUTdeXOkv4f2aV1sjbp5-ynLa0006j1hCrQedSvwVnE2Xawq8pMN5-dhQMx66t2BYrOpDs9v3d03-cxdyaa6-H7BKXw9cF4fUY-XVXGvaqaSwvp6421Gt-VBqCEHaiGVYsVKHE5OHjRNz5RpQhK0cvIgO7b-IEM-c5zFV8h1_R0X7Hgafw0DTELmgExCUY6YuYEh1IKwORDu-QaRtWZ2y_2ZKrjpeIRSN8lpJkPZ4WEKQKsUHEoNhfJbgw5gMyohsl5vzwkQhN9Wmsr92sDN3o6ASE7IRErenhn6RAsi2KYVwhsODRUyvg_SJOslkjk72KsLjjiIC6_on1NbGosFfpjQx2kf81Z62Mv5iiHu3AuJv4ip5LZucxRfm2AALZFOrins5JQlS79PvxGaqaLv_xKvKfRWu-LPBTkR24Nz-ZGtBSKsUERWdhxqNGpalX-Ox-_ZOx0Dvz3gUh11ZiIiZEKF4hYsqjslxVkfIN8PvFZ30BsUDVT08HIMomzV0K6U-rq6drNPqY0MrTPH7GlH19UZ_iryM0xiTKWM4I39ZFHoivSbtF1HC56ej9HKkhAf7S0xZX6kHSEUxdc0KZx5vuQ&task=&locate=&page=index&type=click&url=http%3A%2F%2Ftieba.baidu.com%2Findex.html%3F&refer=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DQ1IjAfM_nh5HiQdR3bL07TaSO2DrhplKGuk8pEElk_7xRAefQv-_3mcopKxVtcw6%26wd%3D%26eqid%3Da5269ff9000e80b90000000557b11c55&fid=&fname=&uid=&uname=&is_new_user=&tid=&_t=1471224921&obj_id=26934"
                                           target="_blank" class="j_click_stats" data-locate="图片">
                                            <img src="http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470987436352.jpg"
                                                 style="width: 100%;height: 100%;" alt="贴吧图片" title="贴吧图片"/>
                                            <div class="img_txt">
                                                <p class="img_title">说说养护那点小事~</p>
                                            </div>
                                        </a>
                                    </div>

                                    <style>
                                        div.v4a381ec96 {
                                            width: 225px;
                                            height: 180px;
                                            border: none;
                                            background: none;
                                            display: inline-block;
                                            position: relative;

                                        }

                                        div.v4a381ec96 .img_txt {
                                            width: 225px;
                                            height: 30px;
                                            border: none;
                                            background: rgba(0, 0, 0, 0.5);
                                            overflow: hidden;
                                            position: absolute;
                                            bottom: 0;
                                            left: 0;

                                        }

                                    </style>
                                    <div class="z4ee4a81a6  clearfix">
                                        <a href="/link?client_type=pc_web&tbjump=lid%253D2121659560_26728_13___0%2526url%253Def454fh_fMw14cC1TJ-ni6iJL6JMJuxttRL7UEGyOiHlyxOxGV2XmhVKNkNmlkZ1aihkmmWtqIx63ZCWU8W13HcHvPgXlP7U14AYExVvd3718Li9SF3rjhcaolraJ91kc6YcLBD8vkJhEgQBRF1oMDaWPrjozmUlbxSdn7DoXMdC84xg8gtnrezpgaUKCnH9v8mXqGFOJ7wB669RkPWElRTPHN7-f85GZUoUuOwu-Vhus2vnjoZ7J2P6HqUHgrkLfj1pJVrE-MOE17XKOnqmtq8XfOK0EO6Isp2Hq358PrAaTaJFVRirCyJvbSFYDEQm-xkDy76mh4cI_i6pWVqL0dq1Ena9B8AX31udF-U4ICJBANx8o_S4VRrAI1ukc4OugkmQKYLpZXP-cYewBh2oG-Y-jlGnnr09YwlcrAWWXBNszcXqroYdzupBmHH0Lv-f3zDaNqMFPGksYbEpUnezC6Jc4SkUuwQIcVSHSRDMlVN_bVwEGy4EEdhxVc5LNYz9TN814pe6O94LHmiV9AqkOXEtyGJDMs0zEJWJfe64yI7wnFDqpu8R58RtySvn39SmIWM8bVqq-KWgn1ZeURWDsX7TY2azjeqQwalo3tbGz61_akGpvnhzOl2rxWZx30ybJ-vFgfiKkVKsyefndTUdAYDOXIPyUmPVVKc5nvL8_Tj3oiwZdelS8XEAh8wotMOxpIsv9X7vuGvOsQ_1Ri_Y10imIoZYfH1Hm9ClR2r_ceWgqM2bxN852IhFEwbXB66uLAIkwBMaEx_sf0G2tK5IrvQkGCaE9cgJSxAx8DfHDVsZeRJ4rvYAQpAm_2JkHfgxSKjE3l4TD1HRbqvkSkMob2BT5Q&task=&locate=&page=index&type=click&url=http%3A%2F%2Ftieba.baidu.com%2Findex.html%3F&refer=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DQ1IjAfM_nh5HiQdR3bL07TaSO2DrhplKGuk8pEElk_7xRAefQv-_3mcopKxVtcw6%26wd%3D%26eqid%3Da5269ff9000e80b90000000557b11c55&fid=&fname=&uid=&uname=&is_new_user=&tid=&_t=1471224921&obj_id=26728"
                                           target="_blank" class="j_click_stats" data-locate="图片">
                                            <img src="http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470987478221.jpg"
                                                 style="width: 100%;height: 100%;" alt="贴吧图片" title="贴吧图片"/>
                                            <div class="img_txt">
                                                <p class="img_title">不想辜负自己最好的年华</p>
                                            </div>
                                        </a>
                                    </div>

                                    <style>
                                        div.z4ee4a81a6 {
                                            width: 225px;
                                            height: 180px;
                                            border: none;
                                            background: none;
                                            display: inline-block;
                                            position: relative;

                                        }

                                        div.z4ee4a81a6 .img_txt {
                                            width: 225px;
                                            height: 30px;
                                            border: none;
                                            background: rgba(0, 0, 0, 0.5);
                                            overflow: hidden;
                                            position: absolute;
                                            bottom: 0;
                                            left: 0;

                                        }

                                    </style>
                                </li>
                                <li alog-group="img_list_1pic" alog-alias="img_list_1pic"
                                    class="img_list_1pic tbui_slideshow_slide" style="display: none;">
                                    <div class="y274e6f510  clearfix">
                                        <a href="/link?client_type=pc_web&tbjump=lid%253D2121659560_23709_13___0%2526url%253Dac5edOJHy_J42uiBHzWWMtdyKJLG5VS3r6FeH6qzzM_HkgOHUI10IPR9jBa99KbekqXHMoTmNrQ_OZYS-ggVHVzdNauP28TjdXgxtgmTyRHN1r5k5Z60eP5YTEbhh1GLrkq9GMIh6amBsvY9ESHosiKPt4Yi2xs0SL3iCopeZNfenTuEe_ST7NPn7cSrx5oigzsfXK3Qw05DPN9YNHGNRYfS2ZvRxVxvEivFODMbFU8TMx1_71vjeOTW-g1uiqleKeLbxrII6ysp0td-6oLpNkt34oeK8oGb-wjYVV5LNoz3I4qQGc_uoBjQ0PzIBJJ7FawAmsqDRLoeo1e2GxKZuPd5nlz4jDCIVoB03L3mcwXkdFFyA6WTpC4XMQYTziLDa_20uLDfsQHZQ4Vu-NJp54T2ilKVE5Vw-p0LEYMWNeIPQ2d0TjlLuE23iiReTbDAfH0Zf2dDJbP-T_D7IZOIOpF9puqQxkUpCR8xR9j9UgUzIQS9BIVVIP0w9VSi-KKkW1J1BZV5GJTD_lLSnpimET-b84egbzeuo9K2m1-Wk5aRPI305dNEfGLPEmFvg9RaR2iWRPYRbdtVC4U1ivCQ6uen8ZnoSnhHFIvxGLBND2BzH8hEWM9FCn5X7K5OtlzrGSxQtypYYmh7I8eEzO9Oih3OwcMjxy_7-eT0nIxr7Gxm0CHJk1KEfGD1Ua4TyVYOc08Ctr9_b4OPWBUwtaNzI9J9rQIOzxnr4LwH01pFc0p-4kCCjPdWjZ92nwGuBUSIvyi6pFSKpNeTQMJmIoApBxBSOHSU98Moiv1SUeV39w&task=&locate=&page=index&type=click&url=http%3A%2F%2Ftieba.baidu.com%2Findex.html%3F&refer=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DQ1IjAfM_nh5HiQdR3bL07TaSO2DrhplKGuk8pEElk_7xRAefQv-_3mcopKxVtcw6%26wd%3D%26eqid%3Da5269ff9000e80b90000000557b11c55&fid=&fname=&uid=&uname=&is_new_user=&tid=&_t=1471224921&obj_id=23709"
                                           target="_blank" class="j_click_stats" data-locate="图片">
                                            <img src="http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470987537837.jpg"
                                                 style="width: 100%;height: 100%;" alt="贴吧图片" title="贴吧图片"/>
                                            <div class="img_txt">
                                                <p class="img_title"></p>
                                            </div>
                                        </a>
                                    </div>

                                    <style>
                                        div.y274e6f510 {
                                            width: 690px;
                                            height: 180px;
                                            border: none;
                                            background: none;
                                            display: inline-block;
                                            position: relative;

                                        }

                                        div.y274e6f510 .img_txt {
                                            width: 690px;
                                            height: 30px;
                                            border: none;
                                            background: rgba(0, 0, 0, 0.5);
                                            overflow: hidden;
                                            position: absolute;
                                            bottom: 0;
                                            left: 0;
                                            display: none;
                                        }

                                    </style>
                                </li>
                                <li alog-group="img_list_2pic" alog-alias="img_list_2pic"
                                    class="img_list_2pic tbui_slideshow_slide" style="display: none;">
                                    <div class="nd161e1840  clearfix">
                                        <a href="/link?client_type=pc_web&tbjump=lid%253D2121659560_30254_4___0%2526url%253D3f57c0ALIFAWqLNGQe7XGksTpk_k2NzuJMS3GXnljYAhmyCQ7UtTREAIpTmi0Smkf_KTUmsSiLgJ2ZWgCnX-nDgCtvS8as-W5YdPNRHMJsrD2YVjo36mjILjpsJuv64dwQNI4VlBiGt0H5H0tAEIgIjBhOIrOwo0GCl4h0xgt2W1f3xoOu2nW5Ln1gxUiXM1QNyVAlvWREr7QHhtkbBmOeP2Ev5NS6BmH_nT0yVWSZyWYpWWwaoSDA-LAhy1ZKf9wLTUc8d8qRifeBy_dbM6OQArBAXD9Rw5QIa0h6zBBvEYh7q0htdS2YXa4PGFBD9TgQr0gmLmjLW8ddpxfNREXVXZpTY5AI2Y-iPJ8ETMgg5weoi9s85wROp764KERfrdfLqm4LHfFRG6_d7GEb0AqbVTvmXiYolXd1GoSDSwr9yLreQYVNc7UnM6ADoIONPdN6Z_rIkv4oBq9rwrvZnPxO0tWuffYsOTM7aHJI3aHDS3ih5xoRyT5xOlsmSwI8_AZsqdvQ_cbXBik-5hOtpJWhEwtBIVRc5Bu6f8RfbvNxNvcXPOy0U6IXPg02ionX0tRys8-3XIxB7QEPCZmI28iCMwh_1nDV_Wdrm71qiObuWvK_t_7Pv04BBHJpT8XXwMzP7Tt0o2E2gfcQ5obBFubWK9fg1CdjjpXpjAGqDQyrjhlc_2FMgKSlCFEZPSBJ1YyL6yiaWULZVY-vXPTs1Qt7-UimWa3_Ngbv7EAAMdldBsozURYC8fiOchViCkwd7KMzSSgRs0cBgy90-ybS881OVRc8hUquUQ-8IlN4lq36myaoqiMsOO3F8qVQ5BOyYv0eFOjpQNIim3dzc12wxkEQtF6cHg6Ofls_19oT7mk0Gy_wSsQqUYz7l5EBHhbbFOQhiZ&task=&locate=&page=index&type=click&url=http%3A%2F%2Ftieba.baidu.com%2Findex.html%3F&refer=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DQ1IjAfM_nh5HiQdR3bL07TaSO2DrhplKGuk8pEElk_7xRAefQv-_3mcopKxVtcw6%26wd%3D%26eqid%3Da5269ff9000e80b90000000557b11c55&fid=&fname=&uid=&uname=&is_new_user=&tid=&_t=1471224921&obj_id=30254"
                                           target="_blank" class="j_click_stats" data-locate="图片">
                                            <img src="http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470801919392.jpg"
                                                 style="width: 100%;height: 100%;" alt="贴吧图片" title="贴吧图片"/>
                                            <div class="img_txt">
                                                <p class="img_title">直播1小时，补贴400元。</p>
                                            </div>
                                        </a>
                                    </div>

                                    <style>
                                        div.nd161e1840 {
                                            width: 280px;
                                            height: 180px;
                                            border: none;
                                            background: none;
                                            display: inline-block;
                                            position: relative;

                                        }

                                        div.nd161e1840 .img_txt {
                                            width: 280px;
                                            height: 30px;
                                            border: none;
                                            background: rgba(0, 0, 0, 0.5);
                                            overflow: hidden;
                                            position: absolute;
                                            bottom: 0;
                                            left: 0;

                                        }

                                    </style>
                                    <div class="vff1fe3faa  clearfix">
                                        <a href="/link?client_type=pc_web&tbjump=lid%253D2121659560_24665_4___0%2526url%253Dac00Y-GH6BIjjkp1FxmT5stbuAUPOPKn8HJbHi0udn_YlijSjIT96rkXPF4d6xc3sk5vYI966bS8bJotDBAbWaSPVGhlq0knbHE26D3HbwNucJ_6vCwQj4YGzCq_zfJs4c_tx_jEqEunTMQpKEdb36rCHsz_SVY27VTogh_DAGRM3na8-wk734wmgOZWRlO9hmq3l4VZ_eghkuPp3M36kNzSIkcydx6J9Ad2ttwcp597S8W-ZmMufj7BRACHgPvD3b8x2jOAq6o4sBmsKvPzGlb-xi3dzC4YB2hKoTHFJZuoKSgOG5dS0mX7wIL39us1G9wusenz6l5OmippC4S7LNhObFpnZjFyh9MbgnvvCpeDeokfCp2fmWDIXK62xmDXgbvP3AoeClZh63rN6XNheTzoakvK4QjskzlFp1Iwzf81IGGZAc56_NG7k3ygNWCt42_2NMmLUjlstPpNz1ylHchXV6UU85-D5p0E6sNjJw97utIc3jpzR1m5mA4dN9rE7Iijt0jEWMZasbcNgAUH56AwxTYFZcxPnUccfpsRbpAwk2J3hw67J545FZRGx4mkH-2TkcL4n-IIQCsZ9ArPrGGxJ4nnTF0WX5UzAPKoc4aSIjVr081bw0am47lcfw2lSCm4RCnhv-kuGt8kIhKHdueYB9wcEx4p8f7tXcecmHUiFXQ-8xl3-HOJ1eveiMey9X8VzBbhuFl8G0cJ8_VqxhA7tUa9V1dNftgLN2f5sI6lXG6nSZd0JYxyP17SU8SeaM4HV6FT5t7s4uXLJADpmGlSDAN3nKnTzIfkqubGX8w0VJg1XnUExuF5eaUyORUt6xaJkfIyjfE5liO1MetdpNqZ3yKxw2MYn5rU2VsreXt44CfOlRcGpJuXmdwdsQhqFD0rJV2mViNGX1y5tDNglWoftitkXSs3CCc1W_K1mVr1mKPlKX1X-Fo08fPyS667JoyhFo4EzS5C1ZerAaFH9zVBOBHmNO5RmnOPBjbc5WgGDhM&task=&locate=&page=index&type=click&url=http%3A%2F%2Ftieba.baidu.com%2Findex.html%3F&refer=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DQ1IjAfM_nh5HiQdR3bL07TaSO2DrhplKGuk8pEElk_7xRAefQv-_3mcopKxVtcw6%26wd%3D%26eqid%3Da5269ff9000e80b90000000557b11c55&fid=&fname=&uid=&uname=&is_new_user=&tid=&_t=1471224921&obj_id=24665"
                                           target="_blank" class="j_click_stats" data-locate="图片">
                                            <img src="http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1431652528522.jpg"
                                                 style="width: 100%;height: 100%;" alt="贴吧图片" title="贴吧图片"/>
                                            <div class="img_txt">
                                                <p class="img_title">女神狂爱 献身推荐 你来不来？</p>
                                            </div>
                                        </a>
                                    </div>

                                    <style>
                                        div.vff1fe3faa {
                                            width: 400px;
                                            height: 180px;
                                            border: none;
                                            background: none;
                                            display: inline-block;
                                            position: relative;

                                        }

                                        div.vff1fe3faa .img_txt {
                                            width: 400px;
                                            height: 30px;
                                            border: none;
                                            background: rgba(0, 0, 0, 0.5);
                                            overflow: hidden;
                                            position: absolute;
                                            bottom: 0;
                                            left: 0;

                                        }

                                    </style>
                                </li>
                            </ul>
                        </div>
                        <div class="top_progress_bar"><span id="top_progress_prev" class="top_progress_prev">1</span>
                            <ul id="img_page" class="img_page">
                                <li>1</li>
                                <li>2</li>
                                <li>3</li>
                                <li>4</li>
                            </ul>
                            <span id="top_progress_next" class="top_progress_next">2</span></div>
                    </div>
                    <div class="index-forum-num-ten-millions">
                        <div class="rec_right " id="rec_right">
                            <div id="in_forum_num" class="num_list num_list02"><span class="num_span"><i
                                    class="num_icon"></i></span><span class="num_span"><i
                                    class="num_icon"></i></span><span class="num_span"><i
                                    class="num_icon"></i></span><span class="num_span"><i
                                    class="num_icon"></i></span><span class="num_span"><i
                                    class="num_icon"></i></span><span class="num_span"><i
                                    class="num_icon"></i></span><span class="num_span"><i class="num_icon"></i></span>
                                <span class="num_span"><i class="num_icon"></i></span></div>
                            <a href="#" class="btn_login"></a></div>
                    </div>
                </div>
                <div class="middle-sec clearfix">
                    <div class="wdc11bf562  hide_style">
                        <div class="iframe_wrapper clearfix">
                        </div>
                    </div>

                    <style>
                        div.wdc11bf562 {
                            border: none;
                            background: none;
                            margin-bottom: 10px;
                        }

                        div.hide_style {
                            position: absolute;
                            left: -9999px;
                            z-index: -11;
                        }

                        div.wdc11bf562 .iframe_wrapper {
                            width: 1000px;
                            height: 90px;
                        }

                        div.wdc11bf562 .iframe_wrapper iframe {
                            vertical-align: top;
                            width: 100%;
                            height: 100%;
                        }
                    </style>
                </div>
                <div class="content-sec clearfix">
                    <div class="left-sec">
                        <div class="left-cont-wraper" id="left-cont-wraper">
                            <div class="u-f-t ufw-gap">
                                <div class="title">贴吧分类</div>
                                <div class="gap" style="width:125px"></div>
                            </div>
                            <div class="f-d-w" id="f-d-w" alog-alias="left-forums-category"
                                 alog-group="left-forums-category">
                                <div class="f-d-item first-border-top" data-for="entertainment">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon entertainment"></span><a title="娱乐明星"
                                                                                                          target="_blank"
                                                                                                          href="/f/index/forumpark?pcn=娱乐明星&pci=0&ct=1&rn=20&pn=1">娱乐明星</a>
                                        </div>
                                        <div class="directory-wraper"><a title="港台东南亚明星" target="_blank"
                                                                         href="/f/index/forumpark?cn=港台东南亚明星&ci=0&pcn=娱乐明星&pci=0&ct=1&rn=20&pn=1">港台东南亚明星</a><a
                                                title="内地明星" target="_blank"
                                                href="/f/index/forumpark?cn=内地明星&ci=0&pcn=娱乐明星&pci=0&ct=1&rn=20&pn=1">内地明星</a><a
                                                title="韩国明星" target="_blank"
                                                href="/f/index/forumpark?cn=韩国明星&ci=0&pcn=娱乐明星&pci=0&ct=1&rn=20&pn=1">韩国明星</a><a
                                                title="日本明星" target="_blank"
                                                href="/f/index/forumpark?cn=日本明星&ci=0&pcn=娱乐明星&pci=0&ct=1&rn=20&pn=1">日本明星</a><a
                                                title="时尚人物" target="_blank"
                                                href="/f/index/forumpark?cn=时尚人物&ci=0&pcn=娱乐明星&pci=0&ct=1&rn=20&pn=1">时尚人物</a><a
                                                title="欧美明星" target="_blank"
                                                href="/f/index/forumpark?cn=欧美明星&ci=0&pcn=娱乐明星&pci=0&ct=1&rn=20&pn=1">欧美明星</a><a
                                                title="主持人" target="_blank"
                                                href="/f/index/forumpark?cn=主持人&ci=0&pcn=娱乐明星&pci=0&ct=1&rn=20&pn=1">主持人</a><a
                                                title="其他娱乐明星" target="_blank"
                                                href="/f/index/forumpark?cn=其他娱乐明星&ci=0&pcn=娱乐明星&pci=0&ct=1&rn=20&pn=1">其他娱乐明星</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-d-item " data-for="tvshows">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon tvshows"></span><a title="爱综艺"
                                                                                                    target="_blank"
                                                                                                    href="/f/index/forumpark?pcn=电视节目&pci=0&ct=1&rn=20&pn=1">爱综艺</a>
                                        </div>
                                        <div class="directory-wraper"><a title="内地综艺" target="_blank"
                                                                         href="/f/index/forumpark?cn=内地综艺&ci=0&pcn=电视节目&pci=0&ct=1&rn=20&pn=1">内地综艺</a><a
                                                title="台湾综艺" target="_blank"
                                                href="/f/index/forumpark?cn=台湾综艺&ci=0&pcn=电视节目&pci=0&ct=1&rn=20&pn=1">台湾综艺</a><a
                                                title="韩国综艺" target="_blank"
                                                href="/f/index/forumpark?cn=韩国综艺&ci=0&pcn=电视节目&pci=0&ct=1&rn=20&pn=1">韩国综艺</a><a
                                                title="时尚·生活服务" target="_blank"
                                                href="/f/index/forumpark?cn=时尚·生活服务&ci=0&pcn=电视节目&pci=0&ct=1&rn=20&pn=1">时尚·生活服务</a><a
                                                title="体育运动·健身" target="_blank"
                                                href="/f/index/forumpark?cn=体育运动·健身&ci=0&pcn=电视节目&pci=0&ct=1&rn=20&pn=1">体育运动·健身</a><a
                                                title="财经·职场" target="_blank"
                                                href="/f/index/forumpark?cn=财经·职场&ci=0&pcn=电视节目&pci=0&ct=1&rn=20&pn=1">财经·职场</a><a
                                                title="新闻资讯" target="_blank"
                                                href="/f/index/forumpark?cn=新闻资讯&ci=0&pcn=电视节目&pci=0&ct=1&rn=20&pn=1">新闻资讯</a><a
                                                title="电视台及频道" target="_blank"
                                                href="/f/index/forumpark?cn=电视台及频道&ci=0&pcn=电视节目&pci=0&ct=1&rn=20&pn=1">电视台及频道</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-d-item " data-for="teleplay">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon teleplay"></span><a title="追剧狂"
                                                                                                     target="_blank"
                                                                                                     href="/f/index/forumpark?pcn=电视剧&pci=0&ct=1&rn=20&pn=1">追剧狂</a>
                                        </div>
                                        <div class="directory-wraper"><a title="韩国电视剧" target="_blank"
                                                                         href="/f/index/forumpark?cn=韩国电视剧&ci=0&pcn=电视剧&pci=0&ct=1&rn=20&pn=1">韩国电视剧</a><a
                                                title="香港电视剧" target="_blank"
                                                href="/f/index/forumpark?cn=香港电视剧&ci=0&pcn=电视剧&pci=0&ct=1&rn=20&pn=1">香港电视剧</a><a
                                                title="美剧" target="_blank"
                                                href="/f/index/forumpark?cn=美剧&ci=0&pcn=电视剧&pci=0&ct=1&rn=20&pn=1">美剧</a><a
                                                title="日本电视剧" target="_blank"
                                                href="/f/index/forumpark?cn=日本电视剧&ci=0&pcn=电视剧&pci=0&ct=1&rn=20&pn=1">日本电视剧</a><a
                                                title="内地电视剧" target="_blank"
                                                href="/f/index/forumpark?cn=内地电视剧&ci=0&pcn=电视剧&pci=0&ct=1&rn=20&pn=1">内地电视剧</a><a
                                                title="台湾电视剧" target="_blank"
                                                href="/f/index/forumpark?cn=台湾电视剧&ci=0&pcn=电视剧&pci=0&ct=1&rn=20&pn=1">台湾电视剧</a><a
                                                title="东南亚电视剧" target="_blank"
                                                href="/f/index/forumpark?cn=东南亚电视剧&ci=0&pcn=电视剧&pci=0&ct=1&rn=20&pn=1">东南亚电视剧</a><a
                                                title="其他地区电视剧" target="_blank"
                                                href="/f/index/forumpark?cn=其他地区电视剧&ci=0&pcn=电视剧&pci=0&ct=1&rn=20&pn=1">其他地区电视剧</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-d-item " data-for="movie">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon movie"></span><a title="看电影"
                                                                                                  target="_blank"
                                                                                                  href="/f/index/forumpark?pcn=电影&pci=0&ct=1&rn=20&pn=1">看电影</a>
                                        </div>
                                        <div class="directory-wraper"><a title="香港电影" target="_blank"
                                                                         href="/f/index/forumpark?cn=香港电影&ci=0&pcn=电影&pci=0&ct=1&rn=20&pn=1">香港电影</a><a
                                                title="欧美电影" target="_blank"
                                                href="/f/index/forumpark?cn=欧美电影&ci=0&pcn=电影&pci=0&ct=1&rn=20&pn=1">欧美电影</a><a
                                                title="内地电影" target="_blank"
                                                href="/f/index/forumpark?cn=内地电影&ci=0&pcn=电影&pci=0&ct=1&rn=20&pn=1">内地电影</a><a
                                                title="韩国电影" target="_blank"
                                                href="/f/index/forumpark?cn=韩国电影&ci=0&pcn=电影&pci=0&ct=1&rn=20&pn=1">韩国电影</a><a
                                                title="日本电影" target="_blank"
                                                href="/f/index/forumpark?cn=日本电影&ci=0&pcn=电影&pci=0&ct=1&rn=20&pn=1">日本电影</a><a
                                                title="台湾电影" target="_blank"
                                                href="/f/index/forumpark?cn=台湾电影&ci=0&pcn=电影&pci=0&ct=1&rn=20&pn=1">台湾电影</a><a
                                                title="电影话题" target="_blank"
                                                href="/f/index/forumpark?cn=电影话题&ci=0&pcn=电影&pci=0&ct=1&rn=20&pn=1">电影话题</a><a
                                                title="东南亚电影" target="_blank"
                                                href="/f/index/forumpark?cn=东南亚电影&ci=0&pcn=电影&pci=0&ct=1&rn=20&pn=1">东南亚电影</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-d-item " data-for="sports">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon sports"></span><a title="体育"
                                                                                                   target="_blank"
                                                                                                   href="/f/index/forumpark?pcn=体育迷&pci=275&ct=0&rn=20&pn=1">体育</a>
                                        </div>
                                        <div class="directory-wraper"><a title="足球" target="_blank"
                                                                         href="/f/index/forumpark?cn=足球&ci=276&pcn=体育迷&pci=275&ct=0&rn=20&pn=1">足球</a><a
                                                title="篮球" target="_blank"
                                                href="/f/index/forumpark?cn=篮球&ci=277&pcn=体育迷&pci=275&ct=0&rn=20&pn=1">篮球</a><a
                                                title="NBA" target="_blank"
                                                href="/f/index/forumpark?cn=NBA&ci=278&pcn=体育迷&pci=275&ct=0&rn=20&pn=1">NBA</a><a
                                                title="CBA" target="_blank"
                                                href="/f/index/forumpark?cn=CBA&ci=279&pcn=体育迷&pci=275&ct=0&rn=20&pn=1">CBA</a><a
                                                title="乒乓球" target="_blank"
                                                href="/f/index/forumpark?cn=乒乓球&ci=280&pcn=体育迷&pci=275&ct=0&rn=20&pn=1">乒乓球</a><a
                                                title="网球" target="_blank"
                                                href="/f/index/forumpark?cn=网球&ci=281&pcn=体育迷&pci=275&ct=0&rn=20&pn=1">网球</a><a
                                                title="舞蹈" target="_blank"
                                                href="/f/index/forumpark?cn=舞蹈&ci=283&pcn=体育迷&pci=275&ct=0&rn=20&pn=1">舞蹈</a><a
                                                title="健身" target="_blank"
                                                href="/f/index/forumpark?cn=健身&ci=284&pcn=体育迷&pci=275&ct=0&rn=20&pn=1">健身</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-d-item " data-for="literature">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon literature"></span><a title="小说"
                                                                                                       target="_blank"
                                                                                                       href="/f/index/forumpark?pcn=小说&pci=161&ct=0&rn=20&pn=1">小说</a>
                                        </div>
                                        <div class="directory-wraper"><a title="奇幻" target="_blank"
                                                                         href="/f/index/forumpark?cn=奇幻&ci=403&pcn=小说&pci=161&ct=0&rn=20&pn=1">奇幻</a><a
                                                title="言情" target="_blank"
                                                href="/f/index/forumpark?cn=言情&ci=177&pcn=小说&pci=161&ct=0&rn=20&pn=1">言情</a><a
                                                title="灵异" target="_blank"
                                                href="/f/index/forumpark?cn=灵异&ci=404&pcn=小说&pci=161&ct=0&rn=20&pn=1">灵异</a><a
                                                title="穿越" target="_blank"
                                                href="/f/index/forumpark?cn=穿越&ci=162&pcn=小说&pci=161&ct=0&rn=20&pn=1">穿越</a><a
                                                title="连载" target="_blank"
                                                href="/f/index/forumpark?cn=连载&ci=169&pcn=小说&pci=161&ct=0&rn=20&pn=1">连载</a><a
                                                title="修真" target="_blank"
                                                href="/f/index/forumpark?cn=修真&ci=412&pcn=小说&pci=161&ct=0&rn=20&pn=1">修真</a><a
                                                title="历史" target="_blank"
                                                href="/f/index/forumpark?cn=历史&ci=121&pcn=小说&pci=161&ct=0&rn=20&pn=1">历史</a><a
                                                title="架空文" target="_blank"
                                                href="/f/index/forumpark?cn=架空文&ci=409&pcn=小说&pci=161&ct=0&rn=20&pn=1">架空文</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-d-item " data-for="livingexpert">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon livingexpert"></span><a title="生活家"
                                                                                                         target="_blank"
                                                                                                         href="/f/index/forumpark?pcn=生活家&pci=214&ct=0&rn=20&pn=1">生活家</a>
                                        </div>
                                        <div class="directory-wraper"><a title="小而美" target="_blank"
                                                                         href="/f/index/forumpark?cn=小而美&ci=244&pcn=生活家&pci=214&ct=0&rn=20&pn=1">小而美</a><a
                                                title="DIY" target="_blank"
                                                href="/f/index/forumpark?cn=DIY&ci=72&pcn=生活家&pci=214&ct=0&rn=20&pn=1">DIY</a><a
                                                title="美食" target="_blank"
                                                href="/f/index/forumpark?cn=美食&ci=380&pcn=生活家&pci=214&ct=0&rn=20&pn=1">美食</a><a
                                                title="摄影" target="_blank"
                                                href="/f/index/forumpark?cn=摄影&ci=82&pcn=生活家&pci=214&ct=0&rn=20&pn=1">摄影</a><a
                                                title="旅行" target="_blank"
                                                href="/f/index/forumpark?cn=旅行&ci=92&pcn=生活家&pci=214&ct=0&rn=20&pn=1">旅行</a><a
                                                title="变美" target="_blank"
                                                href="/f/index/forumpark?cn=变美&ci=520&pcn=生活家&pci=214&ct=0&rn=20&pn=1">变美</a><a
                                                title="留学移民" target="_blank"
                                                href="/f/index/forumpark?cn=留学移民&ci=521&pcn=生活家&pci=214&ct=0&rn=20&pn=1">留学移民</a><a
                                                title="文玩" target="_blank"
                                                href="/f/index/forumpark?cn=文玩&ci=522&pcn=生活家&pci=214&ct=0&rn=20&pn=1">文玩</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-d-item " data-for="xianqu">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon xianqu"></span><a title="闲·趣"
                                                                                                   target="_blank"
                                                                                                   href="/f/index/forumpark?pcn=闲·趣&pci=429&ct=0&rn=20&pn=1">闲·趣</a>
                                        </div>
                                        <div class="directory-wraper"><a title="萌宠" target="_blank"
                                                                         href="/f/index/forumpark?cn=萌宠&ci=4&pcn=闲·趣&pci=429&ct=0&rn=20&pn=1">萌宠</a><a
                                                title="萝莉" target="_blank"
                                                href="/f/index/forumpark?cn=萝莉&ci=6&pcn=闲·趣&pci=429&ct=0&rn=20&pn=1">萝莉</a><a
                                                title="重口味" target="_blank"
                                                href="/f/index/forumpark?cn=重口味&ci=257&pcn=闲·趣&pci=429&ct=0&rn=20&pn=1">重口味</a><a
                                                title="吐槽" target="_blank"
                                                href="/f/index/forumpark?cn=吐槽&ci=152&pcn=闲·趣&pci=429&ct=0&rn=20&pn=1">吐槽</a><a
                                                title="恐怖" target="_blank"
                                                href="/f/index/forumpark?cn=恐怖&ci=255&pcn=闲·趣&pci=429&ct=0&rn=20&pn=1">恐怖</a><a
                                                title="星座" target="_blank"
                                                href="/f/index/forumpark?cn=星座&ci=263&pcn=闲·趣&pci=429&ct=0&rn=20&pn=1">星座</a><a
                                                title="爆料" target="_blank"
                                                href="/f/index/forumpark?cn=爆料&ci=42&pcn=闲·趣&pci=429&ct=0&rn=20&pn=1">爆料</a><a
                                                title="喵星人" target="_blank"
                                                href="/f/index/forumpark?cn=喵星人&ci=5&pcn=闲·趣&pci=429&ct=0&rn=20&pn=1">喵星人</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-d-item " data-for="game">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon game"></span><a title="游戏"
                                                                                                 target="_blank"
                                                                                                 href="/f/index/forumpark?pcn=游戏&pci=0&ct=1&rn=20&pn=1">游戏</a>
                                        </div>
                                        <div class="directory-wraper"><a title="客户端网游" target="_blank"
                                                                         href="/f/index/forumpark?cn=客户端网游&ci=0&pcn=游戏&pci=0&ct=1&rn=20&pn=1">客户端网游</a><a
                                                title="桌游" target="_blank"
                                                href="/f/index/forumpark?cn=桌游&ci=0&pcn=游戏&pci=0&ct=1&rn=20&pn=1">桌游</a><a
                                                title="游戏角色" target="_blank"
                                                href="/f/index/forumpark?cn=游戏角色&ci=0&pcn=游戏&pci=0&ct=1&rn=20&pn=1">游戏角色</a><a
                                                title="网页版网游" target="_blank"
                                                href="/f/index/forumpark?cn=网页版网游&ci=0&pcn=游戏&pci=0&ct=1&rn=20&pn=1">网页版网游</a><a
                                                title="手机游戏" target="_blank"
                                                href="/f/index/forumpark?cn=手机游戏&ci=0&pcn=游戏&pci=0&ct=1&rn=20&pn=1">手机游戏</a><a
                                                title="小游戏" target="_blank"
                                                href="/f/index/forumpark?cn=小游戏&ci=0&pcn=游戏&pci=0&ct=1&rn=20&pn=1">小游戏</a><a
                                                title="单机游戏" target="_blank"
                                                href="/f/index/forumpark?cn=单机游戏&ci=0&pcn=游戏&pci=0&ct=1&rn=20&pn=1">单机游戏</a><a
                                                title="掌机游戏" target="_blank"
                                                href="/f/index/forumpark?cn=掌机游戏&ci=0&pcn=游戏&pci=0&ct=1&rn=20&pn=1">掌机游戏</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-d-item " data-for="cartoon">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon cartoon"></span><a title="动漫宅"
                                                                                                    target="_blank"
                                                                                                    href="/f/index/forumpark?pcn=动漫宅&pci=206&ct=0&rn=20&pn=1">动漫宅</a>
                                        </div>
                                        <div class="directory-wraper"><a title="日本动漫" target="_blank"
                                                                         href="/f/index/forumpark?cn=日本动漫&ci=312&pcn=动漫宅&pci=206&ct=0&rn=20&pn=1">日本动漫</a><a
                                                title="国产动漫" target="_blank"
                                                href="/f/index/forumpark?cn=国产动漫&ci=313&pcn=动漫宅&pci=206&ct=0&rn=20&pn=1">国产动漫</a><a
                                                title="欧美动漫" target="_blank"
                                                href="/f/index/forumpark?cn=欧美动漫&ci=314&pcn=动漫宅&pci=206&ct=0&rn=20&pn=1">欧美动漫</a><a
                                                title="搞笑漫画" target="_blank"
                                                href="/f/index/forumpark?cn=搞笑漫画&ci=319&pcn=动漫宅&pci=206&ct=0&rn=20&pn=1">搞笑漫画</a><a
                                                title="热血动漫" target="_blank"
                                                href="/f/index/forumpark?cn=热血动漫&ci=323&pcn=动漫宅&pci=206&ct=0&rn=20&pn=1">热血动漫</a><a
                                                title="推理" target="_blank"
                                                href="/f/index/forumpark?cn=推理&ci=83&pcn=动漫宅&pci=206&ct=0&rn=20&pn=1">推理</a><a
                                                title="声优" target="_blank"
                                                href="/f/index/forumpark?cn=声优&ci=210&pcn=动漫宅&pci=206&ct=0&rn=20&pn=1">声优</a><a
                                                title="COS" target="_blank"
                                                href="/f/index/forumpark?cn=COS&ci=212&pcn=动漫宅&pci=206&ct=0&rn=20&pn=1">COS</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-d-item " data-for="academy">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon academy"></span><a title="高校"
                                                                                                    target="_blank"
                                                                                                    href="/f/index/forumpark?pcn=高等院校&pci=0&ct=1&rn=20&pn=1">高校</a>
                                        </div>
                                        <div class="directory-wraper"><a title="北京院校" target="_blank"
                                                                         href="/f/index/forumpark?cn=北京院校&ci=0&pcn=高等院校&pci=0&ct=1&rn=20&pn=1">北京院校</a><a
                                                title="山东院校" target="_blank"
                                                href="/f/index/forumpark?cn=山东院校&ci=0&pcn=高等院校&pci=0&ct=1&rn=20&pn=1">山东院校</a><a
                                                title="江苏院校" target="_blank"
                                                href="/f/index/forumpark?cn=江苏院校&ci=0&pcn=高等院校&pci=0&ct=1&rn=20&pn=1">江苏院校</a><a
                                                title="四川院校" target="_blank"
                                                href="/f/index/forumpark?cn=四川院校&ci=0&pcn=高等院校&pci=0&ct=1&rn=20&pn=1">四川院校</a><a
                                                title="湖北院校" target="_blank"
                                                href="/f/index/forumpark?cn=湖北院校&ci=0&pcn=高等院校&pci=0&ct=1&rn=20&pn=1">湖北院校</a><a
                                                title="河北院校" target="_blank"
                                                href="/f/index/forumpark?cn=河北院校&ci=0&pcn=高等院校&pci=0&ct=1&rn=20&pn=1">河北院校</a><a
                                                title="安徽院校" target="_blank"
                                                href="/f/index/forumpark?cn=安徽院校&ci=0&pcn=高等院校&pci=0&ct=1&rn=20&pn=1">安徽院校</a><a
                                                title="陕西院校" target="_blank"
                                                href="/f/index/forumpark?cn=陕西院校&ci=0&pcn=高等院校&pci=0&ct=1&rn=20&pn=1">陕西院校</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-d-item " data-for="district">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon district"></span><a title="地区"
                                                                                                     target="_blank"
                                                                                                     href="/f/index/forumpark?pcn=地区&pci=0&ct=1&rn=20&pn=1">地区</a>
                                        </div>
                                        <div class="directory-wraper"><a title="山东" target="_blank"
                                                                         href="/f/index/forumpark?cn=山东&ci=0&pcn=地区&pci=0&ct=1&rn=20&pn=1">山东</a><a
                                                title="河北" target="_blank"
                                                href="/f/index/forumpark?cn=河北&ci=0&pcn=地区&pci=0&ct=1&rn=20&pn=1">河北</a><a
                                                title="河南" target="_blank"
                                                href="/f/index/forumpark?cn=河南&ci=0&pcn=地区&pci=0&ct=1&rn=20&pn=1">河南</a><a
                                                title="山西" target="_blank"
                                                href="/f/index/forumpark?cn=山西&ci=0&pcn=地区&pci=0&ct=1&rn=20&pn=1">山西</a><a
                                                title="江苏" target="_blank"
                                                href="/f/index/forumpark?cn=江苏&ci=0&pcn=地区&pci=0&ct=1&rn=20&pn=1">江苏</a><a
                                                title="辽宁" target="_blank"
                                                href="/f/index/forumpark?cn=辽宁&ci=0&pcn=地区&pci=0&ct=1&rn=20&pn=1">辽宁</a><a
                                                title="四川" target="_blank"
                                                href="/f/index/forumpark?cn=四川&ci=0&pcn=地区&pci=0&ct=1&rn=20&pn=1">四川</a><a
                                                title="广东" target="_blank"
                                                href="/f/index/forumpark?cn=广东&ci=0&pcn=地区&pci=0&ct=1&rn=20&pn=1">广东</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-d-item " data-for="humanity">
                                    <div class="f-d-item-content">
                                        <div class="title"><span class="typeicon humanity"></span><a title="人文自然"
                                                                                                     target="_blank"
                                                                                                     href="/f/index/forumpark?pcn=人文自然&pci=0&ct=1&rn=20&pn=1">人文自然</a>
                                        </div>
                                        <div class="directory-wraper"><a title="艺术" target="_blank"
                                                                         href="/f/index/forumpark?cn=艺术&ci=0&pcn=人文自然&pci=0&ct=1&rn=20&pn=1">艺术</a><a
                                                title="军事" target="_blank"
                                                href="/f/index/forumpark?cn=军事&ci=0&pcn=人文自然&pci=0&ct=1&rn=20&pn=1">军事</a><a
                                                title="历史" target="_blank"
                                                href="/f/index/forumpark?cn=历史&ci=0&pcn=人文自然&pci=0&ct=1&rn=20&pn=1">历史</a><a
                                                title="自然" target="_blank"
                                                href="/f/index/forumpark?cn=自然&ci=0&pcn=人文自然&pci=0&ct=1&rn=20&pn=1">自然</a><a
                                                title="鉴赏收藏" target="_blank"
                                                href="/f/index/forumpark?cn=鉴赏收藏&ci=0&pcn=人文自然&pci=0&ct=1&rn=20&pn=1">鉴赏收藏</a><a
                                                title="民族文化" target="_blank"
                                                href="/f/index/forumpark?cn=民族文化&ci=0&pcn=人文自然&pci=0&ct=1&rn=20&pn=1">民族文化</a><a
                                                title="语言文化" target="_blank"
                                                href="/f/index/forumpark?cn=语言文化&ci=0&pcn=人文自然&pci=0&ct=1&rn=20&pn=1">语言文化</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="all-wraper"><a target="_blank" href="/f/index/forumclass" class="all"><span
                                        class="more-txt">查看全部</span></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="right-sec clearfix">
                        <div class="r-top-sec">
                            <div class="forum_recommend" alog-alias="forum_recommend">
                                <div class="day_rcmd clearfix" id="day_rcmd" alog-group="day_rcmd"><span
                                        class="class_title">朵朵奇吧</span>
                                    <div class="rcmd_forum_list">
                                        <div class="rcmd_forum clearfix"><a href="/f?kw=%C3%C0%CA%B3" target="_blank"
                                                                            class="rcmd_forum_img"><img
                                                src="http://tb1.bdstatic.com/tb/%E7%BE%8E%E9%A3%9F812.jpeg" width="95"
                                                height="95" alt="美食"/></a>
                                            <div class="rcmd_forum_desc"><p class="rcmd_f_name"><a
                                                    href="/f?kw=%C3%C0%CA%B3" target="_blank">美食吧</a></p>
                                                <p class="rcmd_f_reason">世界美食爱好者交流中心</p>
                                                <p class="rcmd_f_num"><span class="rcmd_f_m_num">2987224</span><span
                                                        class="rcmd_f_p_num">12892524</span></p></div>
                                        </div>
                                    </div>
                                    <div class="rcmd_forum_list">
                                        <div class="rcmd_forum clearfix"><a href="/f?kw=ALa%D6%B1%B2%A5" target="_blank"
                                                                            class="rcmd_forum_img"><img
                                                src="http://tieba.baidu.com/p/4727061536" width="95" height="95"
                                                alt="ALa直播"/></a>
                                            <div class="rcmd_forum_desc"><p class="rcmd_f_name"><a
                                                    href="/f?kw=ALa%D6%B1%B2%A5" target="_blank">ALa直播吧</a></p>
                                                <p class="rcmd_f_reason">8.18贴吧直播周火热开启！</p>
                                                <p class="rcmd_f_num"><span class="rcmd_f_m_num">26144</span><span
                                                        class="rcmd_f_p_num">48358</span></p></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="good_rcmd" id="good_rcmd" alog-group="good_rcmd"><span class="class_title">上贴吧看小说品人生</span>
                                    <div class="good_forum_list clearfix"><a class="good_rcmd_left" id="good_rcmd_left"
                                                                             href="#" onclick="return false;"></a>
                                        <div class="good_rcmd_center" id="good_rcmd_center">
                                            <ul id="gr_f_list" class="gr_f_list clearfix">
                                                <li class="clearfix"><a class="good_forum clearfix"
                                                                        href="/f?kw=%CA%E9%BB%C4" target="_blank"><img
                                                        src="http://tb1.bdstatic.com/tb/1%E4%B9%A6%E8%8D%92%E5%90%A7.png"
                                                        width="65" height="65" class="gf_pic"/>
                                                    <div class="gf_desc"><p class="gf_fname">书荒吧</p>
                                                        <p class="gf_m_num">437343</p>
                                                        <p class="gf_tag">小说推荐</p></div>
                                                </a>
                                                <li class="clearfix"><a class="good_forum clearfix"
                                                                        href="/f?kw=%D0%A1%CB%B5" target="_blank"><img
                                                        src="http://tb1.bdstatic.com/tb/2%E5%B0%8F%E8%AF%B4%E5%90%A7.jpg"
                                                        width="65" height="65" class="gf_pic"/>
                                                    <div class="gf_desc"><p class="gf_fname">小说吧</p>
                                                        <p class="gf_m_num">2987177</p>
                                                        <p class="gf_tag">书评</p></div>
                                                </a>
                                                <li class="clearfix"><a class="good_forum clearfix"
                                                                        href="/f?kw=%CF%C9%CF%C0%D0%A1%CB%B5"
                                                                        target="_blank"><img
                                                        src="http://tb1.bdstatic.com/tb/3%E4%BB%99%E4%BE%A0%E5%B0%8F%E8%AF%B4%E5%90%A7.png"
                                                        width="65" height="65" class="gf_pic"/>
                                                    <div class="gf_desc"><p class="gf_fname">仙侠小说吧</p>
                                                        <p class="gf_m_num">28362</p>
                                                        <p class="gf_tag"></p></div>
                                                </a>
                                                <li class="clearfix"><a class="good_forum clearfix"
                                                                        href="/f?kw=%D0%FE%BB%C3%D0%A1%CB%B5"
                                                                        target="_blank"><img
                                                        src="http://tb1.bdstatic.com/tb/4%E7%8E%84%E5%B9%BB%E5%B0%8F%E8%AF%B4%E5%90%A7.png"
                                                        width="65" height="65" class="gf_pic"/>
                                                    <div class="gf_desc"><p class="gf_fname">玄幻小说吧</p>
                                                        <p class="gf_m_num">302895</p>
                                                        <p class="gf_tag">书评</p></div>
                                                </a>
                                                <li class="clearfix"><a class="good_forum clearfix"
                                                                        href="/f?kw=%B6%BC%CA%D0%D0%A1%CB%B5"
                                                                        target="_blank"><img
                                                        src="http://tb1.bdstatic.com/tb/5%E9%83%BD%E5%B8%82%E5%B0%8F%E8%AF%B4%E5%90%A7.png"
                                                        width="65" height="65" class="gf_pic"/>
                                                    <div class="gf_desc"><p class="gf_fname">都市小说吧</p>
                                                        <p class="gf_m_num">129295</p>
                                                        <p class="gf_tag">书评</p></div>
                                                </a>
                                                <li class="clearfix"><a class="good_forum clearfix"
                                                                        href="/f?kw=%CD%F8%C2%E7%D0%A1%CB%B5"
                                                                        target="_blank"><img
                                                        src="http://tb1.bdstatic.com/tb/6%E7%BD%91%E7%BB%9C%E5%B0%8F%E8%AF%B4%E5%90%A7.png"
                                                        width="65" height="65" class="gf_pic"/>
                                                    <div class="gf_desc"><p class="gf_fname">网络小说吧</p>
                                                        <p class="gf_m_num">243201</p>
                                                        <p class="gf_tag">小说推荐</p></div>
                                                </a>
                                                <li class="clearfix"><a class="good_forum clearfix"
                                                                        href="/f?kw=%D4%AD%B4%B4%D0%A1%CB%B5"
                                                                        target="_blank"><img
                                                        src="http://tb1.bdstatic.com/tb/7%E5%8E%9F%E5%88%9B%E5%B0%8F%E8%AF%B4%E5%90%A7.png"
                                                        width="65" height="65" class="gf_pic"/>
                                                    <div class="gf_desc"><p class="gf_fname">原创小说吧</p>
                                                        <p class="gf_m_num">427030</p>
                                                        <p class="gf_tag">书评</p></div>
                                                </a>
                                                <li class="clearfix"><a class="good_forum clearfix"
                                                                        href="/f?kw=%D0%A1%CB%B5%CD%C6%BC%F6"
                                                                        target="_blank"><img
                                                        src="http://tb1.bdstatic.com/tb/8%E5%B0%8F%E8%AF%B4%E6%8E%A8%E8%8D%90%E5%90%A7.png"
                                                        width="65" height="65" class="gf_pic"/>
                                                    <div class="gf_desc"><p class="gf_fname">小说推荐吧</p>
                                                        <p class="gf_m_num">1034133</p>
                                                        <p class="gf_tag">书评</p></div>
                                                </a>
                                                <li class="clearfix"><a class="good_forum clearfix"
                                                                        href="/f?kw=%D1%D4%C7%E9%D0%A1%CB%B5"
                                                                        target="_blank"><img
                                                        src="http://tb1.bdstatic.com/tb/9%E8%A8%80%E6%83%85%E5%B0%8F%E8%AF%B4%E5%90%A7.png"
                                                        width="65" height="65" class="gf_pic"/>
                                                    <div class="gf_desc"><p class="gf_fname">言情小说吧</p>
                                                        <p class="gf_m_num">1996827</p>
                                                        <p class="gf_tag">书评</p></div>
                                                </a>
                                                <li class="clearfix"><a class="good_forum clearfix"
                                                                        href="/f?kw=%BF%D6%B2%C0%D0%A1%CB%B5"
                                                                        target="_blank"><img
                                                        src="http://tb1.bdstatic.com/tb/10%E6%81%90%E6%80%96%E5%B0%8F%E8%AF%B4%E5%90%A7.png"
                                                        width="65" height="65" class="gf_pic"/>
                                                    <div class="gf_desc"><p class="gf_fname">恐怖小说吧</p>
                                                        <p class="gf_m_num">332877</p>
                                                        <p class="gf_tag">书评</p></div>
                                                </a>
                                                <li class="clearfix"><a class="good_forum clearfix"
                                                                        href="/f?kw=%CA%C2%BC%FE%BC%C7%C2%BC"
                                                                        target="_blank"><img
                                                        src="http://tb1.bdstatic.com/tb/11%E4%BA%8B%E4%BB%B6%E8%AE%B0%E5%BD%95%E5%90%A7.png"
                                                        width="65" height="65" class="gf_pic"/>
                                                    <div class="gf_desc"><p class="gf_fname">事件记录吧</p>
                                                        <p class="gf_m_num">1063730</p>
                                                        <p class="gf_tag"></p></div>
                                                </a>
                                                <li class="clearfix"><a class="good_forum clearfix"
                                                                        href="/f?kw=%D7%CA%C9%EE%D0%A1%CB%B5%C3%D4"
                                                                        target="_blank"><img
                                                        src="http://tb1.bdstatic.com/tb/12%E8%B5%84%E6%B7%B1%E5%B0%8F%E8%AF%B4%E8%BF%B7%E5%90%A7.png"
                                                        width="65" height="65" class="gf_pic"/>
                                                    <div class="gf_desc"><p class="gf_fname">资深小说迷吧</p>
                                                        <p class="gf_m_num">46576</p>
                                                        <p class="gf_tag"></p></div>
                                                </a></li>
                                            </ul>
                                        </div>
                                        <a class="good_rcmd_right" id="good_rcmd_right" href="#"
                                           onclick="return false;"></a></div>
                                </div>
                            </div>
                            <script>void function (e, t) {
                                for (var n = t.getElementsByTagName("img"), a = +new Date, i = [], o = function () {
                                    this.removeEventListener && this.removeEventListener("load", o, !1), i.push({
                                        img: this,
                                        time: +new Date
                                    })
                                }, s = 0; s < n.length; s++)!function () {
                                    var e = n[s];
                                    e.addEventListener ? !e.complete && e.addEventListener("load", o, !1) : e.attachEvent && e.attachEvent("onreadystatechange", function () {
                                        "complete" == e.readyState && o.call(e, o)
                                    })
                                }();
                                alog("speed.set", {fsItems: i, fs: a})
                            }(window, document);</script>
                        </div>
                        <div class="r-left-sec">
                            <div class="spage_liveshow_slide clearfix" id="spage_liveshow_slide">
                                <div class="slide_outer_wrap game_slide_wrap"><a class="title j_slide_title_yy"
                                                                                 href="http://tieba.baidu.com/%E6%B8%B8%E6%88%8F%E7%9B%B4%E6%92%AD"
                                                                                 target="_blank">游戏直播</a>
                                    <div class="slide_inner_wrap">
                                        <div class="liveshow_slide_static j_liveshow_slide_static"><a
                                                href="http://tieba.baidu.com/p/4710188662" target="_blank"><img
                                                src="http://i2.piimg.com/567571/eb3511f8c093d1af.jpg" alt></a></div>
                                        <ul class="tags_list">
                                            <li class="tag"><a href="http://tieba.baidu.com/f?kw=竞技游戏&ie=utf-8"
                                                               locate="第1个#YY直播tag" title="LPL夏季赛" target="_blank"
                                                               class="tag_link">LPL夏季赛</a></li>
                                            <li class="tag"><a
                                                    href="http://tieba.baidu.com/show/zhanqi/roomList?tag_id=6"
                                                    locate="第2个#YY直播tag" title="英雄联盟" target="_blank" class="tag_link">英雄联盟</a>
                                            </li>
                                            <li class="tag"><a
                                                    href="http://tieba.baidu.com/show/zhanqi/roomList?tag_id=10"
                                                    locate="第3个#YY直播tag" title="Dota2" target="_blank" class="tag_link">Dota2</a>
                                            </li>
                                            <li class="tag"><a
                                                    href="http://tieba.baidu.com/show/zhanqi/roomList?tag_id=9"
                                                    locate="第4个#YY直播tag" title="炉石传说" target="_blank" class="tag_link">炉石传说</a>
                                            </li>
                                            <li class="tag"><a
                                                    href="http://tieba.baidu.com/show/zhanqi/roomList?tag_id=49"
                                                    locate="第5个#YY直播tag" title="单机游戏" target="_blank" class="tag_link">单机游戏</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="slide_outer_wrap"><a class="title j_slide_title_xiu8"
                                                                 href="http://tieba.baidu.com/f?ie=utf-8&kw=T%E8%B1%86%E5%A8%B1%E4%B9%90%E5%9F%8E&fr=search"
                                                                 target="_blank">娱乐中心</a>
                                    <div class="slide_inner_wrap">
                                        <div class="tbui_slideshow_container liveshow_slide_container j_girl_slide">
                                            <ul class="tbui_slideshow_list">
                                                <li class="tbui_slideshow_slide"><a class="slide_content"
                                                                                    href="http://tieba.baidu.com/f?ie=utf-8&kw=t%E8%B1%86%E5%A8%B1%E4%B9%90%E5%9F%8E#app_forum_top"
                                                                                    locate="第1个#娱乐轮播图"
                                                                                    target="_blank"><img
                                                        class="slide_img"
                                                        src="http://tb1.bdstatic.com/tb/cms/liveshow/ent_slid1.jpg"/>
                                                    <div class="play_mask"><span class="play_btn"></span></div>
                                                </a></li>
                                                <li class="tbui_slideshow_slide"><a class="slide_content"
                                                                                    href="http://tieba.baidu.com/f?ie=utf-8&kw=%E6%96%97%E5%9C%B0%E4%B8%BB#app_forum_top"
                                                                                    locate="第1个#娱乐轮播图"
                                                                                    target="_blank"><img
                                                        class="slide_img"
                                                        src="http://tb1.bdstatic.com/tb/cms/liveshow/ent_slid2.jpg"/>
                                                    <div class="play_mask"><span class="play_btn"></span></div>
                                                </a></li>
                                                <li class="tbui_slideshow_slide"><a class="slide_content"
                                                                                    href="http://tieba.baidu.com/f?ie=utf-8&kw=%E5%BE%B7%E5%B7%9E%E6%89%91%E5%85%8B&fr=search"
                                                                                    locate="第1个#娱乐轮播图"
                                                                                    target="_blank"><img
                                                        class="slide_img"
                                                        src="http://tb1.bdstatic.com/tb/cms/liveshow/ent_slid3.jpg"/>
                                                    <div class="play_mask"><span class="play_btn"></span></div>
                                                </a></li>
                                                <li class="tbui_slideshow_slide"><a class="slide_content"
                                                                                    href="http://wanba.baidu.com/login_game_by_post.xhtml?id=150&client=&inviteMsg=&serverId=S1&toolbarHide="
                                                                                    locate="第1个#娱乐轮播图"
                                                                                    target="_blank"><img
                                                        class="slide_img"
                                                        src="http://tb1.bdstatic.com/tb/cms/liveshow/ent_slid4.jpg"/>
                                                    <div class="play_mask"><span class="play_btn"></span></div>
                                                </a></li>
                                                <li class="tbui_slideshow_slide"><a class="slide_content"
                                                                                    href="http://tieba.baidu.com/f?kw=%E8%B4%B4%E5%90%A7%E5%A4%BA%E5%AE%9D&ie=utf-8&tab=good&cid=1"
                                                                                    locate="第1个#娱乐轮播图"
                                                                                    target="_blank"><img
                                                        class="slide_img"
                                                        src="http://tb1.bdstatic.com/tb/cms/liveshow/ent_slid5.png"/>
                                                    <div class="play_mask"><span class="play_btn"></span></div>
                                                </a></li>
                                            </ul>
                                            <ul class="game_nav j_game_nav">
                                                <li></li>
                                                <li></li>
                                                <li></li>
                                                <li></li>
                                                <li></li>
                                            </ul>
                                        </div>
                                        <ul class="tags_list">
                                            <li class="tag"><a
                                                    href="http://tieba.baidu.com/f?ie=utf-8&kw=t%E8%B1%86%E5%A8%B1%E4%B9%90%E5%9F%8E#app_forum_top"
                                                    locate="第1个#娱乐tag" title="食神争霸" target="_blank" class="tag_link">食神争霸</a>
                                            </li>
                                            <li class="tag"><a
                                                    href="http://tieba.baidu.com/f?ie=utf-8&kw=%E6%96%97%E5%9C%B0%E4%B8%BB#app_forum_top"
                                                    locate="第2个#娱乐tag" title="斗地主" target="_blank"
                                                    class="tag_link">斗地主</a></li>
                                            <li class="tag"><a
                                                    href="http://tieba.baidu.com/f?ie=utf-8&kw=%E5%BE%B7%E5%B7%9E%E6%89%91%E5%85%8B&fr=search"
                                                    locate="第3个#娱乐tag" title="德州扑克" target="_blank" class="tag_link">德州扑克</a>
                                            </li>
                                            <li class="tag"><a
                                                    href="http://wanba.baidu.com/login_game_by_post.xhtml?id=150&client=&inviteMsg=&serverId=S1&toolbarHide="
                                                    locate="第4个#娱乐tag" title="三国杀" target="_blank"
                                                    class="tag_link">三国杀</a></li>
                                            <li class="tag"><a
                                                    href="http://tieba.baidu.com/f?kw=%E8%B4%B4%E5%90%A7%E5%A4%BA%E5%AE%9D&ie=utf-8&tab=good&cid=1"
                                                    locate="第5个#娱乐tag" title="贴吧夺宝" target="_blank" class="tag_link">贴吧夺宝</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="platact_bigouter" id="plat_act_wrapper">
                                <div id="sp_plat_act_carousel" class="platact_outer tbui_slideshow_container">
                                    <ul class="tbui_slideshow_list">
                                        <li class="tbui_slideshow_slide platact_inner" style="display:block;"><a
                                                class="platact_imglink"
                                                href="http://tieba.baidu.com/p/4727021557?come_from=index"
                                                target="_blank"><img
                                                src="http://m.tiebaimg.com/timg?wapp&amp;imgtype=0&amp;quality=100&amp;size=b5000_5000&amp;cut_x=0&amp;cut_w=0&amp;cut_y=0&amp;cut_h=0&amp;sec=1369815402&amp;di=730956d8b09bd870370f00a65de39190&amp;wh_rate=null&amp;src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%253D580%2Fsign%3D1e7e1ca2992397ddd679980c6983b216%2Fcf1411dfa9ec8a13186172a5ff03918fa0ecc030.jpg"
                                                title="" alt=""></a>
                                            <div class="platact_desc"><h6 class="platact_desctitle"><a href="/f?kw=VR"
                                                                                                       target="_blank"
                                                                                                       class="platact_fname">VR吧</a><a
                                                    href="http://tieba.baidu.com/p/4727021557?come_from=index"
                                                    target="_blank" class="platact_blue">为中国奥运队加油，赢巴厘岛之旅</a><span
                                                    class="platact_type platact_type_1">抽奖</span></h6>
                                                <p class="platact_deacli">时间：2016-08-15 11:00~ 2016-08-19 19：00</p>
                                                <p class="platact_deacli">奖品：特等奖：巴厘岛4天3晚之旅
                                                    感动奖：ZMERONE全景相机</p><a
                                                        href="http://tieba.baidu.com/p/4727021557?come_from=index"
                                                        target="_blank" class="platact_lucky"></a></div>
                                        </li>
                                        <li class="tbui_slideshow_slide platact_inner" style="display:none;"><a
                                                class="platact_imglink"
                                                href="http://tieba.baidu.com/p/4719672632?come_from=index"
                                                target="_blank"><img
                                                src="http://m.tiebaimg.com/timg?wapp&amp;imgtype=0&amp;quality=100&amp;size=b5000_5000&amp;cut_x=0&amp;cut_w=0&amp;cut_y=0&amp;cut_h=0&amp;sec=1369815402&amp;di=cb9c261c30f5f5f30dbe19d9a96f6c5a&amp;wh_rate=null&amp;src=http%3A%2F%2Ftb1.bdstatic.com%2Ftb%2Fr%2Fimage%2F2016-08-11%2Fe85cb7de4693c26cbd0432c961a27483.jpg"
                                                title="" alt=""></a>
                                            <div class="platact_desc"><h6 class="platact_desctitle"><a
                                                    href="/f?kw=%CE%A2%D0%C7gaming" target="_blank"
                                                    class="platact_fname">微星gaming吧</a><a
                                                    href="http://tieba.baidu.com/p/4719672632?come_from=index"
                                                    target="_blank" class="platact_blue">微星陪你一起过七夕</a><span
                                                    class="platact_type platact_type_1">抽奖</span></h6>
                                                <p class="platact_deacli">时间：2016.8.09-2016.8.15</p>
                                                <p class="platact_deacli">奖品：电竞主板、电竞鼠标 、微星定制耳机、数据线</p><a
                                                        href="http://tieba.baidu.com/p/4719672632?come_from=index"
                                                        target="_blank" class="platact_lucky"></a></div>
                                        </li>
                                        <li class="tbui_slideshow_slide platact_inner" style="display:none;"><a
                                                class="platact_imglink"
                                                href="http://tieba.baidu.com/p/4720945982?come_from=index"
                                                target="_blank"><img
                                                src="http://m.tiebaimg.com/timg?wapp&amp;imgtype=0&amp;quality=100&amp;size=b5000_5000&amp;cut_x=0&amp;cut_w=0&amp;cut_y=0&amp;cut_h=0&amp;sec=1369815402&amp;di=82080acd68de281329506fd39e9e9be7&amp;wh_rate=null&amp;src=http%3A%2F%2Ftb1.bdstatic.com%2Ftb%2Fr%2Fimage%2F2016-08-11%2Fbdad8c4617015ebc4f2dac84ddddbe20.jpg"
                                                title="" alt=""></a>
                                            <div class="platact_desc"><h6 class="platact_desctitle"><a
                                                    href="/f?kw=%B3%C2%C9%FD%BA%C5" target="_blank"
                                                    class="platact_fname">陈升号吧</a><a
                                                    href="http://tieba.baidu.com/p/4720945982?come_from=index"
                                                    target="_blank"
                                                    class="platact_blue">【纳凉故事会】：泡壶普洱茶，奇趣故事盛宴等你来玩！</a><span
                                                    class="platact_type platact_type_1">抽奖</span></h6>
                                                <p class="platact_deacli">时间：2016年08月9日10点 ~ 08月18日22点</p>
                                                <p class="platact_deacli">奖品：1、霸王青饼1块+3种茶样各一包
                                                    2、3种茶样各一包
                                                    3、幸..</p><a
                                                        href="http://tieba.baidu.com/p/4720945982?come_from=index"
                                                        target="_blank" class="platact_lucky"></a></div>
                                        </li>
                                        <li class="tbui_slideshow_slide platact_inner" style="display:none;"><a
                                                class="platact_imglink"
                                                href="http://tieba.baidu.com/p/4714085217?come_from=index"
                                                target="_blank"><img
                                                src="http://m.tiebaimg.com/timg?wapp&amp;imgtype=0&amp;quality=100&amp;size=b5000_5000&amp;cut_x=0&amp;cut_w=0&amp;cut_y=0&amp;cut_h=0&amp;sec=1369815402&amp;di=55d83045e873546ddb93ded66ad4346b&amp;wh_rate=null&amp;src=http%3A%2F%2Ftb1.bdstatic.com%2Ftb%2Fr%2Fimage%2F2016-08-11%2F95e048d3ae6484763ec9da2cfd9a4d1a.jpg"
                                                title="" alt=""></a>
                                            <div class="platact_desc"><h6 class="platact_desctitle"><a
                                                    href="/f?kw=%B4%EF%B6%FB%D3%C5" target="_blank"
                                                    class="platact_fname">达尔优吧</a><a
                                                    href="http://tieba.baidu.com/p/4714085217?come_from=index"
                                                    target="_blank" class="platact_blue">七夕，牛郎织女相会达尔优</a><span
                                                    class="platact_type platact_type_1">抽奖</span></h6>
                                                <p class="platact_deacli">时间：8.8-8.12</p>
                                                <p class="platact_deacli">奖品：108件合金机械版4个、EM905鼠标10个、牧马人升级版10个</p><a
                                                        href="http://tieba.baidu.com/p/4714085217?come_from=index"
                                                        target="_blank" class="platact_lucky"></a></div>
                                        </li>
                                        <li class="tbui_slideshow_slide platact_inner" style="display:none;"><a
                                                class="platact_imglink"
                                                href="http://tieba.baidu.com/p/4712106189?come_from=index"
                                                target="_blank"><img
                                                src="http://m.tiebaimg.com/timg?wapp&amp;imgtype=0&amp;quality=100&amp;size=b5000_5000&amp;cut_x=0&amp;cut_w=0&amp;cut_y=0&amp;cut_h=0&amp;sec=1369815402&amp;di=80733bd7d6033718c7eeb2c7c59800c9&amp;wh_rate=null&amp;src=http%3A%2F%2Ftb1.bdstatic.com%2Ftb%2Fr%2Fimage%2F2016-08-10%2Fdfdfc9c219408d18982ede960190a62f.jpg"
                                                title="" alt=""></a>
                                            <div class="platact_desc"><h6 class="platact_desctitle"><a
                                                    href="/f?kw=%BA%A3%B6%FB%D6%C7%BB%DB%C9%FA%BB%EE" target="_blank"
                                                    class="platact_fname">海尔智慧生活吧</a><a
                                                    href="http://tieba.baidu.com/p/4712106189?come_from=index"
                                                    target="_blank" class="platact_blue">海尔携手国美，一场史无前“利”的邂逅</a><span
                                                    class="platact_type platact_type_1">抽奖</span></h6>
                                                <p class="platact_deacli">时间：2016年8月4日-8月15日</p>
                                                <p class="platact_deacli">奖品：一等奖 （1个）海尔电磁炉
                                                    二等奖 （2个）海尔健康秤
                                                    三..</p><a href="http://tieba.baidu.com/p/4712106189?come_from=index"
                                                              target="_blank" class="platact_lucky"></a></div>
                                        </li>
                                        <li class="tbui_slideshow_slide platact_inner" style="display:none;"><a
                                                class="platact_imglink"
                                                href="http://tieba.baidu.com/p/4720909651?come_from=index"
                                                target="_blank"><img
                                                src="http://m.tiebaimg.com/timg?wapp&amp;imgtype=0&amp;quality=100&amp;size=b5000_5000&amp;cut_x=0&amp;cut_w=0&amp;cut_y=0&amp;cut_h=0&amp;sec=1369815402&amp;di=8c3d8e4de18ee108543df18f0ec4da0f&amp;wh_rate=null&amp;src=http%3A%2F%2Ftb1.bdstatic.com%2Ftb%2Fr%2Fimage%2F2016-08-10%2Fb3e48e41ef9cc0bd4e9a593399c8b2a7.jpg"
                                                title="" alt=""></a>
                                            <div class="platact_desc"><h6 class="platact_desctitle"><a
                                                    href="/f?kw=%BF%E1%C5%C9" target="_blank"
                                                    class="platact_fname">酷派吧</a><a
                                                    href="http://tieba.baidu.com/p/4720909651?come_from=index"
                                                    target="_blank" class="platact_blue">李宇春与你相约cool1发布会</a><span
                                                    class="platact_type platact_type_1">抽奖</span></h6>
                                                <p class="platact_deacli">时间：8月9日-8月14日</p>
                                                <p class="platact_deacli">奖品：cool1新品手机、移动电源5000毫安、C51耳机，自拍杆</p><a
                                                        href="http://tieba.baidu.com/p/4720909651?come_from=index"
                                                        target="_blank" class="platact_lucky"></a></div>
                                        </li>
                                        <li class="tbui_slideshow_slide platact_inner" style="display:none;"><a
                                                class="platact_imglink"
                                                href="http://tieba.baidu.com/p/4713830080?come_from=index"
                                                target="_blank"><img
                                                src="http://m.tiebaimg.com/timg?wapp&amp;imgtype=0&amp;quality=100&amp;size=b5000_5000&amp;cut_x=0&amp;cut_w=0&amp;cut_y=0&amp;cut_h=0&amp;sec=1369815402&amp;di=17e8772514ab8c02483e8aa726bf8392&amp;wh_rate=null&amp;src=http%3A%2F%2Ftb1.bdstatic.com%2Ftb%2Fr%2Fimage%2F2016-08-10%2F6cf022a46b41e56086697177ad9486ab.jpg"
                                                title="" alt=""></a>
                                            <div class="platact_desc"><h6 class="platact_desctitle"><a
                                                    href="/f?kw=%B0%CB%CE%AC%D1%A7%D4%BA" target="_blank"
                                                    class="platact_fname">八维学院吧</a><a
                                                    href="http://tieba.baidu.com/p/4713830080?come_from=index"
                                                    target="_blank" class="platact_blue">里约奥运为中国队加油，八维送惊喜！</a><span
                                                    class="platact_type platact_type_1">抽奖</span></h6>
                                                <p class="platact_deacli">时间：2016.08.05-- 2016.08.25</p>
                                                <p class="platact_deacli">奖品：蓝牙耳机 1个；
                                                    餐具套餐1个；
                                                    U盘 3个；
                                                    百度小熊 15个..</p><a
                                                        href="http://tieba.baidu.com/p/4713830080?come_from=index"
                                                        target="_blank" class="platact_lucky"></a></div>
                                        </li>
                                        <li id="act_square_item" class="tbui_slideshow_slide platact_inner"
                                            style="display:none;"><a class="platact_imglink" href="/genesis/square"
                                                                     target="_blank"><img class="platact_square_holder"
                                                                                          src="http://tb2.bdstatic.com/tb/static-spage/img/act_square_holder_01c8b1b.jpg"></a>
                                            <div class="platact_desc platact_square_desc"><h6 class="platact_desctitle">
                                                <a href="/genesis/square" target="_blank"
                                                   class="platact_blue platact_square_link">更多活动尽在活动大厅</a></h6>
                                                <p class="platact_deacli">抽奖、晒图，各色活动应有尽有，等你来玩</p><a
                                                        href="/genesis/square" target="_blank"
                                                        class="platact_lucky platact_total"></a></div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="dr_progress_bar platact_naving"><a href="/genesis/square" target="_blank"
                                                                               class="platact_look_more">更多&gt;&gt;</a><span
                                        id="sp_plat_act_carousel_next" class="turn_next" style="float:right"></span>
                                    <ul class="page_turn" id="sp_plat_act_carousel_dot" style="float:right">
                                        <li class="turn_icon"></li>
                                        <li class="turn_icon"></li>
                                        <li class="turn_icon"></li>
                                        <li class="turn_icon"></li>
                                        <li class="turn_icon"></li>
                                        <li class="turn_icon"></li>
                                        <li class="turn_icon"></li>
                                        <li class="turn_icon"></li>
                                    </ul>
                                    <span id="sp_plat_act_carousel_prev" class="turn_pre" style="float:right"></span>
                                </div>
                            </div>
                            <div class="sub_nav_wrap clearfix" id="sub_nav_wrap" alog-alias="sub_nav_wrap"
                                 alog-group="sub_nav_wrap">
                                <ul class="sub_nav_list">
                                    <li style="margin-left:8px"><a href="#" tag_id="all" hot_index="0" id="j_remen_nav"
                                                                   class="nav_li nav_li_all cur">热门动态</a></li>
                                    <li class="nav_hover" style=""></li>
                                </ul>
                            </div>
                            <div id="like-tag-nav"><span></span><a href="#" class=""></a></div>
                            <div id="info-section"></div>
                            <ul class="new_list" id="new_list" alog-alias="feedlist0" alog-group="feedlist0">
                                <li class="clearfix j_feed_li " fid="139226" data-forum-id="139226"
                                    data-thread-id="4530988664">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper">
                                                <div class="tag tag-style1" tag_id="45" title="点击查看与高手相关贴子"><a href="#"
                                                                                                               class="tag-name"
                                                                                                               tag_id="45"
                                                                                                               tag-id="45">高手</a><a
                                                        href="#" class="triangle"></a></div>
                                                <a href="/f?kw=diy" target="_blank" class="n_name feed-item-link"
                                                   title="diy" data-id="139226" data-type="forum"
                                                   data-locate="0">diy吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4530988664" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【甜品】超简单的美食制作教程"
                                                                               data-id="4530988664" data-type="thread"
                                                                               data-locate="0">【甜品】超简单的美食制作教程</a><span
                                                    class="list-post-num"><em data-num="905">905</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">这里Labell，一个热爱美食的南方妹子</div>
                                        <ul class="n_img clearfix" fname_u="diy" tid="4530988664">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/9a12c8fcc3cec3fd9d0fd38dd188d43f87942710.jpg"
                                                     oriWidth="250" oriHeight="250" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C18%2C250%2C175%3Bwh%3D150%2C105%3B/sign=2a3aed6729dda3cc1fabe2603cd91530/9a12c8fcc3cec3fd9d0fd38dd188d43f87942710.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/f588d43f8794a4c2192996d309f41bd5ad6e393b.jpg"
                                                     oriWidth="1418" oriHeight="1343" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C99%2C1418%2C993%3Bwh%3D150%2C105%3B/sign=d4498e4862380cd7f251f8ad9c74810d/f588d43f8794a4c2192996d309f41bd5ad6e393b.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/19f33a87e950352a1f184df05443fbf2b3118bc9.jpg"
                                                     oriWidth="1600" oriHeight="1193" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C112%2C1600%2C1120%3Bwh%3D150%2C105%3B/sign=61ddf4c94b086e067ee7650b3f3857c5/19f33a87e950352a1f184df05443fbf2b3118bc9.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a href="/home/main?un=Zhqysy&fr=index" title="主题作者"
                                                                target="_blank" class="post_author">Zhqysy</a><span
                                                class="time">25分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="23953685" data-forum-id="23953685"
                                    data-thread-id="4727061536">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper"><a href="/f?kw=ala%D6%B1%B2%A5 "
                                                                             target="_blank"
                                                                             class="n_name feed-forum-link"
                                                                             title="ala直播" data-id="23953685"
                                                                             data-type="forum">ala直播吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4727061536" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="8.18贴吧直播周火热开启！"
                                                                               data-id="4727061536" data-type="thread"
                                                                               data-locate="1">8.18贴吧直播周火热开启！</a><span
                                                    class="list-post-num"><em data-num="317">317</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">8.18贴吧直播周，寻找新主播，等的就是你！ 贴吧直播APP——ALa寻找主播计划即将开启！ 直播1小时最高补</div>
                                        <ul class="n_img clearfix" fname_u="ala%D6%B1%B2%A5" tid="4727061536"></ul>
                                        <div class="n_reply"><a href="/home/main?un=%B4%F3%B7%C9%D1%E09&fr=index"
                                                                title="主题作者" target="_blank"
                                                                class="post_author">大飞燕9</a><span
                                                class="time">3分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="957111" data-forum-id="957111"
                                    data-thread-id="4616119183">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper"><a href="/f?kw=%D6%D0%C3%C8 " target="_blank"
                                                                             class="n_name feed-forum-link" title="中萌"
                                                                             data-id="957111" data-type="forum">中萌吧</a>
                                            </div>
                                            <div class="thread-name-wraper"><a href="/p/4616119183" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【动漫】制服+鲜花的诱惑，来自世界各地的邀请函！"
                                                                               data-id="4616119183" data-type="thread"
                                                                               data-locate="2">【动漫】制服+鲜花的诱惑，来自世界各地的邀请函！</a><span
                                                    class="list-post-num"><em data-num="794">794</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">尊贵的小姐啊，你会接受哪位绅士的邀请呢 撒，今天是男士们的专场。 哀和志保的礼服镇楼~</div>
                                        <ul class="n_img clearfix" fname_u="%D6%D0%C3%C8" tid="4616119183">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/1a01213fb80e7bec48570fc3272eb9389b506b06.jpg"
                                                     oriWidth="1159" oriHeight="1728" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C81%2C1159%2C811%3Bwh%3D150%2C105%3B/sign=25a28a09b851f819e56a590ae78466d5/1a01213fb80e7bec48570fc3272eb9389b506b06.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/9a12c8fcc3cec3fd9472ab57de88d43f87942747.jpg"
                                                     oriWidth="1159" oriHeight="1728" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C81%2C1159%2C811%3Bwh%3D150%2C105%3B/sign=5cea3a2953b5c9ea76bc59a3e8099a38/9a12c8fcc3cec3fd9472ab57de88d43f87942747.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/2df41bd5ad6eddc422b6bbd931dbb6fd526633ba.jpg"
                                                     oriWidth="800" oriHeight="1146" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C56%2C800%2C560%3Bwh%3D150%2C105%3B/sign=e83c75d0dd62853586af8861addf5af3/2df41bd5ad6eddc422b6bbd931dbb6fd526633ba.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a
                                                href="/home/main?un=%BB%A8%BF%AA%D2%C1%C8%CB%D3%EF&fr=index"
                                                title="主题作者" target="_blank" class="post_author">花开伊人语</a><span
                                                class="time">10分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="1344804" data-forum-id="1344804"
                                    data-thread-id="4618745491">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper"><a href="/f?kw=%CC%D8%B1%F0%C6%AA "
                                                                             target="_blank"
                                                                             class="n_name feed-forum-link" title="特别篇"
                                                                             data-id="1344804"
                                                                             data-type="forum">特别篇吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4618745491" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【图文】一个小人物的故事" data-id="4618745491"
                                                                               data-type="thread" data-locate="3">【图文】一个小人物的故事</a><span
                                                    class="list-post-num"><em data-num="175">175</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">初来乍到贵吧，想发一个自己正在写的故事。 这个故事我先在口袋吧互动社区发的，最近想更多人看到，</div>
                                        <ul class="n_img clearfix" fname_u="%CC%D8%B1%F0%C6%AA" tid="4618745491">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/901c8701a18b87d6f2c5883b0f0828381f30fd0b.jpg"
                                                     oriWidth="900" oriHeight="720" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C63%2C900%2C630%3Bwh%3D150%2C105%3B/sign=4a87eec8d900baa1ae631dfb7a209524/901c8701a18b87d6f2c5883b0f0828381f30fd0b.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/4359252dd42a283426bd142f53b5c9ea15cebffe.jpg"
                                                     oriWidth="160" oriHeight="144" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C11%2C160%2C112%3Bwh%3D150%2C105%3B/sign=59ddecf9a364034f1b82984692f35500/4359252dd42a283426bd142f53b5c9ea15cebffe.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/2fd7912397dda14486054e96bab7d0a20cf48681.jpg"
                                                     oriWidth="160" oriHeight="144" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C11%2C160%2C112%3Bwh%3D150%2C105%3B/sign=d328910c3e7adab4299f4103b6e49f2d/2fd7912397dda14486054e96bab7d0a20cf48681.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a
                                                href="/home/main?un=%CD%C3%D6%BD%BA%DC%C5%A3%E5%F8&fr=index"
                                                title="主题作者" target="_blank" class="post_author">兔纸很牛屮</a><span
                                                class="time">41分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="30" data-forum-id="30" data-thread-id="4615947324">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper"><a href="/f?kw=%C0%FA%CA%B7 " target="_blank"
                                                                             class="n_name feed-forum-link" title="历史"
                                                                             data-id="30" data-type="forum">历史吧</a>
                                            </div>
                                            <div class="thread-name-wraper"><a href="/p/4615947324" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【配音】只闻其声，不见其人——盘点我国著名配音演员"
                                                                               data-id="4615947324" data-type="thread"
                                                                               data-locate="4">【配音】只闻其声，不见其人——盘点我国著名配音演员</a><span
                                                    class="list-post-num"><em data-num="301">301</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">邱岳峰 原籍福建福州，生于黑龙江呼伦贝尔。早年就读于福建高级工业职业学校，北京外国语专科学校。1</div>
                                        <ul class="n_img clearfix" fname_u="%C0%FA%CA%B7" tid="4615947324">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/bd510fb30f2442a7738adc87d943ad4bd113020f.jpg"
                                                     oriWidth="250" oriHeight="314" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C18%2C250%2C175%3Bwh%3D150%2C105%3B/sign=1e3698469ceef01f595b4285ddceb514/bd510fb30f2442a7738adc87d943ad4bd113020f.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/29d162d9f2d3572cf9febcfe8213632762d0c3f0.jpg"
                                                     oriWidth="250" oriHeight="314" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C18%2C250%2C175%3Bwh%3D150%2C105%3B/sign=4ce3680cda1b0ef478a7c21ee0f47deb/29d162d9f2d3572cf9febcfe8213632762d0c3f0.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/41d9f2d3572c11df40cd9f016b2762d0f703c2f0.jpg"
                                                     oriWidth="250" oriHeight="314" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C18%2C250%2C175%3Bwh%3D150%2C105%3B/sign=943fc70906f41bd5ce1cb2b46ceaadfa/41d9f2d3572c11df40cd9f016b2762d0f703c2f0.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a
                                                href="/home/main?un=%CB%C0%C1%E9%B7%A8%CA%A6%CB%B9%B4%F3%C1%D6&fr=index"
                                                title="主题作者" target="_blank" class="post_author">死灵法师斯大林</a><span
                                                class="time">20分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="607272" data-forum-id="607272"
                                    data-thread-id="4592061752">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper">
                                                <div class="tag tag-style0" tag_id="435" title="点击查看与情欲相关贴子"><a href="#"
                                                                                                                class="tag-name"
                                                                                                                tag_id="435"
                                                                                                                tag-id="435">情欲</a><a
                                                        href="#" class="triangle"></a></div>
                                                <a href="/f?kw=%BA%F3%B9%AC%B6%AF%C2%FE" target="_blank"
                                                   class="n_name feed-item-link" title="后宫动漫" data-id="607272"
                                                   data-type="forum" data-locate="5">后宫动漫吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4592061752" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【盘点】日漫各个发系妹子之银发"
                                                                               data-id="4592061752" data-type="thread"
                                                                               data-locate="5">【盘点】日漫各个发系妹子之银发</a><span
                                                    class="list-post-num"><em data-num="624">624</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">1.先给自己挖个大坑,盘点一下各个发色有名的日漫妹子,今天是银发妹子,总共盘点35名，其余有空在填坑 2.</div>
                                        <ul class="n_img clearfix" fname_u="%BA%F3%B9%AC%B6%AF%C2%FE"
                                            tid="4592061752"></ul>
                                        <div class="n_reply"><a
                                                href="/home/main?un=%C4%FE%D4%B8%BB%F6%B9%FA%D1%EA%C3%F1&fr=index"
                                                title="主题作者" target="_blank" class="post_author">宁愿祸国殃民</a><span
                                                class="time">20分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="1560023" data-forum-id="1560023"
                                    data-thread-id="4634239643">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper">
                                                <div class="tag tag-style2" tag_id="416" title="点击查看与娱乐圈相关贴子"><a
                                                        href="#" class="tag-name" tag_id="416" tag-id="416">娱乐圈</a><a
                                                        href="#" class="triangle"></a></div>
                                                <a href="/f?kw=%BA%EC%B6%B9%B0%AE%B0%A2%CE%CC" target="_blank"
                                                   class="n_name feed-item-link" title="红豆爱阿翁" data-id="1560023"
                                                   data-type="forum" data-locate="6">红豆爱阿翁吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4634239643" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【动漫】2016年最受欢迎的国外二次元男神排行"
                                                                               data-id="4634239643" data-type="thread"
                                                                               data-locate="6">【动漫】2016年最受欢迎的国外二次元男神排行</a><span
                                                    class="list-post-num"><em data-num="1876">1876</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">此榜单投票信息来自网络。 此榜单只代表2016年上半年的投票情况，不满意现状的的小伙伴们还有半年时间</div>
                                        <ul class="n_img clearfix" fname_u="%BA%EC%B6%B9%B0%AE%B0%A2%CE%CC"
                                            tid="4634239643">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/32dfa9ec8a13632767270b1c998fa0ec09fac7d3.jpg"
                                                     oriWidth="500" oriHeight="650" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C35%2C500%2C350%3Bwh%3D150%2C105%3B/sign=78e92e0406f41bd5ce1cb2b46ceaadf8/32dfa9ec8a13632767270b1c998fa0ec09fac7d3.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/d1d3572c11dfa9ec89e49f386ad0f703908fc1d3.jpg"
                                                     oriWidth="500" oriHeight="444" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C35%2C500%2C350%3Bwh%3D150%2C105%3B/sign=846358dd751ed21b6d8674a5905ef1f7/d1d3572c11dfa9ec89e49f386ad0f703908fc1d3.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/b22397dda144ad341fcb4fa8d8a20cf431ad85ad.jpg"
                                                     oriWidth="500" oriHeight="602" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C35%2C500%2C350%3Bwh%3D150%2C105%3B/sign=e7c27ac92f7f9e2f647a47482200c517/b22397dda144ad341fcb4fa8d8a20cf431ad85ad.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a
                                                href="/home/main?un=%A1%EF%A1%FAANGEL%A1%FB%A1%EF&fr=index" title="主题作者"
                                                target="_blank" class="post_author">★→ANGEL←★</a><span class="time">1分钟之前</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="4509907" data-forum-id="4509907"
                                    data-thread-id="4714260759">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper"><a href="/f?kw=%CC%F9%B0%C9%BB%E1%D4%B1 "
                                                                             target="_blank"
                                                                             class="n_name feed-forum-link" title="贴吧会员"
                                                                             data-id="4509907"
                                                                             data-type="forum">贴吧会员吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4714260759" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="电影票0元开抢" data-id="4714260759"
                                                                               data-type="thread" data-locate="7">电影票0元开抢</a><span
                                                    class="list-post-num"><em data-num="1306">1306</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">七夕快到，说多无谓，直接用福利砸，站好，憋说话~ 【演出信息】 名称：精灵王座 时间：8月13日 15:30 地
                                        </div>
                                        <ul class="n_img clearfix" fname_u="%CC%F9%B0%C9%BB%E1%D4%B1"
                                            tid="4714260759"></ul>
                                        <div class="n_reply"><a href="/home/main?un=%CC%F9%B0%C9%BB%E1%D4%B1&fr=index"
                                                                title="主题作者" target="_blank"
                                                                class="post_author">贴吧会员</a><span
                                                class="time">33分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="13857776" data-forum-id="13857776"
                                    data-thread-id="4720886609">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper"><a
                                                    href="/f?kw=%C9%EE%DB%DA%CE%C0%CA%D3%BC%AB%CB%D9%C7%B0%BD%F8 "
                                                    target="_blank" class="n_name feed-forum-link" title="深圳卫视极速前进"
                                                    data-id="13857776" data-type="forum">深圳卫视极速前进吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4720886609" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【极速前进】极速竞猜——在巴塞罗那被回转的队伍是？"
                                                                               data-id="4720886609" data-type="thread"
                                                                               data-locate="8">【极速前进】极速竞猜——在巴塞罗那被回转的队伍是？</a><span
                                                    class="list-post-num"><em data-num="104">104</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt"></div>
                                        <div class="n_reply"><a href="/home/main?un=%D0%A1%D1%EE%C3%B7999&fr=index"
                                                                title="主题作者" target="_blank"
                                                                class="post_author">小杨梅999</a><span
                                                class="time">44分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="534402" data-forum-id="534402"
                                    data-thread-id="4680420488">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper">
                                                <div class="tag tag-style3" tag_id="118" title="点击查看与传统文化相关贴子"><a
                                                        href="#" class="tag-name" tag_id="118" tag-id="118">传统文化</a><a
                                                        href="#" class="triangle"></a></div>
                                                <a href="/f?kw=%B9%C5%B7%E7" target="_blank"
                                                   class="n_name feed-item-link" title="古风" data-id="534402"
                                                   data-type="forum" data-locate="9">古风吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4680420488" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【科普】古代生活基本知识---唐朝"
                                                                               data-id="4680420488" data-type="thread"
                                                                               data-locate="9">【科普】古代生活基本知识---唐朝</a><span
                                                    class="list-post-num"><em data-num="873">873</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">想要出关于古代知识的科普贴，但无奈知识有限，工程浩大，于是从唐朝开始，系统的，专一的科普下。</div>
                                        <ul class="n_img clearfix" fname_u="%B9%C5%B7%E7" tid="4680420488">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/f3160924ab18972bd1e584bdeecd7b899f510aed.jpg"
                                                     oriWidth="166" oriHeight="265" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C12%2C166%2C116%3Bwh%3D150%2C105%3B/sign=950dc781afefce1bfe64928a9261dfef/f3160924ab18972bd1e584bdeecd7b899f510aed.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/a494a4c27d1ed21bf615aa92a56eddc450da3fed.jpg"
                                                     oriWidth="440" oriHeight="300" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D5%2C0%2C429%2C300%3Bwh%3D150%2C105%3B/sign=e574bb3c0a087bf469a30da9cfe67b1c/a494a4c27d1ed21bf615aa92a56eddc450da3fed.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/7043fbf2b2119313386a79c76d380cd791238d98.jpg"
                                                     oriWidth="600" oriHeight="400" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D14%2C0%2C571%2C400%3Bwh%3D150%2C105%3B/sign=03c0005b8f01a18be4a4480fa31e3324/7043fbf2b2119313386a79c76d380cd791238d98.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a href="/home/main?un=%B3%F5%D0%C3%E5%FB&fr=index"
                                                                title="主题作者" target="_blank" class="post_author">初忻妍</a><span
                                                class="time">21分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="416282" data-forum-id="416282"
                                    data-thread-id="4673529418">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper"><a href="/f?kw=%C6%EF%D0%D0 " target="_blank"
                                                                             class="n_name feed-forum-link" title="骑行"
                                                                             data-id="416282" data-type="forum">骑行吧</a>
                                            </div>
                                            <div class="thread-name-wraper"><a href="/p/4673529418" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【游记】用车轮丈量广州-云南的距离"
                                                                               data-id="4673529418" data-type="thread"
                                                                               data-locate="10">【游记】用车轮丈量广州-云南的距离</a><span
                                                    class="list-post-num"><em data-num="1354">1354</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">看过很多帖子，很多都是为梦想出发。 我不是，我想平静的工作、平静生活，可能是这几年折腾得太久了</div>
                                        <ul class="n_img clearfix" fname_u="%C6%EF%D0%D0" tid="4673529418">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/eaea15ce36d3d539fa4ddeb23287e950352ab04b.jpg"
                                                     oriWidth="450" oriHeight="600" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C32%2C450%2C315%3Bwh%3D150%2C105%3B/sign=c6cf5d404290f60310ffc60704229f28/eaea15ce36d3d539fa4ddeb23287e950352ab04b.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/518b4710b912c8fc791126bcf4039245d78821e5.jpg"
                                                     oriWidth="450" oriHeight="600" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C32%2C450%2C315%3Bwh%3D150%2C105%3B/sign=b62bd4ecc3ef76092844c3df13ed8fff/518b4710b912c8fc791126bcf4039245d78821e5.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/828b87d6277f9e2f8fbe4d7a1730e924b899f33d.jpg"
                                                     oriWidth="600" oriHeight="450" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C42%2C600%2C420%3Bwh%3D150%2C105%3B/sign=efbfac7f78cf3bc7fc4f97acec309695/828b87d6277f9e2f8fbe4d7a1730e924b899f33d.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a
                                                href="/home/main?un=%D0%C7%C6%DA%C8%FD%C7%E5%B3%BF&fr=index"
                                                title="主题作者" target="_blank" class="post_author">星期三清晨</a><span
                                                class="time">5分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="460529" data-forum-id="460529"
                                    data-thread-id="4696702652">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper">
                                                <div class="tag tag-style3" tag_id="91" title="点击查看与画画相关贴子"><a href="#"
                                                                                                               class="tag-name"
                                                                                                               tag_id="91"
                                                                                                               tag-id="91">画画</a><a
                                                        href="#" class="triangle"></a></div>
                                                <a href="/f?kw=%CB%AE%B2%CA" target="_blank"
                                                   class="n_name feed-item-link" title="水彩" data-id="460529"
                                                   data-type="forum" data-locate="11">水彩吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4696702652" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【手绘】发一些搜集来的素材"
                                                                               data-id="4696702652" data-type="thread"
                                                                               data-locate="11">【手绘】发一些搜集来的素材</a><span
                                                    class="list-post-num"><em data-num="1007">1007</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">这里北枳，准初三。入坑一周了，发一些搜集来的素材。</div>
                                        <ul class="n_img clearfix" fname_u="%CB%AE%B2%CA" tid="4696702652">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/90de9c82d158ccbf905a035d11d8bc3eb03541f7.jpg"
                                                     oriWidth="580" oriHeight="865" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C41%2C580%2C406%3Bwh%3D150%2C105%3B/sign=d4efb7cc0b3b5bb5aa987abe0be3f90d/90de9c82d158ccbf905a035d11d8bc3eb03541f7.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/061f95cad1c8a786c7f9fd696f09c93d71cf5081.jpg"
                                                     oriWidth="700" oriHeight="549" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C49%2C700%2C490%3Bwh%3D150%2C105%3B/sign=6bd68e80992397ddc236c24464b29e83/061f95cad1c8a786c7f9fd696f09c93d71cf5081.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/3c30e924b899a9013df9ec5115950a7b0308f58d.jpg"
                                                     oriWidth="500" oriHeight="548" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C35%2C500%2C350%3Bwh%3D150%2C105%3B/sign=cb504f467a8b4710da60a78cfefeefce/3c30e924b899a9013df9ec5115950a7b0308f58d.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a href="/home/main?un=%BD%FC%B1%F0%C0%EB&fr=index"
                                                                title="主题作者" target="_blank" class="post_author">近别离</a><span
                                                class="time">29分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="217247" data-forum-id="217247"
                                    data-thread-id="4691663466">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper">
                                                <div class="tag tag-style4" tag_id="66" title="点击查看与复古相关贴子"><a href="#"
                                                                                                               class="tag-name"
                                                                                                               tag_id="66"
                                                                                                               tag-id="66">复古</a><a
                                                        href="#" class="triangle"></a></div>
                                                <a href="/f?kw=%BA%BA%B7%FE" target="_blank"
                                                   class="n_name feed-item-link" title="汉服" data-id="217247"
                                                   data-type="forum" data-locate="12">汉服吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4691663466" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【裁剪制作】探索汉服的制作过程。"
                                                                               data-id="4691663466" data-type="thread"
                                                                               data-locate="12">【裁剪制作】探索汉服的制作过程。</a><span
                                                    class="list-post-num"><em data-num="1386">1386</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">宝宝酷爱汉服。于是决心自己制作。 六年级会的缝纫机，初中会的电熨斗....... 汉文化博大精深。一直都</div>
                                        <ul class="n_img clearfix" fname_u="%BA%BA%B7%FE" tid="4691663466">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/f70735fae6cd7b899a71b9e2072442a7d9330eb5.jpg"
                                                     oriWidth="3264" oriHeight="2448" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C229%2C3264%2C2285%3Bwh%3D150%2C105%3B/sign=c89fdad0880a19d8df4cde450ecaaeb9/f70735fae6cd7b899a71b9e2072442a7d9330eb5.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/16fae6cd7b899e510a93b9754aa7d933c8950db5.jpg"
                                                     oriWidth="2448" oriHeight="3264" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C171%2C2448%2C1714%3Bwh%3D150%2C105%3B/sign=b91e07643bfa828bc56cc7a3c02f6d05/16fae6cd7b899e510a93b9754aa7d933c8950db5.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/c5cd7b899e510fb30904f4f6d133c895d1430cb5.jpg"
                                                     oriWidth="3264" oriHeight="2448" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C229%2C3264%2C2285%3Bwh%3D150%2C105%3B/sign=862aaf89b43eb1355088edfb9b2e84e1/c5cd7b899e510fb30904f4f6d133c895d1430cb5.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a
                                                href="/home/main?un=%C9%F2%D7%ED%D4%DA%C3%CElove&fr=index" title="主题作者"
                                                target="_blank" class="post_author">沈醉在梦love</a><span class="time">53分钟之前</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="631152" data-forum-id="631152"
                                    data-thread-id="4719499530">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper"><a href="/f?kw=li%B8%E7 " target="_blank"
                                                                             class="n_name feed-forum-link" title="li哥"
                                                                             data-id="631152" data-type="forum">li哥吧</a>
                                            </div>
                                            <div class="thread-name-wraper"><a href="/p/4719499530" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【竞猜】Li哥说奥运，精彩猜不完~"
                                                                               data-id="4719499530" data-type="thread"
                                                                               data-locate="13">【竞猜】Li哥说奥运，精彩猜不完~</a><span
                                                    class="list-post-num"><em data-num="192">192</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt"></div>
                                        <div class="n_media" fname_u="li%B8%E7" tid="4719499530"><img
                                                class="m_flash_pic"
                                                src="http://imgsrc.baidu.com/forum/pic/item/9245d688d43f8794ae9ec273da1b0ef41bd53a0d.jpg"
                                                width="100" height="75"><a href="#"
                                                                           data-video="http://tb1.bdstatic.com/tb/zt/movideo/video.swf?thumbnail=9245d688d43f8794ae9ec273da1b0ef41bd53a0d&amp;video=631152_77505186f77a9c02f35180763adac029"
                                                                           video-source="http://tieba.baidu.com/mo/q/movideo/page?thumbnail=9245d688d43f8794ae9ec273da1b0ef41bd53a0d&amp;video=631152_77505186f77a9c02f35180763adac029"
                                                                           html5-source="http://tb-video.bdstatic.com/tieba-smallvideo/631152_77505186f77a9c02f35180763adac029.mp4"
                                                                           class="feedlist_flash_play"></a></div>
                                        <div class="n_reply"><a href="/home/main?un=li970527&fr=index" title="主题作者"
                                                                target="_blank" class="post_author">li970527</a><span
                                                class="time">8月 14日 20:39</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="20919382" data-forum-id="20919382"
                                    data-thread-id="4719027694">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper"><a
                                                    href="/f?kw=%CC%F9%B0%C9%D1%DD%B2%A5%CA%D2 " target="_blank"
                                                    class="n_name feed-forum-link" title="贴吧演播室" data-id="20919382"
                                                    data-type="forum">贴吧演播室吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4719027694" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="陆川今日做客贴吧访谈" data-id="4719027694"
                                                                               data-type="thread" data-locate="14">陆川今日做客贴吧访谈</a><span
                                                    class="list-post-num"><em data-num="680">680</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">当当当当~！10日14:30导演陆川携新片《我们诞生在中国》做客贴吧演播室！ 《我们诞生在中国》是有陆川</div>
                                        <ul class="n_img clearfix" fname_u="%CC%F9%B0%C9%D1%DD%B2%A5%CA%D2"
                                            tid="4719027694">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/38d5ad6eddc451dadb5b6db6befd5266d0163239.jpg"
                                                     oriWidth="720" oriHeight="240" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D188%2C0%2C343%2C240%3Bwh%3D150%2C105%3B/sign=c983e413c28065386fa5fe53aaec997c/38d5ad6eddc451dadb5b6db6befd5266d0163239.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/047f9e2f070828388b40b249b099a9014c08f11a.jpg"
                                                     oriWidth="1000" oriHeight="705" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C70%2C1000%2C700%3Bwh%3D150%2C105%3B/sign=c8106fc556df8db1a86126243413f163/047f9e2f070828388b40b249b099a9014c08f11a.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a href="/home/main?un=Sixch6&fr=index" title="主题作者"
                                                                target="_blank" class="post_author">Sixch6</a><span
                                                class="time">8月 14日 22:17</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="5136001" data-forum-id="5136001"
                                    data-thread-id="4721287754">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper"><a href="/f?kw=%D4%C4%BE%AD " target="_blank"
                                                                             class="n_name feed-forum-link" title="阅经"
                                                                             data-id="5136001" data-type="forum">阅经吧</a>
                                            </div>
                                            <div class="thread-name-wraper"><a href="/p/4721287754" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【活动】2016年度，十大“奇吧”评选！"
                                                                               data-id="4721287754" data-type="thread"
                                                                               data-locate="15">【活动】2016年度，十大“奇吧”评选！</a><span
                                                    class="list-post-num"><em data-num="1050">1050</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">你有没有这样的时候，不小心误入了某个贴吧，却突然像是打开了新世界的大门！ 又或者进入了某个吧友</div>
                                        <ul class="n_img clearfix" fname_u="%D4%C4%BE%AD" tid="4721287754">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/a982b9014a90f603ff7ae6183112b31bb151eda3.jpg"
                                                     oriWidth="253" oriHeight="242" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C18%2C253%2C177%3Bwh%3D150%2C105%3B/sign=cdc3d865384e251ff6b8beb89ab6e526/a982b9014a90f603ff7ae6183112b31bb151eda3.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/ae1001e93901213fba1d2a835ce736d12f2e9546.jpg"
                                                     oriWidth="300" oriHeight="300" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C21%2C300%2C210%3Bwh%3D150%2C105%3B/sign=ab121d6766061d9569096d7846c426e3/ae1001e93901213fba1d2a835ce736d12f2e9546.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/efbf6c81800a19d89172e45a3bfa828ba61e467f.jpg"
                                                     oriWidth="200" oriHeight="200" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C14%2C200%2C140%3Bwh%3D150%2C105%3B/sign=7c438c96df2a6059465fbb5a150418aa/efbf6c81800a19d89172e45a3bfa828ba61e467f.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a href="/home/main?un=%D0%A1%C3%D8%C3%D8prince&fr=index"
                                                                title="主题作者" target="_blank" class="post_author">小秘秘prince</a><span
                                                class="time">58分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="90367" data-forum-id="90367"
                                    data-thread-id="4641375708">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper">
                                                <div class="tag tag-style3" tag_id="92" title="点击查看与旅行相关贴子"><a href="#"
                                                                                                               class="tag-name"
                                                                                                               tag_id="92"
                                                                                                               tag-id="92">旅行</a><a
                                                        href="#" class="triangle"></a></div>
                                                <a href="/f?kw=%B1%B3%B0%FC%BF%CD" target="_blank"
                                                   class="n_name feed-item-link" title="背包客" data-id="90367"
                                                   data-type="forum" data-locate="16">背包客吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4641375708" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【游记】欠自己五年的旅行 今天终于还给自己"
                                                                               data-id="4641375708" data-type="thread"
                                                                               data-locate="16">【游记】欠自己五年的旅行
                                                今天终于还给自己</a><span class="list-post-num"><em
                                                    data-num="1801">1801</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">我是小茗。五年前，刚进入中专。 已经忘了那时是什么情况下无意得知有乌镇这个地方，然后就萌生出想</div>
                                        <ul class="n_img clearfix" fname_u="%B1%B3%B0%FC%BF%CD" tid="4641375708">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/78b5c9ea15ce36d36d34c12532f33a87e950b1f7.jpg"
                                                     oriWidth="420" oriHeight="559" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C29%2C420%2C294%3Bwh%3D150%2C105%3B/sign=cb80de523112b31bd3239769bb281a48/78b5c9ea15ce36d36d34c12532f33a87e950b1f7.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/5fd98d1001e93901faadcf2b73ec54e736d1967c.jpg"
                                                     oriWidth="420" oriHeight="559" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C29%2C420%2C294%3Bwh%3D150%2C105%3B/sign=727efd366b2762d09471feff9ddc24c8/5fd98d1001e93901faadcf2b73ec54e736d1967c.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/19292df5e0fe9925499d26453ca85edf8db17116.jpg"
                                                     oriWidth="420" oriHeight="559" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C29%2C420%2C294%3Bwh%3D150%2C105%3B/sign=9ecf8c0163600c33e4368488277c7d3d/19292df5e0fe9925499d26453ca85edf8db17116.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a
                                                href="/home/main?un=%C4%EA%C7%E1%C8%A5%C2%C3%D0%D0_&fr=index"
                                                title="主题作者" target="_blank" class="post_author">年轻去旅行_</a><span
                                                class="time">8月 14日 19:49</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="1560023" data-forum-id="1560023"
                                    data-thread-id="4632421277">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper">
                                                <div class="tag tag-style2" tag_id="416" title="点击查看与娱乐圈相关贴子"><a
                                                        href="#" class="tag-name" tag_id="416" tag-id="416">娱乐圈</a><a
                                                        href="#" class="triangle"></a></div>
                                                <a href="/f?kw=%BA%EC%B6%B9%B0%AE%B0%A2%CE%CC" target="_blank"
                                                   class="n_name feed-item-link" title="红豆爱阿翁" data-id="1560023"
                                                   data-type="forum" data-locate="17">红豆爱阿翁吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4632421277" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【盘点】影视剧的亮点人物，哪个更让你难以忘怀？"
                                                                               data-id="4632421277" data-type="thread"
                                                                               data-locate="17">【盘点】影视剧的亮点人物，哪个更让你难以忘怀？</a><span
                                                    class="list-post-num"><em data-num="2549">2549</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">欢迎提名，拒绝转载，更新不艾特人 影视剧中往往会有让人让人眼前一亮的角色 有的是全剧唯一的亮点，</div>
                                        <ul class="n_img clearfix" fname_u="%BA%EC%B6%B9%B0%AE%B0%A2%CE%CC"
                                            tid="4632421277">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/6cc2d5628535e5dd16fbfdf17ec6a7efcf1b62cd.jpg"
                                                     oriWidth="580" oriHeight="532" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C41%2C580%2C406%3Bwh%3D150%2C105%3B/sign=d77d34f0356d55fbd1892c665012637e/6cc2d5628535e5dd16fbfdf17ec6a7efcf1b62cd.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/937eca8065380cd74022f9c3a944ad34598281e4.jpg"
                                                     oriWidth="580" oriHeight="482" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C41%2C580%2C406%3Bwh%3D150%2C105%3B/sign=5600cf958fd6277ffd5d687815083304/937eca8065380cd74022f9c3a944ad34598281e4.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/53cf3bc79f3df8dcfad9d7bfc511728b47102833.jpg"
                                                     oriWidth="580" oriHeight="499" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C41%2C580%2C406%3Bwh%3D150%2C105%3B/sign=8a9dc02a5182b2b7b3d063840c9de7db/53cf3bc79f3df8dcfad9d7bfc511728b47102833.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a
                                                href="/home/main?un=%CE%D2%BC%D2%B5%C4%D0%A1%D3%A8&fr=index"
                                                title="主题作者" target="_blank" class="post_author">我家的小莹</a><span
                                                class="time">今天 03:42</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="40" data-forum-id="40" data-thread-id="4554673863">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper">
                                                <div class="tag tag-style2" tag_id="112" title="点击查看与料理相关贴子"><a href="#"
                                                                                                                class="tag-name"
                                                                                                                tag_id="112"
                                                                                                                tag-id="112">料理</a><a
                                                        href="#" class="triangle"></a></div>
                                                <a href="/f?kw=%C3%C0%CA%B3" target="_blank"
                                                   class="n_name feed-item-link" title="美食" data-id="40"
                                                   data-type="forum" data-locate="18">美食吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4554673863" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【日常】河北妹纸的小小记录，最爱饼干零食"
                                                                               data-id="4554673863" data-type="thread"
                                                                               data-locate="18">【日常】河北妹纸的小小记录，最爱饼干零食</a><span
                                                    class="list-post-num"><em data-num="5890">5890</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">镇图，我霸州素冒汤！！！</div>
                                        <ul class="n_img clearfix" fname_u="%C3%C0%CA%B3" tid="4554673863">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/2c2442a7d933c8951ae25b97d61373f0830200ba.jpg"
                                                     oriWidth="720" oriHeight="540" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C50%2C720%2C504%3Bwh%3D150%2C105%3B/sign=5f4f06c33d292df5838cf65581017055/2c2442a7d933c8951ae25b97d61373f0830200ba.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/fa33c895d143ad4b1cb2852c85025aafa50f06ba.jpg"
                                                     oriWidth="480" oriHeight="640" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C34%2C480%2C336%3Bwh%3D150%2C105%3B/sign=e05416229e25bc313f125bd863efa182/fa33c895d143ad4b1cb2852c85025aafa50f06ba.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/518b4710b912c8fc6ad13421fb039245d6882138.jpg"
                                                     oriWidth="560" oriHeight="750" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C39%2C560%2C392%3Bwh%3D150%2C105%3B/sign=05b0d901a4cc7cd9ee626e9904310d0c/518b4710b912c8fc6ad13421fb039245d6882138.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a href="/home/main?un=%C7%A3%B9%D2925&fr=index"
                                                                title="主题作者" target="_blank"
                                                                class="post_author">牵挂925</a><span
                                                class="time">30分钟之前</span></div>
                                    </div>
                                </li>
                                <li class="clearfix j_feed_li " fid="217247" data-forum-id="217247"
                                    data-thread-id="4621348301">
                                    <div class="n_right">
                                        <div>
                                            <div class="title-tag-wraper">
                                                <div class="tag tag-style4" tag_id="66" title="点击查看与复古相关贴子"><a href="#"
                                                                                                               class="tag-name"
                                                                                                               tag_id="66"
                                                                                                               tag-id="66">复古</a><a
                                                        href="#" class="triangle"></a></div>
                                                <a href="/f?kw=%BA%BA%B7%FE" target="_blank"
                                                   class="n_name feed-item-link" title="汉服" data-id="217247"
                                                   data-type="forum" data-locate="19">汉服吧</a></div>
                                            <div class="thread-name-wraper"><a href="/p/4621348301" target="_blank"
                                                                               class="title feed-item-link"
                                                                               title="【萌图】818自己汉服的日常"
                                                                               data-id="4621348301" data-type="thread"
                                                                               data-locate="19">【萌图】818自己汉服的日常</a><span
                                                    class="list-post-num"><em data-num="487">487</em><span
                                                    class="list-triangle-border"></span><span
                                                    class="list-triangle-body"></span></span></div>
                                        </div>
                                        <div class="n_txt">喜欢汉服挺久的了，一直到15年的端午节前才去做了一套汉服，第一套就花了2000+也是蛮拼的，真丝的料子</div>
                                        <ul class="n_img clearfix" fname_u="%BA%BA%B7%FE" tid="4621348301">
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/061f95cad1c8a786bb5061286f09c93d70cf5099.jpg"
                                                     oriWidth="960" oriHeight="1280" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C67%2C960%2C672%3Bwh%3D150%2C105%3B/sign=d303b3225182b2b7b3d063840c9de7d9/061f95cad1c8a786bb5061286f09c93d70cf5099.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/21087bf40ad162d92d224b3a19dfa9ec8b13cdcc.jpg"
                                                     oriWidth="960" oriHeight="1280" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D0%2C67%2C960%2C672%3Bwh%3D150%2C105%3B/sign=02354dcc89cb39dbd58f3d16ed262512/21087bf40ad162d92d224b3a19dfa9ec8b13cdcc.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                            <li><img title="点击查看大图"
                                                     original="http://imgsrc.baidu.com/forum/pic/item/5a310a55b319ebc404095cbf8a26cffc1e1716a6.jpg"
                                                     oriWidth="3000" oriHeight="1681" class="m_pic"
                                                     src="http://imgsrc.baidu.com/forum/crop%3D299%2C0%2C2401%2C1681%3Bwh%3D150%2C105%3B/sign=c1c75806b112c8fca0bcac8dc131ab7c/5a310a55b319ebc404095cbf8a26cffc1e1716a6.jpg"
                                                     width="150" height="105">
                                                <div class="feed_highlight"></div>
                                            </li>
                                        </ul>
                                        <div class="n_reply"><a href="/home/main?un=%BD%F5%C9%AA%D2%BB%D2%BB&fr=index"
                                                                title="主题作者" target="_blank"
                                                                class="post_author">锦瑟一一</a><span
                                                class="time">25分钟之前</span></div>
                                    </div>
                                </li>
                            </ul>
                            <div id="data_loading" class="data_loading"><img
                                    src="http://tb2.bdstatic.com/tb/static-spage/img/loading.gif" width="22"
                                    height="22"/><span class="load_tip">正在加载，请稍候...</span></div>
                            <div id="btn_more" class="btn_more"><a href="#" style="text-decoration:none">更多精彩贴子</a>
                            </div>
                            <div id="data_error_bar" class="data_error_bar"><a href="#">数据加载失败，请点击重试</a></div>
                        </div>
                        <div class="r-right-sec">
                            <div class="right_wrap" id="right_wrap">
                                <div>
                                    <div class="topic_list_box">
                                        <div class="item_hd"><span class="title">贴吧热议榜</span><a class="verify_link"
                                                                                                target="_blank"
                                                                                                href="/hottopic/browse/topicList?res_type=1">查看榜单</a>
                                        </div>
                                        <ul class="topic_list_hot topic_list j_topic_toplist"></ul>
                                    </div>
                                </div>
                                <div>
                                    <div class="member_rank">
                                        <div class="member_rank_title">
                                            <div class="rank_progress_bar"><span id="member_rank_page_turn_pre"
                                                                                 class="turn_pre"></span>
                                                <ul id="member_rank_controller" class="page_turn">
                                                    <li class="turn_icon"></li>
                                                    <li class="turn_icon"></li>
                                                </ul>
                                                <span id="member_rank_page_turn_next" class="turn_next"></span></div>
                                            <span class="title">豪友俱乐部</span></div>
                                        <div class="tbui_slideshow_container member_rank_group" id="member_rank_scroll">
                                            <ul class="tbui_slideshow_list">
                                                <li class="tbui_slideshow_slide member_rank_group_item">
                                                    <div class="member_rank_user_item">
                                                        <div class="rank_count rank_high">1</div>
                                                        <div class="rank_portrait"><a
                                                                class="rank_portrait_border j_user_card"
                                                                data-field='{&quot;un&quot;:&quot;帝都T渣的擦肩&quot;}'
                                                                target="_blank" href="/home/main?un=帝都T渣的擦肩"><img
                                                                src="http://tb.himg.baidu.com/sys/portrait/item/0136b5dbb6bc54d4fcb5c4b2c1bce7754f"
                                                                alt=""></a><i class="rank_tshow_icon "></i></div>
                                                        <div class="rank_user_area">
                                                            <div class="rank_user_info clearfix j_rank_user_info">
                                                                <div class="rank_user_info_wrap"><span
                                                                        class="rank_user_sex rank_user_sex_0"></span><a
                                                                        href="/home/main?un=帝都T渣的擦肩" target="_blank"
                                                                        class="rank_user_name  j_rank_user_name">帝都T渣的擦肩</a>
                                                                    <div class="rank_user_iconlist j_rank_user_iconlist">
                                                                        <div class="rank_user_iconlist_wrap"><span
                                                                                class="icon_wrap  icon_wrap_theme1  "><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/102_14.png?stamp=1470731757) no-repeat -50px  0;top:0px;left:0px"
                                                                                data-slot="1" data-name="mojie"
                                                                                data-field='{&quot;name&quot;:&quot;mojie&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:102,&quot;slot_no&quot;:&quot;1&quot;,&quot;title&quot;:&quot;魔羯座印记&quot;,&quot;intro&quot;:&quot;获取规则：在星座勋章馆中获得。&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/f?ie=utf-8&amp;amp;kw=%E8%9B%87%E5%A4%AB%E5%BA%A7&amp;amp;fr=search&quot;,&quot;price&quot;:0,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,1&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=%E8%9B%87%E5%A4%AB%E5%BA%A7&amp;fr=search"
                                                                                class="j_icon_slot" title="魔羯座印记"
                                                                                locate="mojie_1#icon"
                                                                                style="top: 0px; left:0px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="rank_thread_area"><a href="/f?kw=t豆娱乐城"
                                                                                             target="_blank"
                                                                                             class="rank_thread">t豆娱乐城吧</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="member_rank_user_item">
                                                        <div class="rank_count rank_high">2</div>
                                                        <div class="rank_portrait"><a
                                                                class="rank_portrait_border j_user_card"
                                                                data-field='{&quot;un&quot;:&quot;lacus84714&quot;}'
                                                                target="_blank" href="/home/main?un=lacus84714"><img
                                                                src="http://tb.himg.baidu.com/sys/portrait/item/3b1c6c6163757338343731349404"
                                                                alt=""></a><i class="rank_tshow_icon "></i></div>
                                                        <div class="rank_user_area">
                                                            <div class="rank_user_info clearfix j_rank_user_info">
                                                                <div class="rank_user_info_wrap"><span
                                                                        class="rank_user_sex rank_user_sex_1"></span><a
                                                                        href="/home/main?un=lacus84714" target="_blank"
                                                                        class="rank_user_name  j_rank_user_name">lacus84714</a>
                                                                    <div class="rank_user_iconlist j_rank_user_iconlist">
                                                                        <div class="rank_user_iconlist_wrap"><span
                                                                                class="icon_wrap  icon_wrap_theme1  "></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="rank_thread_area"><a href="/f?kw=天涯明月刀OL"
                                                                                             target="_blank"
                                                                                             class="rank_thread">天涯明月刀OL吧</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="member_rank_user_item">
                                                        <div class="rank_count rank_high">3</div>
                                                        <div class="rank_portrait"><a
                                                                class="rank_portrait_border j_user_card"
                                                                data-field='{&quot;un&quot;:&quot;陈观慧应援会&quot;}'
                                                                target="_blank" href="/home/main?un=陈观慧应援会"><img
                                                                src="http://tb.himg.baidu.com/sys/portrait/item/8cd8b3c2b9dbbbdbd3a6d4aebbe19d50"
                                                                alt=""></a><i class="rank_tshow_icon "></i></div>
                                                        <div class="rank_user_area">
                                                            <div class="rank_user_info clearfix j_rank_user_info">
                                                                <div class="rank_user_info_wrap"><span
                                                                        class="rank_user_sex rank_user_sex_0"></span><a
                                                                        href="/home/main?un=陈观慧应援会" target="_blank"
                                                                        class="rank_user_name  j_rank_user_name">陈观慧应援会</a>
                                                                    <div class="rank_user_iconlist j_rank_user_iconlist">
                                                                        <div class="rank_user_iconlist_wrap"><span
                                                                                class="icon_wrap  icon_wrap_theme1  "><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/102_14.png?stamp=1470731757) no-repeat -1100px  0;top:0px;left:0px"
                                                                                data-slot="1" data-name="chunv"
                                                                                data-field='{&quot;name&quot;:&quot;chunv&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:102,&quot;slot_no&quot;:&quot;1&quot;,&quot;title&quot;:&quot;处女座印记&quot;,&quot;intro&quot;:&quot;获取规则：在星座勋章馆中获得。&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/f?ie=utf-8&amp;amp;kw=%E8%9B%87%E5%A4%AB%E5%BA%A7&amp;amp;fr=search&quot;,&quot;price&quot;:0,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,22&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=%E8%9B%87%E5%A4%AB%E5%BA%A7&amp;fr=search"
                                                                                class="j_icon_slot" title="处女座印记"
                                                                                locate="chunv_1#icon"
                                                                                style="top: 0px; left:0px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="rank_thread_area"><a href="/f?kw=亏猫"
                                                                                             target="_blank"
                                                                                             class="rank_thread">亏猫吧</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="member_rank_user_item">
                                                        <div class="rank_count rank_low">4</div>
                                                        <div class="rank_portrait"><a
                                                                class="rank_portrait_border j_user_card"
                                                                data-field='{&quot;un&quot;:&quot;丨遗忘1&quot;}'
                                                                target="_blank" href="/home/main?un=丨遗忘1"><img
                                                                src="http://tb.himg.baidu.com/sys/portrait/item/c1e7d8add2c5cdfc31ac1a"
                                                                alt=""></a><i class="rank_tshow_icon "></i></div>
                                                        <div class="rank_user_area">
                                                            <div class="rank_user_info clearfix j_rank_user_info">
                                                                <div class="rank_user_info_wrap"><span
                                                                        class="rank_user_sex rank_user_sex_1"></span><a
                                                                        href="/home/main?un=丨遗忘1" target="_blank"
                                                                        class="rank_user_name  j_rank_user_name">丨遗忘1</a>
                                                                    <div class="rank_user_iconlist j_rank_user_iconlist">
                                                                        <div class="rank_user_iconlist_wrap"><span
                                                                                class="icon_wrap  icon_wrap_theme1  "><span
                                                                                class="j_icon_slot old_icon_size"
                                                                                style="filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=http://imgsrc.baidu.com/forum/pic/item/77c6a7efce1b9d16a8fc98eef1deb48f8c546401.png, sizingMethod=scale); background: url(http://imgsrc.baidu.com/forum/pic/item/77c6a7efce1b9d16a8fc98eef1deb48f8c546401.png) no-repeat center  center;top:0px;left:0px; background-size: cover;"
                                                                                data-field='{&quot;name&quot;:null,&quot;end_time&quot;:null,&quot;category_id&quot;:null,&quot;slot_no&quot;:null,&quot;title&quot;:null,&quot;intro&quot;:null,&quot;intro_url&quot;:null,&quot;price&quot;:null,&quot;value&quot;:null,&quot;sprite&quot;:null}'
                                                                                data-slot="1" data-name="is_lottery"
                                                                                class="j_icon_slot" title="铁牌世界杯达人"
                                                                                locate="is_lottery_1#icon"
                                                                                style="top:0px;left:0px"><div
                                                                                class=" j_icon_slot_refresh"></div></span></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="rank_thread_area"><a href="/f?kw=网络游戏"
                                                                                             target="_blank"
                                                                                             class="rank_thread">网络游戏吧</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="member_rank_user_item">
                                                        <div class="rank_count rank_low">5</div>
                                                        <div class="rank_portrait"><a
                                                                class="rank_portrait_border j_user_card"
                                                                data-field='{&quot;un&quot;:&quot;无事找清凉&quot;}'
                                                                target="_blank" href="/home/main?un=无事找清凉"><img
                                                                src="http://tb.himg.baidu.com/sys/portrait/item/830bcedecac2d5d2c7e5c1b93c29"
                                                                alt=""></a><i class="rank_tshow_icon "></i></div>
                                                        <div class="rank_user_area">
                                                            <div class="rank_user_info clearfix j_rank_user_info">
                                                                <div class="rank_user_info_wrap"><span
                                                                        class="rank_user_sex rank_user_sex_1"></span><a
                                                                        href="/home/main?un=无事找清凉" target="_blank"
                                                                        class="rank_user_name  j_rank_user_name">无事找清凉</a>
                                                                    <div class="rank_user_iconlist j_rank_user_iconlist">
                                                                        <div class="rank_user_iconlist_wrap"><span
                                                                                class="icon_wrap  icon_wrap_theme1  "><a
                                                                                class="j_icon_slot old_icon_size"
                                                                                style="filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=http://imgsrc.baidu.com/forum/pic/item/0d338744ebf81a4c4b1fe946d52a6059252da60b.png, sizingMethod=scale); background: url(http://imgsrc.baidu.com/forum/pic/item/0d338744ebf81a4c4b1fe946d52a6059252da60b.png) no-repeat center  center;top:0px;left:0px; background-size: cover;"
                                                                                data-field='{&quot;name&quot;:null,&quot;end_time&quot;:null,&quot;category_id&quot;:null,&quot;slot_no&quot;:null,&quot;title&quot;:null,&quot;intro&quot;:null,&quot;intro_url&quot;:null,&quot;price&quot;:null,&quot;value&quot;:null,&quot;sprite&quot;:null}'
                                                                                data-slot="1" data-name="is_welfare"
                                                                                target="_blank" href="#" title="福利印记"
                                                                                data-field='{&quot;user_id&quot;:null}'
                                                                                class="j_score_welfare j_icon_slot "
                                                                                style="top: 0px;left:0px"><div
                                                                                class=" j_icon_slot_refresh"></div></a></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="rank_thread_area"><a href="/p/4131020249"
                                                                                             target="_blank"
                                                                                             class="rank_thread">回复：不高兴，来个对象</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="member_rank_user_item">
                                                        <div class="rank_count rank_low">6</div>
                                                        <div class="rank_portrait"><a
                                                                class="rank_portrait_border j_user_card"
                                                                data-field='{&quot;un&quot;:&quot;倩Q1228228888&quot;}'
                                                                target="_blank" href="/home/main?un=倩Q1228228888"><img
                                                                src="http://tb.himg.baidu.com/sys/portrait/item/53f6d9bb51313232383232383838383f56"
                                                                alt=""></a><i
                                                                class="rank_tshow_icon icon-crown-year-v5"></i></div>
                                                        <div class="rank_user_area">
                                                            <div class="rank_user_info clearfix j_rank_user_info">
                                                                <div class="rank_user_info_wrap"><span
                                                                        class="rank_user_sex rank_user_sex_2"></span><a
                                                                        href="/home/main?un=倩Q1228228888"
                                                                        target="_blank"
                                                                        class="rank_user_name vip_red j_rank_user_name">倩Q1228228888</a>
                                                                    <div class="rank_user_iconlist j_rank_user_iconlist">
                                                                        <div class="rank_user_iconlist_wrap"><span
                                                                                class="icon_wrap  icon_wrap_theme1  "><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/102_14.png?stamp=1470731757) no-repeat -50px  0;top:0px;left:0px"
                                                                                data-slot="1" data-name="mojie"
                                                                                data-field='{&quot;name&quot;:&quot;mojie&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:102,&quot;slot_no&quot;:&quot;1&quot;,&quot;title&quot;:&quot;魔羯座印记&quot;,&quot;intro&quot;:&quot;获取规则：在星座勋章馆中获得。&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/f?ie=utf-8&amp;amp;kw=%E8%9B%87%E5%A4%AB%E5%BA%A7&amp;amp;fr=search&quot;,&quot;price&quot;:0,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,1&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=%E8%9B%87%E5%A4%AB%E5%BA%A7&amp;fr=search"
                                                                                class="j_icon_slot" title="魔羯座印记"
                                                                                locate="mojie_1#icon"
                                                                                style="top: 0px; left:0px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="rank_thread_area"><a href="/p/4534077807"
                                                                                             target="_blank"
                                                                                             class="rank_thread">回复：【T豆商城】买年费超级会员被骗</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="tbui_slideshow_slide member_rank_group_item">
                                                    <div class="member_rank_user_item">
                                                        <div class="rank_count rank_low">7</div>
                                                        <div class="rank_portrait"><a
                                                                class="rank_portrait_border j_user_card"
                                                                data-field='{&quot;un&quot;:&quot;大风吹奶罩杯&quot;}'
                                                                target="_blank" href="/home/main?un=大风吹奶罩杯"><img
                                                                src="http://tb.himg.baidu.com/sys/portrait/item/1ef6b4f3b7e7b4b5c4ccd5d6b1adfb2f"
                                                                alt=""></a><i
                                                                class="rank_tshow_icon icon-crown-year-v5"></i></div>
                                                        <div class="rank_user_area">
                                                            <div class="rank_user_info clearfix j_rank_user_info">
                                                                <div class="rank_user_info_wrap"><span
                                                                        class="rank_user_sex rank_user_sex_2"></span><a
                                                                        href="/home/main?un=大风吹奶罩杯" target="_blank"
                                                                        class="rank_user_name vip_red j_rank_user_name">大风吹奶罩杯</a>
                                                                    <div class="rank_user_iconlist j_rank_user_iconlist">
                                                                        <div class="rank_user_iconlist_wrap"><span
                                                                                class="icon_wrap  icon_wrap_theme1  "><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/104_14.png?stamp=1470731757) no-repeat -1450px  0;top:0px;left:0px"
                                                                                data-slot="1" data-name="wxhong"
                                                                                data-field='{&quot;name&quot;:&quot;wxhong&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:104,&quot;slot_no&quot;:&quot;1&quot;,&quot;title&quot;:&quot;红花会&quot;,&quot;intro&quot;:&quot;地震高冈，一派溪山千古秀;门朝大海，三合河水万年流。&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/p/3178653968&quot;,&quot;price&quot;:10000,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,29&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/p/3178653968"
                                                                                class="j_icon_slot" title="红花会"
                                                                                locate="wxhong_1#icon"
                                                                                style="top: 0px; left:0px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/104_14.png?stamp=1470731757) no-repeat -1700px  0;top:0px;left:28px"
                                                                                data-slot="2" data-name="wxhuo"
                                                                                data-field='{&quot;name&quot;:&quot;wxhuo&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:104,&quot;slot_no&quot;:&quot;2&quot;,&quot;title&quot;:&quot;煋族&quot;,&quot;intro&quot;:&quot;火！火！火！火！火！火！火！火！火！火！&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/p/3178646589&quot;,&quot;price&quot;:10000,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,34&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/p/3178646589"
                                                                                class="j_icon_slot" title="煋族"
                                                                                locate="wxhuo_1#icon"
                                                                                style="top: 0px; left:28px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="rank_thread_area"><a href="/p/4699488397"
                                                                                             target="_blank"
                                                                                             class="rank_thread">回复：7.28
                                                                问题反馈汇总帖</a></div>
                                                        </div>
                                                    </div>
                                                    <div class="member_rank_user_item">
                                                        <div class="rank_count rank_low">8</div>
                                                        <div class="rank_portrait"><a
                                                                class="rank_portrait_border j_user_card"
                                                                data-field='{&quot;un&quot;:&quot;神風苏逸&quot;}'
                                                                target="_blank" href="/home/main?un=神風苏逸"><img
                                                                src="http://tb.himg.baidu.com/sys/portrait/item/2d44c9f1ef4ccbd5d2dd3058"
                                                                alt=""></a><i class="rank_tshow_icon "></i></div>
                                                        <div class="rank_user_area">
                                                            <div class="rank_user_info clearfix j_rank_user_info">
                                                                <div class="rank_user_info_wrap"><span
                                                                        class="rank_user_sex rank_user_sex_0"></span><a
                                                                        href="/home/main?un=神風苏逸" target="_blank"
                                                                        class="rank_user_name  j_rank_user_name">神風苏逸</a>
                                                                    <div class="rank_user_iconlist j_rank_user_iconlist">
                                                                        <div class="rank_user_iconlist_wrap"><span
                                                                                class="icon_wrap  icon_wrap_theme1  "><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/104_14.png?stamp=1470731757) no-repeat -1500px  0;top:0px;left:0px"
                                                                                data-slot="1" data-name="wxshen"
                                                                                data-field='{&quot;name&quot;:&quot;wxshen&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:104,&quot;slot_no&quot;:&quot;1&quot;,&quot;title&quot;:&quot;神机营&quot;,&quot;intro&quot;:&quot;纵横网络神机营，天下何处不为家。&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/p/3178642157&quot;,&quot;price&quot;:10000,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,30&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/p/3178642157"
                                                                                class="j_icon_slot" title="神机营"
                                                                                locate="wxshen_1#icon"
                                                                                style="top: 0px; left:0px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/104_14.png?stamp=1470731757) no-repeat -1700px  0;top:0px;left:28px"
                                                                                data-slot="2" data-name="wxhuo"
                                                                                data-field='{&quot;name&quot;:&quot;wxhuo&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:104,&quot;slot_no&quot;:&quot;2&quot;,&quot;title&quot;:&quot;煋族&quot;,&quot;intro&quot;:&quot;火！火！火！火！火！火！火！火！火！火！&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/p/3178646589&quot;,&quot;price&quot;:10000,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,34&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/p/3178646589"
                                                                                class="j_icon_slot" title="煋族"
                                                                                locate="wxhuo_1#icon"
                                                                                style="top: 0px; left:28px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/104_14.png?stamp=1470731757) no-repeat -1450px  0;top:0px;left:56px"
                                                                                data-slot="3" data-name="wxhong"
                                                                                data-field='{&quot;name&quot;:&quot;wxhong&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:104,&quot;slot_no&quot;:&quot;3&quot;,&quot;title&quot;:&quot;红花会&quot;,&quot;intro&quot;:&quot;地震高冈，一派溪山千古秀;门朝大海，三合河水万年流。&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/p/3178653968&quot;,&quot;price&quot;:10000,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,29&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/p/3178653968"
                                                                                class="j_icon_slot" title="红花会"
                                                                                locate="wxhong_1#icon"
                                                                                style="top: 0px; left:56px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="rank_thread_area"><a href="/p/4641328196"
                                                                                             target="_blank"
                                                                                             class="rank_thread">提醒大家养猫的千万别开窗，哪怕是一点点都不行！</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="member_rank_user_item">
                                                        <div class="rank_count rank_low">9</div>
                                                        <div class="rank_portrait"><a
                                                                class="rank_portrait_border j_user_card"
                                                                data-field='{&quot;un&quot;:&quot;蔡丶十一&quot;}'
                                                                target="_blank" href="/home/main?un=蔡丶十一"><img
                                                                src="http://g.hiphotos.baidu.com/forum/eWH=150,150;bp=1090112,0,0,200/sign=9ba927090a087bf46f862ae4c3e66700/94cad1c8a786c917f9024a7bc13d70cf3bc7576a.jpg"
                                                                alt=""></a><i
                                                                class="rank_tshow_icon icon-crown-year-v5"></i></div>
                                                        <div class="rank_user_area">
                                                            <div class="rank_user_info clearfix j_rank_user_info">
                                                                <div class="rank_user_info_wrap"><span
                                                                        class="rank_user_sex rank_user_sex_2"></span><a
                                                                        href="/home/main?un=蔡丶十一" target="_blank"
                                                                        class="rank_user_name vip_red j_rank_user_name">蔡丶十一</a>
                                                                    <div class="rank_user_iconlist j_rank_user_iconlist">
                                                                        <div class="rank_user_iconlist_wrap"><span
                                                                                class="icon_wrap  icon_wrap_theme1  "><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/102_14.png?stamp=1470731757) no-repeat -450px  0;top:0px;left:0px"
                                                                                data-slot="1" data-name="gold_mojie"
                                                                                data-field='{&quot;name&quot;:&quot;gold_mojie&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:102,&quot;slot_no&quot;:&quot;1&quot;,&quot;title&quot;:&quot;摩羯座黄金版印记&quot;,&quot;intro&quot;:&quot;集齐12个星座印记可以获得12个黄金版星座印记。&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/f?ie=utf-8&amp;amp;kw=%E8%9B%87%E5%A4%AB%E5%BA%A7&amp;amp;fr=search&quot;,&quot;price&quot;:0,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,9&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=%E8%9B%87%E5%A4%AB%E5%BA%A7&amp;fr=search"
                                                                                class="j_icon_slot" title="摩羯座黄金版印记"
                                                                                locate="gold_mojie_1#icon"
                                                                                style="top: 0px; left:0px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/102_14.png?stamp=1470731757) no-repeat -400px  0;top:0px;left:28px"
                                                                                data-slot="2" data-name="gold_sheshou"
                                                                                data-field='{&quot;name&quot;:&quot;gold_sheshou&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:102,&quot;slot_no&quot;:&quot;2&quot;,&quot;title&quot;:&quot;射手座黄金版印记&quot;,&quot;intro&quot;:&quot;集齐12个星座印记可以获得12个黄金版星座印记。&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/f?ie=utf-8&amp;amp;kw=%E8%9B%87%E5%A4%AB%E5%BA%A7&amp;amp;fr=search&quot;,&quot;price&quot;:0,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,8&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=%E8%9B%87%E5%A4%AB%E5%BA%A7&amp;fr=search"
                                                                                class="j_icon_slot" title="射手座黄金版印记"
                                                                                locate="gold_sheshou_1#icon"
                                                                                style="top: 0px; left:28px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/102_14.png?stamp=1470731757) no-repeat -350px  0;top:0px;left:56px"
                                                                                data-slot="3" data-name="gold_shizi"
                                                                                data-field='{&quot;name&quot;:&quot;gold_shizi&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:102,&quot;slot_no&quot;:&quot;3&quot;,&quot;title&quot;:&quot;狮子座黄金版印记&quot;,&quot;intro&quot;:&quot;集齐12个星座印记可以获得12个黄金版星座印记。&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/f?ie=utf-8&amp;amp;kw=%E8%9B%87%E5%A4%AB%E5%BA%A7&amp;amp;fr=search&quot;,&quot;price&quot;:0,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,7&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=%E8%9B%87%E5%A4%AB%E5%BA%A7&amp;fr=search"
                                                                                class="j_icon_slot" title="狮子座黄金版印记"
                                                                                locate="gold_shizi_1#icon"
                                                                                style="top: 0px; left:56px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="rank_thread_area"><a href="/p/4729837500"
                                                                                             target="_blank"
                                                                                             class="rank_thread">回复：【嘲讽】大型色情平台一一一剑三海鳗插件</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="member_rank_user_item">
                                                        <div class="rank_count rank_lower">10</div>
                                                        <div class="rank_portrait"><a
                                                                class="rank_portrait_border j_user_card"
                                                                data-field='{&quot;un&quot;:&quot;贴吧熊&quot;}'
                                                                target="_blank" href="/home/main?un=贴吧熊"><img
                                                                src="http://tb.himg.baidu.com/sys/portrait/item/a75bccf9b0c9d0dc1625"
                                                                alt=""></a><i class="rank_tshow_icon "></i></div>
                                                        <div class="rank_user_area">
                                                            <div class="rank_user_info clearfix j_rank_user_info">
                                                                <div class="rank_user_info_wrap"><span
                                                                        class="rank_user_sex rank_user_sex_1"></span><a
                                                                        href="/home/main?un=贴吧熊" target="_blank"
                                                                        class="rank_user_name  j_rank_user_name">贴吧熊</a>
                                                                    <div class="rank_user_iconlist j_rank_user_iconlist">
                                                                        <div class="rank_user_iconlist_wrap"><span
                                                                                class="icon_wrap  icon_wrap_theme1  "><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/104_14.png?stamp=1470731757) no-repeat -1250px  0;top:0px;left:0px"
                                                                                data-slot="1" data-name="user_type"
                                                                                data-field='{&quot;name&quot;:&quot;user_type&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:104,&quot;slot_no&quot;:&quot;1&quot;,&quot;title&quot;:&quot;贴吧实名认证&quot;,&quot;intro&quot;:&quot;贴吧明星名人实名认证。&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/i/sys/vintro1&quot;,&quot;price&quot;:0,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,25&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/i/sys/vintro1"
                                                                                class="j_icon_slot" title="贴吧实名认证"
                                                                                locate="user_type_1#icon"
                                                                                style="top: 0px; left:0px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="rank_thread_area"><a href="/p/4712334855"
                                                                                             target="_blank"
                                                                                             class="rank_thread">回复：#寻找奥运预言帝#众吧主出征奥运，引奖牌终极猜想</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="member_rank_user_item">
                                                        <div class="rank_count rank_lower">11</div>
                                                        <div class="rank_portrait"><a
                                                                class="rank_portrait_border j_user_card"
                                                                data-field='{&quot;un&quot;:&quot;贴吧会员&quot;}'
                                                                target="_blank" href="/home/main?un=贴吧会员"><img
                                                                src="http://g.hiphotos.baidu.com/forum/eWH=150,150;bp=1090101,0,0,200/sign=e0d51063b1389b502a959d5fb400d5f1/1e30e924b899a9019a0c514b15950a7b0208f596.jpg"
                                                                alt=""></a><i
                                                                class="rank_tshow_icon icon-crown-year-v5"></i></div>
                                                        <div class="rank_user_area">
                                                            <div class="rank_user_info clearfix j_rank_user_info">
                                                                <div class="rank_user_info_wrap"><span
                                                                        class="rank_user_sex rank_user_sex_1"></span><a
                                                                        href="/home/main?un=贴吧会员" target="_blank"
                                                                        class="rank_user_name vip_red j_rank_user_name">贴吧会员</a>
                                                                    <div class="rank_user_iconlist j_rank_user_iconlist">
                                                                        <div class="rank_user_iconlist_wrap"><span
                                                                                class="icon_wrap  icon_wrap_theme1  "><a
                                                                                style="background: url(http://tb1.bdstatic.com/tb/cms/com/icon/104_14.png?stamp=1470731757) no-repeat -1250px  0;top:0px;left:0px"
                                                                                data-slot="1" data-name="user_type"
                                                                                data-field='{&quot;name&quot;:&quot;user_type&quot;,&quot;end_time&quot;:&quot;1735660800&quot;,&quot;category_id&quot;:104,&quot;slot_no&quot;:&quot;1&quot;,&quot;title&quot;:&quot;贴吧实名认证&quot;,&quot;intro&quot;:&quot;贴吧明星名人实名认证。&quot;,&quot;intro_url&quot;:&quot;http://tieba.baidu.com/i/sys/vintro1&quot;,&quot;price&quot;:0,&quot;value&quot;:&quot;1&quot;,&quot;sprite&quot;:{&quot;1&quot;:&quot;1470731757,25&quot;}}'
                                                                                target="_blank"
                                                                                href="http://tieba.baidu.com/i/sys/vintro1"
                                                                                class="j_icon_slot" title="贴吧实名认证"
                                                                                locate="user_type_1#icon"
                                                                                style="top: 0px; left:0px">  <div
                                                                                class=" j_icon_slot_refresh"></div></a></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="rank_thread_area"><a href="/p/4714260759"
                                                                                             target="_blank"
                                                                                             class="rank_thread">回复：【会员福利】盖楼抢票，0元看《精灵王座》！</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="member_rank_user_item">
                                                        <div class="rank_count rank_lower">12</div>
                                                        <div class="rank_portrait"><a
                                                                class="rank_portrait_border j_user_card"
                                                                data-field='{&quot;un&quot;:&quot;吴哲晗应援会&quot;}'
                                                                target="_blank" href="/home/main?un=吴哲晗应援会"><img
                                                                src="http://tb.himg.baidu.com/sys/portrait/item/9c33cee2d5dceacfd3a6d4aebbe17450"
                                                                alt=""></a><i class="rank_tshow_icon "></i></div>
                                                        <div class="rank_user_area">
                                                            <div class="rank_user_info clearfix j_rank_user_info">
                                                                <div class="rank_user_info_wrap"><span
                                                                        class="rank_user_sex rank_user_sex_0"></span><a
                                                                        href="/home/main?un=吴哲晗应援会" target="_blank"
                                                                        class="rank_user_name  j_rank_user_name">吴哲晗应援会</a>
                                                                    <div class="rank_user_iconlist j_rank_user_iconlist">
                                                                        <div class="rank_user_iconlist_wrap"><span
                                                                                class="icon_wrap  icon_wrap_theme1  "></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="rank_thread_area"><a href="/p/3292673938"
                                                                                             target="_blank"
                                                                                             class="rank_thread">【吴哲晗百场公演应援】人见人爱字幕组正式成立！</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="item media_item" id="media_item" alog-alias="media_item">
                                    <div class="item_hd">
                                        <span class="title">贴吧娱乐</span>
                                        <a class="verify_link" target="_blank"
                                           href="Mailto:tiebayule@baidu.com">合作沟通</a>
                                    </div>
                                    <a class="media"
                                       href="http://tieba.baidu.com/f?ie=utf-8&kw=%E6%92%95%E4%BA%BA%E8%AE%A2%E5%88%B6&fr=search"
                                       ∠ target="_blank">
                                        <img src="http://tb1.bdstatic.com/tb/r/image/2016-08-10/150eba0b100daaa35dec9f9ec45ea416.png"
                                             height="90" width="220">
                                    </a>
                                    <ul class="media_list">
                                        <li>
                                            <a href="http://tieba.baidu.com/p/4514251288">福利！【腾讯视频嗨剧社校园行】</a>
                                        </li>
                                        <li>
                                            <a href="http://tieba.baidu.com/p/4414948462" target="_blank">《十五年等待候鸟》的主演们做客贴吧访谈直播啦</a>
                                        </li>

                                        <li>
                                            <a href="http://tieba.baidu.com/p/4300644777" target="_blank">《最强大脑》Dr.魏遭郭敬明呛声</a>
                                        </li>


                                    </ul>
                                </div>

                                <div alog-alias="notice_item" id="notice_item" class="item notice_item">
                                    <div class="item_hd">
                                        <span class="title">公告板</span>
                                    </div>
                                    <a class="notice" href="http://tieba.baidu.com/p/4686878235">
                                        <img width="220" height="90"
                                             src="http://tb1.bdstatic.com/tb/%E6%89%BF%E8%AF%BA%E4%B9%A6725.jpg">
                                    </a>
                                    <ul alog-group="notice_list" class="notice_list">

                                        <li>
                                            <a href="http://tieba.baidu.com/f?kw=%E8%B4%B4%E5%90%A7%E6%9B%9D%E5%85%89%E5%8F%B0&fr=wwwt"
                                               target="_blank">违规贴吧举报反馈通道</a>
                                        </li>

                                        <li>
                                            <a href="http://tieba.baidu.com/p/4457841351 ">贴吧志愿者招募</a>
                                        </li>

                                    </ul>
                                </div>


                                <script>
                                    var pv_img = new Image();
                                    pv_img.src = "http://static.tieba.baidu.com/tb/img/pv.gif?fr=tb0_forum&st_mod=new_spage&st_type=pv_sum&_t=" + (new Date().getTime());
                                </script>
                                <div id="adide_platform" class="item platform_item">
                                    <div class="item_hd"><span class="title">品牌进驻</span><a
                                            href="http://v.tieba.baidu.com/" target="_blank"
                                            class="verify_link">企业入驻</a></div>
                                    <ul class="platform_item_list">
                                        <li class="platform_item_item"><a class="pii_img_w"
                                                                          href="/f?kw=%C2%ED%C9%CF%CF%FB%B7%D1%BD%F0%C8%DA&fr=index"
                                                                          target="_blank"> <img
                                                src="http://m.tiebaimg.com/timg?wapp&amp;imgtype=0&amp;quality=100&amp;size=b5000_5000&amp;cut_x=0&amp;cut_w=0&amp;cut_y=0&amp;cut_h=0&amp;sec=1369815402&amp;di=9bea392c23fc922869ca9983bbd99f5d&amp;wh_rate=null&amp;src=http%3A%2F%2Ftb1.bdstatic.com%2Ftb%2Fr%2Fimage%2F2016-08-11%2F2dcf52f0254245ab6ac9bdea2894b1f3.jpg"
                                                title="" alt="">
                                            <div class="pii_bluev pii_bg"></div>
                                        </a>
                                            <div class="pii_right"><a href="#" class="pii_fbtn pii_bg"
                                                                      fid="16982400"></a><a
                                                    href="/f?kw=%C2%ED%C9%CF%CF%FB%B7%D1%BD%F0%C8%DA&fr=index"
                                                    title="马上消费金融吧" class="h6" target="_blank">马上消费金...</a>
                                                <p>马上金融借款快 品质生活不等待</p></div>
                                        </li>
                                        <li class="platform_item_item"><a class="pii_img_w"
                                                                          href="/f?kw=%BA%EC%C5%A3%B9%D9%B7%BD&fr=index"
                                                                          target="_blank"> <img
                                                src="http://m.tiebaimg.com/timg?wapp&amp;imgtype=0&amp;quality=100&amp;size=b5000_5000&amp;cut_x=0&amp;cut_w=0&amp;cut_y=0&amp;cut_h=0&amp;sec=1369815402&amp;di=bb11c56f0b5a8bd63319c3876f8eabec&amp;wh_rate=null&amp;src=http%3A%2F%2Ftb1.bdstatic.com%2Ftb%2Fr%2Fimage%2F2016-08-10%2Fdbf8795d51bf1d13bb13f08b1f6a87a6.jpg"
                                                title="" alt="">
                                            <div class="pii_bluev pii_bg"></div>
                                        </a>
                                            <div class="pii_right"><a href="#" class="pii_fbtn pii_bg"
                                                                      fid="17908300"></a><a
                                                    href="/f?kw=%BA%EC%C5%A3%B9%D9%B7%BD&fr=index" title="红牛官方吧"
                                                    class="h6" target="_blank">红牛官方吧</a>
                                                <p>你的能量超乎你的想象！</p></div>
                                        </li>
                                        <li class="platform_item_item"><a class="pii_img_w"
                                                                          href="/f?kw=%E7%CD%CC%D8%C1%A6&fr=index"
                                                                          target="_blank"> <img
                                                src="http://m.tiebaimg.com/timg?wapp&amp;imgtype=0&amp;quality=100&amp;size=b5000_5000&amp;cut_x=0&amp;cut_w=0&amp;cut_y=0&amp;cut_h=0&amp;sec=1369815402&amp;di=a32833cdf639a82ee3bc29a8255cc1dd&amp;wh_rate=null&amp;src=http%3A%2F%2Ftb1.bdstatic.com%2Ftb%2Fr%2Fimage%2F2016-08-10%2F7c62c041f13f98da4cf7c3bde7933316.jpg"
                                                title="" alt="">
                                            <div class="pii_bluev pii_bg"></div>
                                        </a>
                                            <div class="pii_right"><a href="#" class="pii_fbtn pii_bg"
                                                                      fid="3624027"></a><a
                                                    href="/f?kw=%E7%CD%CC%D8%C1%A6&fr=index" title="缤特力吧" class="h6"
                                                    target="_blank">缤特力吧</a>
                                                <p>买的放心吧，这个比较像传达给消费者</p></div>
                                        </li>
                                        <li class="platform_item_item"><a class="pii_img_w"
                                                                          href="/f?kw=%BC%D3%D3%CD%B1%A6&fr=index"
                                                                          target="_blank"> <img
                                                src="http://m.tiebaimg.com/timg?wapp&amp;imgtype=0&amp;quality=100&amp;size=b5000_5000&amp;cut_x=0&amp;cut_w=0&amp;cut_y=0&amp;cut_h=0&amp;sec=1369815402&amp;di=ad47ac41316e1a8f7cfb5287c43de1d1&amp;wh_rate=null&amp;src=http%3A%2F%2Ftb1.bdstatic.com%2Ftb%2Fr%2Fimage%2F2016-08-10%2F4a2f6a743601b5311ea8e88e33bae4a7.jpg"
                                                title="" alt="">
                                            <div class="pii_bluev pii_bg"></div>
                                        </a>
                                            <div class="pii_right"><a href="#" class="pii_fbtn pii_bg" fid="978408"></a><a
                                                    href="/f?kw=%BC%D3%D3%CD%B1%A6&fr=index" title="加油宝吧" class="h6"
                                                    target="_blank">加油宝吧</a>
                                                <p>中产阶级刚性消费场景的创新产品平台</p></div>
                                        </li>
                                        <li class="platform_item_item"><a class="pii_img_w"
                                                                          href="/f?kw=%C2%BF%C2%E8%C2%E8&fr=index"
                                                                          target="_blank"> <img
                                                src="http://m.tiebaimg.com/timg?wapp&amp;imgtype=0&amp;quality=100&amp;size=b5000_5000&amp;cut_x=0&amp;cut_w=0&amp;cut_y=0&amp;cut_h=0&amp;sec=1369815402&amp;di=fc62683dc77894b9771cdef656b7309b&amp;wh_rate=null&amp;src=http%3A%2F%2Ftb1.bdstatic.com%2Ftb%2Fr%2Fimage%2F2016-08-10%2Fbeb7db9428290f1123f96d67d92822c6.jpg"
                                                title="" alt="">
                                            <div class="pii_bluev pii_bg"></div>
                                        </a>
                                            <div class="pii_right"><a href="#" class="pii_fbtn pii_bg"
                                                                      fid="2047554"></a><a
                                                    href="/f?kw=%C2%BF%C2%E8%C2%E8&fr=index" title="驴妈妈吧" class="h6"
                                                    target="_blank">驴妈妈吧</a>
                                                <p>自在游天下，就找驴妈妈</p></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bottom-bg"></div>
            </div>
        </div>
        <div class="footer" alog-alias="footer"><p alog-group="copy">&copy;2016 Baidu<a
                href="http://www.baidu.com/duty/">使用百度前必读</a><a href="http://tb1.bdstatic.com/tb/eula.html">贴吧协议</a><a
                href="http://tieba.baidu.com/hermes/feedback">投诉反馈</a>信息网络传播视听节目许可证 0110516<a
                href="http://net.china.cn/chinese/index.htm" target="_blank"><img
                src="http://tb2.bdstatic.com/tb/static-common/img/net_0d27e51.png" width="20"></a><a
                href="http://www.bj.cyberpolice.cn/index.htm" target="_blank"><img title="首都网络110报警服务"
                                                                                   src="http://tb2.bdstatic.com/tb/static-common/img/110_3adf20a.png"
                                                                                   width="20"></a></p></div>
        <script>window.alogObjectConfig = {
            product: '14',
            page: '14_3',
            monkey_page: 'tieba-index',
            speed_page: '3',
            speed: {sample: '0.2'},
            monkey: {sample: '0.01', hid: '762'},
            exception: {sample: '0.1'},
        };</script>
    </div>
</div>
<script type="text/javascript">alog && alog("speed.set", "drt", +new Date);</script>
<script>PageUnitData = {
    "search_input_tip": "输入你感兴趣的东东",
    "dasense_messenger_whitelist": [["http://fedev.baidu.com"], ["http://jiaoyu.baidu.com"], ["http://caifu.baidu.com"], ["http://jiankang.baidu.com"], ["http://tieba.dre8.com"], ["http://tdsp.nuomi.com"], ["http://baiju.baidu.com"], ["http://temai.baidu.com"], ["http://tieba.baidu.com"], ["http://zt.chuanke.com"], ["http://window.sturgeon.mopaas.com"], ["http://api.union.vip.com"], ["http://api.dongqiudi.com"], ["http://www.chuanke.com"], ["cp01-rdqa-dev312.cp01.baidu.com:8550"], ["http://dcp.kuaizitech.com/"]],
    "like_tip_svip_black_list": "",
    "icons_category": {"101": ["巴西世界杯"], "102": ["星座印记"], "104": ["贴吧印记"]}
};</script>
<script src="http://tb1.bdstatic.com/??tb/static-common/lib/tb_lib_cc65e9d.js,tb/static-common/ui/common_logic_v2_0a2d78f.js,tb/static-common/js/tb_ui_7e66918.js,/tb/_/ban_4ce308b.js"></script>
<script>    (function (F) {
    var _JSSTAMP = {
        "spage/component/feed_data/feed_data.js": "/tb/_/feed_data_a6a0a69.js",
        "common/component/dynamic_load/dynamic_load.js": "/tb/_/dynamic_load_b34ab50.js",
        "common/widget/picture_rotation/picture_rotation.js": "/tb/_/picture_rotation_a5475c9.js",
        "spage/component/popframe/popframe.js": "/tb/_/popframe_cd135d9.js",
        "common/component/slide_show/slide_show.js": "/tb/_/slide_show_27c9ac6.js",
        "common/widget/aside_float_bar/aside_float_bar.js": "/tb/_/aside_float_bar_74bd032.js",
        "common/widget/scroll_panel/scroll_panel.js": "/tb/_/scroll_panel_51b7780.js",
        "common/component/often_visiting_forum/often_visiting_forum.js": "/tb/_/often_visiting_forum_a1d8ace.js",
        "common/widget/tbshare/tbshare.js": "/tb/_/tbshare_49feb08.js",
        "common/widget/card/card.js": "/tb/_/card_346a068.js",
        "common/widget/wallet_dialog/wallet_dialog.js": "/tb/_/wallet_dialog_e726f8a.js",
        "common/widget/new_message_system/new_message_system.js": "/tb/_/new_message_system_1ee2c23.js",
        "common/widget/cashier_dialog/cashier_dialog.js": "/tb/_/cashier_dialog_0c1473f.js",
        "common/widget/messenger/messenger.js": "/tb/_/messenger_89ba53a.js",
        "common/widget/base_user_data/base_user_data.js": "/tb/_/base_user_data_0269fa2.js",
        "common/widget/pay_member/pay_member.js": "/tb/_/pay_member_440a15e.js",
        "common/widget/http_transform/http_transform.js": "/tb/_/http_transform_e33a140.js",
        "common/widget/login_dialog/login_dialog.js": "/tb/_/login_dialog_b34812a.js",
        "common/widget/search_handler/search_handler.js": "/tb/_/search_handler_6b1cde2.js",
        "common/widget/suggestion/suggestion.js": "/tb/_/suggestion_b5414b4.js",
        "common/widget/animate_base/animate_base.js": "/tb/_/animate_base_8457ed4.js",
        "common/component/captcha/captcha.js": "/tb/_/captcha_eb4b22d.js",
        "common/component/captcha_meizhi/captcha_meizhi.js": "/tb/_/captcha_meizhi_e491f5f.js",
        "common/component/image_uploader/image_uploader.js": "/tb/_/image_uploader_bdbf433.js",
        "common/component/image_exif/image_exif.js": "/tb/_/image_exif_8b574dd.js",
        "common/component/captcha_dialog/captcha_dialog.js": "/tb/_/captcha_dialog_b73e617.js",
        "common/component/postor_service/postor_service.js": "/tb/_/postor_service_5c5a5b5.js",
        "common/component/scroll_panel/scroll_panel.js": "/tb/_/scroll_panel_9e28dd8.js",
        "common/component/suggestion/suggestion.js": "/tb/_/suggestion_db8304a.js",
        "common/component/toolbar/toolbar.js": "/tb/_/toolbar_f3ac745.js",
        "common/component/sketchpad_dialog/sketchpad_dialog.js": "/tb/_/sketchpad_dialog_abf416a.js",
        "common/component/tabs/tabs.js": "/tb/_/tabs_fca6d95.js",
        "common/widget/word_limit/word_limit.js": "/tb/_/word_limit_b37f532.js",
        "common/component/editor_pic/editor_pic.js": "/tb/_/editor_pic_83f37a3.js",
        "common/component/editor_video/editor_video.js": "/tb/_/editor_video_a1c7028.js",
        "common/component/editor_smiley/editor_smiley.js": "/tb/_/editor_smiley_dc5141a.js",
        "common/component/editor_music/editor_music.js": "/tb/_/editor_music_d741e09.js",
        "common/component/editor_sketchpad/editor_sketchpad.js": "/tb/_/editor_sketchpad_923df31.js",
        "common/component/area_select/area_select.js": "/tb/_/area_select_f396383.js",
        "common/component/follower/follower.js": "/tb/_/follower_7ce74f3.js",
        "common/widget/image_uploader_manager/image_uploader_manager.js": "/tb/_/image_uploader_manager_c4324db.js",
        "common/component/sketchpad/sketchpad.js": "/tb/_/sketchpad_3065cc9.js",
        "common/component/interest_smiley/interest_smiley.js": "/tb/_/interest_smiley_d183292.js",
        "common/component/animate_keyframes_bouncein/animate_keyframes_bouncein.js": "/tb/_/animate_keyframes_bouncein_8d70c27.js",
        "common/component/animate_keyframes_bounceout/animate_keyframes_bounceout.js": "/tb/_/animate_keyframes_bounceout_8f15463.js",
        "common/component/animate_keyframes_fadein/animate_keyframes_fadein.js": "/tb/_/animate_keyframes_fadein_178e937.js",
        "common/component/animate_keyframes_fadeout/animate_keyframes_fadeout.js": "/tb/_/animate_keyframes_fadeout_44f964c.js",
        "common/component/animate_keyframes_flip/animate_keyframes_flip.js": "/tb/_/animate_keyframes_flip_44dec23.js",
        "common/component/animate_keyframes_focus/animate_keyframes_focus.js": "/tb/_/animate_keyframes_focus_de0bedc.js",
        "common/component/animate_keyframes_lightspeed/animate_keyframes_lightspeed.js": "/tb/_/animate_keyframes_lightspeed_6109fe5.js",
        "common/component/animate_keyframes_rotatein/animate_keyframes_rotatein.js": "/tb/_/animate_keyframes_rotatein_0b7ba89.js",
        "common/component/animate_keyframes_rotateout/animate_keyframes_rotateout.js": "/tb/_/animate_keyframes_rotateout_884da6a.js",
        "common/component/animate_keyframes_slidein/animate_keyframes_slidein.js": "/tb/_/animate_keyframes_slidein_38b544d.js",
        "common/component/animate_keyframes_slideout/animate_keyframes_slideout.js": "/tb/_/animate_keyframes_slideout_a86a043.js",
        "common/component/animate_keyframes_special/animate_keyframes_special.js": "/tb/_/animate_keyframes_special_fa9a9be.js",
        "common/component/animate_keyframes_zoomin/animate_keyframes_zoomin.js": "/tb/_/animate_keyframes_zoomin_9b12f77.js",
        "common/component/animate_keyframes_zoomout/animate_keyframes_zoomout.js": "/tb/_/animate_keyframes_zoomout_73cbdb0.js",
        "user/widget/icons/icons.js": "/tb/_/icons_3f76084.js",
        "user/widget/user_api/user_api.js": "/tb/_/user_api_c1c17f1.js",
        "common/widget/qianbao_purchase_member/qianbao_purchase_member.js": "/tb/_/qianbao_purchase_member_cdd16f7.js",
        "common/widget/tdou/tdou_open_type.js": "/tb/_/tdou_open_type_6e74792.js",
        "common/widget/qianbao_cashier_dialog/qianbao_cashier_dialog.js": "/tb/_/qianbao_cashier_dialog_66b19dc.js",
        "common/widget/base_dialog_user_bar/base_dialog_user_bar.js": "/tb/_/base_dialog_user_bar_e35e594.js",
        "common/widget/tbcopy/tbcopy.js": "/tb/_/tbcopy_7183010.js",
        "common/widget/tdou_get/tdou_get.js": "/tb/_/tdou_get_bf66016.js",
        "tbmall/widget/tbean_safe_ajax/tbean_safe_ajax.js": "/tb/_/tbean_safe_ajax_94e7ca2.js",
        "common/widget/umoney_query/umoney_query.js": "/tb/_/umoney_query_c9b7960.js",
        "common/widget/qianbao_purchase_tdou/qianbao_purchase_tdou.js": "/tb/_/qianbao_purchase_tdou_579646c.js",
        "common/widget/umoney/umoney.js": "/tb/_/umoney_ed41085.js",
        "common/widget/payment_dialog_title/payment_dialog_title.js": "/tb/_/payment_dialog_title_3ca23a5.js",
        "common/widget/show_dialog/show_dialog.js": "/tb/_/show_dialog_1644928.js",
        "common/widget/tdou/tdou_data.js": "/tb/_/tdou_data_a17b12c.js",
        "common/widget/tdou/tdou_view_pay.js": "/tb/_/tdou_view_pay_a6a3977.js",
        "common/widget/audio_player/audio_player.js": "/tb/_/audio_player_c56fea7.js",
        "common/component/js_pager/js_pager.js": "/tb/_/js_pager_79de728.js",
        "common/widget/user_head/user_head.js": "/tb/_/user_head_cb25c69.js",
        "common/component/image_previewer/image_previewer.js": "/tb/_/image_previewer_73d5f03.js",
        "common/component/image_editor/image_editor.js": "/tb/_/image_editor_7d1aff6.js",
        "common/component/image_previewer_list/image_previewer_list.js": "/tb/_/image_previewer_list_86f1336.js",
        "common/component/image_previewer_rotate/image_previewer_rotate.js": "/tb/_/image_previewer_rotate_c7cabf0.js",
        "common/component/image_uploader_queue/image_uploader_queue.js": "/tb/_/image_uploader_queue_233b0a9.js",
        "common/component/image_progress_bar/image_progress_bar.js": "/tb/_/image_progress_bar_12c6eb4.js",
        "common/widget/block_user/block_user.js": "/tb/_/block_user_b243e57.js",
        "common/widget/pic_poster/pic_poster.js": "/tb/_/pic_poster_1ab669a.js",
        "common/component/image_water/image_water.js": "/tb/_/image_water_4157030.js",
        "common/component/image_flash_editor/image_flash_editor.js": "/tb/_/image_flash_editor_087177d.js",
        "common/widget/params_xss_handler/params_xss_handler.js": "/tb/_/params_xss_handler_bbb0828.js",
        "common/component/select/select.js": "/tb/_/select_8d82f79.js",
        "ucenter/widget/like_tip/like_tip.js": "/tb/_/like_tip_7ccda75.js",
        "tbmall/widget/tbean_safe/tbean_safe.js": "/tb/_/tbean_safe_14418e9.js",
        "common/widget/post_service/post_service.js": "/tb/_/post_service_9b253be.js",
        "common/widget/post_prefix/post_prefix.js": "/tb/_/post_prefix_199a172.js",
        "common/widget/post_signature/post_signature.js": "/tb/_/post_signature_8c3c4ae.js",
        "common/widget/mouse_pwd/mouse_pwd.js": "/tb/_/mouse_pwd_5a7d5dd.js",
        "common/component/bubble_factory/bubble_factory.js": "/tb/_/common/ueditor/bubble_factory_cb89f17.js",
        "common/component/quick_reply_edit/quick_reply_edit.js": "/tb/_/common/ueditor/quick_reply_edit_5d09652.js",
        "common/widget/paypost_data/paypost_data.js": "/tb/_/paypost_data_62a7ae4.js",
        "props/widget/props_data/props_data.js": "/tb/_/props_data_a25400f.js",
        "common/component/slide_select/slide_select.js": "/tb/_/common/ueditor/slide_select_01ec4cf.js",
        "common/component/post_props/post_props.js": "/tb/_/common/ueditor/post_props_a89086a.js",
        "common/component/attachment_uploader/attachment_uploader.js": "/tb/_/common/ueditor/attachment_uploader_a9da3e8.js",
        "common/component/picture_album_selector/picture_album_selector.js": "/tb/_/common/ueditor/picture_album_selector_fdd3b86.js",
        "common/component/picture_selector/picture_selector.js": "/tb/_/common/ueditor/picture_selector_59b8c9f.js",
        "common/component/picture_uploader/picture_uploader.js": "/tb/_/common/ueditor/picture_uploader_73aea17.js",
        "common/component/picture_web_selector/picture_web_selector.js": "/tb/_/common/ueditor/picture_web_selector_f9e9dfc.js",
        "common/component/scrawl/scrawl.js": "/tb/_/common/ueditor/scrawl_76e59ac.js",
        "common/component/ueditor_emotion/ueditor_emotion.js": "/tb/_/common/ueditor/ueditor_emotion_78f28ac.js",
        "common/component/ueditor_music/ueditor_music.js": "/tb/_/common/ueditor/ueditor_music_c469afb.js",
        "common/component/ueditor_video/ueditor_video.js": "/tb/_/ueditor_video_7fa1ff6.js",
        "common/component/colorful/colorful.js": "/tb/_/common/ueditor/colorful_bd48ae9.js",
        "common/component/custom_emotion/custom_emotion.js": "/tb/_/common/ueditor/custom_emotion_1872999.js",
        "common/component/post_bubble/post_bubble.js": "/tb/_/common/ueditor/post_bubble_9f3833e.js",
        "common/component/tb_gram/tb_gram.js": "/tb/_/common/ueditor/tb_gram_0beb785.js",
        "common/component/formula/formula.js": "/tb/_/common/ueditor/formula_58b7814.js",
        "common/component/post_setting/post_setting.js": "/tb/_/common/ueditor/post_setting_f6ac2a4.js",
        "common/component/paypost/paypost.js": "/tb/_/common/ueditor/paypost_62e57ae.js",
        "common/widget/join_vip_dialog/join_vip_dialog.js": "/tb/_/join_vip_dialog_e8b24ea.js",
        "common/component/quick_reply_data_handler/quick_reply_data_handler.js": "/tb/_/common/ueditor/quick_reply_data_handler_acf192c.js",
        "common/widget/placeholder/placeholder.js": "/tb/_/placeholder_e682b0c.js",
        "common/widget/detect_manager_block/detect_manager_block.js": "/tb/_/detect_manager_block_713b838.js",
        "common/widget/verify_manager_phone/verify_manager_phone.js": "/tb/_/verify_manager_phone_57ce818.js",
        "common/widget/tb_lcs/tb_lcs.js": "/tb/_/tb_lcs_54a098c.js",
        "common/widget/flash_lcs/flash_lcs.js": "/tb/_/flash_lcs_ccd5d3e.js",
        "common/widget/event_center/event_center.js": "/tb/_/event_center_2327b16.js"
    };
    F.tbConfig(_JSSTAMP);
})(F);</script>
<script src="http://tb1.bdstatic.com/??/tb/_/app_f6b8e80.js,/tb/_/card_346a068.js,/tb/_/js_pager_79de728.js,/tb/_/login_dialog_b34812a.js,/tb/_/user_head_cb25c69.js,/tb/_/user_api_c1c17f1.js,/tb/_/icons_3f76084.js,/tb/_/wallet_dialog_e726f8a.js,/tb/_/tb_lcs_54a098c.js,/tb/_/flash_lcs_ccd5d3e.js,/tb/_/event_center_2327b16.js,/tb/_/new_message_system_1ee2c23.js,/tb/_/messenger_89ba53a.js,/tb/_/base_user_data_0269fa2.js,/tb/_/cashier_dialog_0c1473f.js,/tb/_/qianbao_cashier_dialog_66b19dc.js,/tb/_/base_dialog_user_bar_e35e594.js,/tb/_/qianbao_purchase_member_cdd16f7.js,/tb/_/pay_member_440a15e.js,/tb/_/http_transform_e33a140.js,/tb/_/userbar_a5112e8.js,/tb/_/footer_af59471.js,/tb/_/poptip_74068e9.js,/tb/_/ad_stats_008fc58.js,/tb/_/pad_overlay_c504049.js,/tb/_/search_handler_6b1cde2.js,/tb/_/suggestion_b5414b4.js,/tb/_/search_bright_556efb4.js,/tb/_/top_banner_a407e3f.js,/tb/_/couplet_44a34e5.js"></script>
<script src="http://tb1.bdstatic.com/??/tb/_/data_handler_async_02038fe.js,/tb/_/loader_8871eec.js,/tb/_/slide_show_27c9ac6.js,/tb/_/carousel_area_v3_ca08742.js,/tb/_/interest_num_v2_def412c.js,/tb/_/tbskin_spage_1713630.js,/tb/_/payment_dialog_title_3ca23a5.js,/tb/_/show_dialog_1644928.js,/tb/_/qianbao_purchase_tdou_579646c.js,/tb/_/tdou_get_bf66016.js,/tb/_/tcharge_dialog_7afb0fc.js,/tb/_/tool_async_fbb5605.js,/tb/_/loader_async_4df6f1e.js,/tb/_/like_tip_7ccda75.js,/tb/_/member_api_722ea18.js,/tb/_/umoney_query_c9b7960.js,/tb/_/nameplate_d41d8cd.js,/tb/_/my_current_forum_97a6354.js,/tb/_/util_b5d1f1a.js,/tb/_/dialog_dc42202.js,/tb/_/join_vip_dialog_e8b24ea.js,/tb/_/cont_sign_card_a9f70da.js,/tb/_/sign_mod_bright_af1accb.js,/tb/_/tb_spam_846204f.js,/tb/_/my_tieba_1fa9c5f.js,/tb/_/icon_tip_2108dad.js,/tb/_/tdou_view_pay_a6a3977.js,/tb/_/popframe_cd135d9.js,/tb/_/scroll_panel_51b7780.js,/tb/_/often_visiting_forum_a1d8ace.js"></script>
<script src="http://tb1.bdstatic.com/??/tb/_/ihome/onekey_sign_c08507a.js,/tb/_/spage_game_tab_5021af9.js,/tb/_/forum_directory_fe88aa2.js,/tb/_/forum_rcmd_v2_dd89fb9.js,/tb/_/spage_liveshow_slide_fd498ac.js,/tb/_/activity_carousel_d41d8cd.js,/tb/_/affairs_nav_4cce484.js,/tb/_/feed_data_a6a0a69.js,/tb/_/dynamic_load_b34ab50.js,/tb/_/picture_rotation_a5475c9.js,/tb/_/affairs_8a43f64.js,/tb/_/audio_player_c56fea7.js,/tb/_/voice_37a96ea.js,/tb/_/tbcopy_7183010.js,/tb/_/tbshare_49feb08.js,/tb/_/aside_float_bar_74bd032.js,/tb/_/topic_rank_06ef633.js,/tb/_/ihome/interaction_27e2eca.js,/tb/_/ihome/month_icon_27518ed.js,/tb/_/residual_250f75d.js,/tb/_/user_visit_card_bac28a1.js,/tb/_/member_rank_40b029d.js,/tb/_/aside_v2_a08ee35.js,/tb/_/aside_platform_9ea2582.js,/tb/_/feedback_22ddff1.js,/tb/_/common_footer_promote_0840273.js,/tb/_/new_footer_d41d8cd.js,/tb/_/stats_1349814.js,/tb/_/tshow_out_date_warn_73fdc8e.js,/tb/_/ticket_warning_f136896.js"></script>
<script src="http://tb1.bdstatic.com/??/tb/_/member_upgrade_tip_d075827.js,/tb/_/tdou_view_pay_a6a3977.js,/tb/_/tpl_14_bb1002a.js,/tb/_/tpl_5_b1d3505.js"></script>
<script>window.modDiscardTemplate = {};</script>
<script>    _.Module.use('creativeplatform/widget/aopApp', [[]]);</script>
<script>    _.Module.use('common/widget/httpTransform', [], function () {
});  </script>
<script>_.Module.use('common/widget/suggestion', [], function () {
});</script>
<script>_.Module.use('common/widget/searchBright', [$('#head'), {
    style: 'bright',
    theme: '2',
    forumName: '',
    searchFixed: '',
    sugOn: '1'
}]);</script>
<script>    _.Module.use('adsense/widget/tpl_14', [{
    'adData': {
        "id": "26931",
        "name": "第一帧第一图",
        "typeid": "GEN89",
        "pos_name": "CAROUSEL_1",
        "loc_code": "p0064",
        "client_type": "PC",
        "page_name": "INDEX",
        "app_type": "13",
        "tpl_name": "14",
        "locator": "",
        "load_type": "prepend",
        "first_screen": "1",
        "url_type": 1,
        "throw_type": "0",
        "url": "http://tieba.baidu.com/link?tbjump=lid%3D2121659560_26931_13___0%26url%3D1364SYTZEbpAFqbVISMAZgky2DLSuEXHJQS0z0Z5-pLzrFIVKFj1ixo2Wd33rDLKWxjg7vsRRl7hu_nJKUhE-4ORL6ab3iy3SCKgPik-vAe7cw7IRmEMNLGDIg-C1VPhIgM9zNLfEjFbhSn301Dj-g5p0WzuapYz2X3Nhz4Rk-C_wWMG2VyiIFb-8dTEx7EnHFJkKF0gvZW6J-MYTG3tUw1ZkfR8g9y19jptDDkbYeSAH1B8mBOENN-ytVZoqjunqDjoJu5fujoE4yAiW6CNFztqN7yGSynCkLRovykb-fjHq8HlZyM_q3QxC_ic-i6jcf3dO9-KkotDjCs0YlpZb1YOGtwhxrmqkwPMygp5LB_5TREk9sp3651QF4KnNcPkfUHXp1y24sxqiB8ruL-596vemTfuEPxOEjVqaRIxVLY965hY1vcy1N3dqJGiU_THB_vm6KhtWQLMNtztTizCDZ9bLJeyuw6P1kAfqu-uCE6P2LXNH8SB6nP0bOFQreiRPoB-s5cszuoePUyf321-OyBt0aU4nf8c7WOhmsBl7C2-OqowCfq6By-Bp1m1YUO6q6DK3515YG93_jb354nJ73e8GM6-k-NrLdDJMotWNX6kOo5pLaDNK3BPPQ-ObCJgTaA2mefmcZHlvgEVO-F0WKHLXKDGs6M9J8Xl1zMKJGbtrw4uB61egAejwJzr2BrhFeBooibtDAtdV0KLTKBF5ntp3HhpbgT8cFeq2-it3MilLFX1VXH17L0_ph4A1ykTYI95n36JPSnwQTifVc_9ZfmXMnhmOmRqll3aP8zFJ8tk25ITMIyxSFmTQ6iWVFco45keBPwlbvMglY2jZGWeYgYacw",
        "ios_url": "",
        "apk_url": "",
        "apk_name": "",
        "first_name": "内容",
        "second_name": "内容",
        "goods_info": [{
            "loc_param": "1",
            "image_width": "300",
            "image_height": "180",
            "statsCommand": "adsenseCarouselAreaShow_0",
            "image_desc": "手工制作普罗旺斯小屋",
            "image_url": "http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470799563388.jpg",
            "id": "47070",
            "video_info": [],
            "width": 0,
            "height": 0,
            "label_measure": 1
        }],
        "cpid": "13",
        "abtest": "",
        "price": 0,
        "plan_id": 1,
        "user_id": "37676788",
        "ext_info": "1_0_0_0_13_0_0_0_p0064_0_0_第一帧第一图_内容_内容_6318862924358068735_0_0_0_0_CPM_GD__1_0_N_eyJ1aWQiOjAsInR5cGVpZCI6IkdFTjg5In0=_0",
        "search_id": 6318862924358068735,
        "imTimeSign": null,
        "ad_tags": [],
        "verify": "b2af48946890214c14471dde980f7cd2",
        "raw_adurl": "http://tieba.baidu.com/p/4518651626",
        "pb_log": {
            "click_url": "http://tieba.baidu.com/p/4518651626",
            "action_type": 2,
            "client_type": 1,
            "task": "tbda",
            "loc_param": "1",
            "page": 1,
            "location": "p0064"
        },
        "click_url_params": "lid%3D2121659560_26931_13___0%26url%3D1364SYTZEbpAFqbVISMAZgky2DLSuEXHJQS0z0Z5-pLzrFIVKFj1ixo2Wd33rDLKWxjg7vsRRl7hu_nJKUhE-4ORL6ab3iy3SCKgPik-vAe7cw7IRmEMNLGDIg-C1VPhIgM9zNLfEjFbhSn301Dj-g5p0WzuapYz2X3Nhz4Rk-C_wWMG2VyiIFb-8dTEx7EnHFJkKF0gvZW6J-MYTG3tUw1ZkfR8g9y19jptDDkbYeSAH1B8mBOENN-ytVZoqjunqDjoJu5fujoE4yAiW6CNFztqN7yGSynCkLRovykb-fjHq8HlZyM_q3QxC_ic-i6jcf3dO9-KkotDjCs0YlpZb1YOGtwhxrmqkwPMygp5LB_5TREk9sp3651QF4KnNcPkfUHXp1y24sxqiB8ruL-596vemTfuEPxOEjVqaRIxVLY965hY1vcy1N3dqJGiU_THB_vm6KhtWQLMNtztTizCDZ9bLJeyuw6P1kAfqu-uCE6P2LXNH8SB6nP0bOFQreiRPoB-s5cszuoePUyf321-OyBt0aU4nf8c7WOhmsBl7C2-OqowCfq6By-Bp1m1YUO6q6DK3515YG93_jb354nJ73e8GM6-k-NrLdDJMotWNX6kOo5pLaDNK3BPPQ-ObCJgTaA2mefmcZHlvgEVO-F0WKHLXKDGs6M9J8Xl1zMKJGbtrw4uB61egAejwJzr2BrhFeBooibtDAtdV0KLTKBF5ntp3HhpbgT8cFeq2-it3MilLFX1VXH17L0_ph4A1ykTYI95n36JPSnwQTifVc_9ZfmXMnhmOmRqll3aP8zFJ8tk25ITMIyxSFmTQ6iWVFco45keBPwlbvMglY2jZGWeYgYacw",
        "loc_index": 1
    }, /* 广告数据 */
    'className': 'k57723ef78', /* 广告定位器 */
    'asyncHTML': '', /* 异步加载的广告字符串 */
    'isAsync': '', /* 是否为异步加载 */
    'needStats': true                       /* 是否需要点击统计 */
}]);</script>
<script>    _.Module.use('adsense/widget/tpl_14', [{
    'adData': {
        "id": "26726",
        "name": "第一帧第三图",
        "typeid": "GEN91",
        "pos_name": "CAROUSEL_1",
        "loc_code": "p0064",
        "client_type": "PC",
        "page_name": "INDEX",
        "app_type": "13",
        "tpl_name": "14",
        "locator": "",
        "load_type": "prepend",
        "first_screen": "1",
        "url_type": 1,
        "throw_type": "0",
        "url": "http://tieba.baidu.com/link?tbjump=lid%3D2121659560_26726_13___0%26url%3D3686lIIvJQG22uuoJmJo6kJCm842B4DUR4aeGzh69cSZ3pGeneSsVIlVtZq4YtpNFPSu4_ze_MyF-j1TIsagD7KvItwprm12aPJ1LIcm-geeKOaO3M8t4CCvZ6_DfA-lX8iEp-gZWe3Orfur0qJCIAdf1hF-6hTKKVwg20W43Ce68WAh67s8kF91FQ9E8c0r9q8G2b4KW1ytPGykYBFTk-b73cwWs6Nd0486PVpSdcTBjExfgjs9PaYLzeItadY58RKPtLok7qjcbmXcDddBtAHnwbcByXzNbssOVyK5si33z7_0q9fAGZnzunUJlXn5bYaoUNw3OUwM2iIzybTWLOHKusA3kARQqALi1CzGFe7XZOmgLH7jpEt6In6QJtpSAC2oLrXrXrd6aS7VoTkLBOmglfr0X5tJ0YMNp-waTHhHfMEkdKiUBBvNEHOl60UX5mM0OpMf_4_cpcCPjrxiHEwsV5Uj6OjNac8bRD7PO651QBxu6gSUGARy1WMQlKBOY6vISXR0x-LZt2KTJwAa58yas2fB75Iq-lfbc09_f3YVrNs_VpqTU3ML51i308oyT8Ii3K62CGI7ur5O1KDper2X6J4YKEN0T8Dh37KLNP1TKWroUk1L4yF0XPlhS7MALMoRjqqGiU8x4r8v4mCBHkphOd-IKJR7o-RoHFJViznd8wTADpiOdTrfQ-MLWm3GII_ywDPFnYShY4klVPfkoFQ1qNtF85DQREoFx-Tk4HCab-kDkRaU291okAEFiGHaC1tf7eUsmAbQE5kYC5RIc6oSHWLGRjc2Jb6mERu21P9YHDb8jY1Ua5JV4cbtGaLMpNbc8bNoKuIBcmWr8XovD_qHMA",
        "ios_url": "",
        "apk_url": "",
        "apk_name": "",
        "first_name": "内容",
        "second_name": "内容",
        "goods_info": [{
            "loc_param": "3",
            "image_width": "187",
            "image_height": "180",
            "statsCommand": "adsenseCarouselAreaShow_0",
            "image_url": "http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470987698125.jpg",
            "image_desc": "云南大理骑行泰国",
            "id": "46862",
            "video_info": [],
            "width": 0,
            "height": 0,
            "label_measure": 1
        }],
        "cpid": "13",
        "abtest": "",
        "price": 0,
        "plan_id": 1,
        "user_id": "37676788",
        "ext_info": "1_0_0_0_13_0_0_0_p0064_0_0_第一帧第三图_内容_内容_6318862924358068735_0_0_0_0_CPM_GD__1_0_N_eyJ1aWQiOjAsInR5cGVpZCI6IkdFTjkxIn0=_0",
        "search_id": 6318862924358068735,
        "imTimeSign": null,
        "ad_tags": [],
        "verify": "338d54a17c403b265ebdfeb29fa4bcf1",
        "raw_adurl": "http://tieba.baidu.com/p/4594659088",
        "pb_log": {
            "click_url": "http://tieba.baidu.com/p/4594659088",
            "action_type": 2,
            "client_type": 1,
            "task": "tbda",
            "loc_param": "3",
            "page": 1,
            "location": "p0064"
        },
        "click_url_params": "lid%3D2121659560_26726_13___0%26url%3D3686lIIvJQG22uuoJmJo6kJCm842B4DUR4aeGzh69cSZ3pGeneSsVIlVtZq4YtpNFPSu4_ze_MyF-j1TIsagD7KvItwprm12aPJ1LIcm-geeKOaO3M8t4CCvZ6_DfA-lX8iEp-gZWe3Orfur0qJCIAdf1hF-6hTKKVwg20W43Ce68WAh67s8kF91FQ9E8c0r9q8G2b4KW1ytPGykYBFTk-b73cwWs6Nd0486PVpSdcTBjExfgjs9PaYLzeItadY58RKPtLok7qjcbmXcDddBtAHnwbcByXzNbssOVyK5si33z7_0q9fAGZnzunUJlXn5bYaoUNw3OUwM2iIzybTWLOHKusA3kARQqALi1CzGFe7XZOmgLH7jpEt6In6QJtpSAC2oLrXrXrd6aS7VoTkLBOmglfr0X5tJ0YMNp-waTHhHfMEkdKiUBBvNEHOl60UX5mM0OpMf_4_cpcCPjrxiHEwsV5Uj6OjNac8bRD7PO651QBxu6gSUGARy1WMQlKBOY6vISXR0x-LZt2KTJwAa58yas2fB75Iq-lfbc09_f3YVrNs_VpqTU3ML51i308oyT8Ii3K62CGI7ur5O1KDper2X6J4YKEN0T8Dh37KLNP1TKWroUk1L4yF0XPlhS7MALMoRjqqGiU8x4r8v4mCBHkphOd-IKJR7o-RoHFJViznd8wTADpiOdTrfQ-MLWm3GII_ywDPFnYShY4klVPfkoFQ1qNtF85DQREoFx-Tk4HCab-kDkRaU291okAEFiGHaC1tf7eUsmAbQE5kYC5RIc6oSHWLGRjc2Jb6mERu21P9YHDb8jY1Ua5JV4cbtGaLMpNbc8bNoKuIBcmWr8XovD_qHMA",
        "loc_index": 2
    }, /* 广告数据 */
    'className': 'h923cc28e4', /* 广告定位器 */
    'asyncHTML': '', /* 异步加载的广告字符串 */
    'isAsync': '', /* 是否为异步加载 */
    'needStats': true                       /* 是否需要点击统计 */
}]);</script>
<script>    _.Module.use('adsense/widget/tpl_14', [{
    'adData': {
        "id": "26727",
        "name": "第二帧第一图",
        "typeid": "GEN92",
        "pos_name": "CAROUSEL_2",
        "loc_code": "p0065",
        "client_type": "PC",
        "page_name": "INDEX",
        "app_type": "13",
        "tpl_name": "14",
        "locator": "",
        "load_type": "prepend",
        "first_screen": "1",
        "url_type": 1,
        "throw_type": "0",
        "url": "http://tieba.baidu.com/link?tbjump=lid%3D2121659560_26727_13___0%26url%3D8dcfc7WqT64tc6zMjFMw6qtxRE4gMvGmVJxeAKEfT79bOuzaYU44CZWn6wLG627IQwwuY7d8dI7Y6heOlDgE5YYnFXsxtmyb6tkWLqe68nnQEWaDOhvkmcwp-c8wUQRrTbs6dUdQtgNXMY3lcwD_kRw-ngFULnwIt-az9mw6D3oLdmFvAXqh2JlBGUg-eZotrvoIrcxLDTqy2zUxCLhskTwad2KKbYNrRxrcapPYoH7gEoStARpWVlwQXNd1BAuPmzFATj9zPdA0qaSh1Y6E-SQBhkGWDUOlCupOhI1PzB4CgKAgfyuamqAyjzflAUS3gNH6u8xb3aAzqB8HKo61QQzZaBcBbk1KpGud4Uqwu3gO4tJ4UddnPcJVWRekFcH_rBWzwQ1KURe3u4HLb1U7hs048E6TQ-U1TzQvn-ikH00AadifmuS_G_jhfhEtmF31d8vQSzyQqT6tJJai98LAU7zI2txL3e2CMcK8kN-x6KPDBMPnZjJhkT1f0YEBL8YOgo5sg8T8LunPp-o5uoqkHR1DhKP2gtY-4TUpQUKw6ihMqZO_MhNp613asXXWylWCYHLcFBbHG6r--q_cgbroVGMC8RklSoxlNwe1NLtaguDPMFn8ksiyR4pb6w04wjQTZmPayzPEv3js640Y5K_dghZPVlWH-ixAxrjCdfz_69DJKzqBWvBta_lcvzAf0oR4kEB06PI_pIGbVxAbyYGmnTTaeCcu3Pa7iGj-tooFkq2haDUIywIl8CZUEQTRxFqdmmOozbDRC3P6d0Yglc4RQjcIx7mX4vd_tyPCMSnBoRfEavAy8_NAsSpvW2Ut0aCdxxFNtW3k83T-XQa0EVqqR46EtQ",
        "ios_url": "",
        "apk_url": "",
        "apk_name": "",
        "first_name": "内容",
        "second_name": "内容",
        "goods_info": [{
            "loc_param": "1",
            "image_width": "225",
            "image_height": "180",
            "statsCommand": "adsenseCarouselAreaShow_1",
            "image_desc": "海峡西岸-鹭岛厦门",
            "image_url": "http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470799693564.jpg",
            "id": "46863",
            "video_info": [],
            "width": 0,
            "height": 0,
            "label_measure": 1
        }],
        "cpid": "13",
        "abtest": "",
        "price": 0,
        "plan_id": 1,
        "user_id": "37676788",
        "ext_info": "1_0_0_0_13_0_0_0_p0065_0_0_第二帧第一图_内容_内容_6318862924358068735_0_0_0_0_CPM_GD__1_0_N_eyJ1aWQiOjAsInR5cGVpZCI6IkdFTjkyIn0=_0",
        "search_id": 6318862924358068735,
        "imTimeSign": null,
        "ad_tags": [],
        "verify": "39e5f3c96ad4f00b682d3d7c3fa44518",
        "raw_adurl": "http://tieba.baidu.com/p/4644068822",
        "pb_log": {
            "click_url": "http://tieba.baidu.com/p/4644068822",
            "action_type": 2,
            "client_type": 1,
            "task": "tbda",
            "loc_param": "1",
            "page": 1,
            "location": "p0065"
        },
        "click_url_params": "lid%3D2121659560_26727_13___0%26url%3D8dcfc7WqT64tc6zMjFMw6qtxRE4gMvGmVJxeAKEfT79bOuzaYU44CZWn6wLG627IQwwuY7d8dI7Y6heOlDgE5YYnFXsxtmyb6tkWLqe68nnQEWaDOhvkmcwp-c8wUQRrTbs6dUdQtgNXMY3lcwD_kRw-ngFULnwIt-az9mw6D3oLdmFvAXqh2JlBGUg-eZotrvoIrcxLDTqy2zUxCLhskTwad2KKbYNrRxrcapPYoH7gEoStARpWVlwQXNd1BAuPmzFATj9zPdA0qaSh1Y6E-SQBhkGWDUOlCupOhI1PzB4CgKAgfyuamqAyjzflAUS3gNH6u8xb3aAzqB8HKo61QQzZaBcBbk1KpGud4Uqwu3gO4tJ4UddnPcJVWRekFcH_rBWzwQ1KURe3u4HLb1U7hs048E6TQ-U1TzQvn-ikH00AadifmuS_G_jhfhEtmF31d8vQSzyQqT6tJJai98LAU7zI2txL3e2CMcK8kN-x6KPDBMPnZjJhkT1f0YEBL8YOgo5sg8T8LunPp-o5uoqkHR1DhKP2gtY-4TUpQUKw6ihMqZO_MhNp613asXXWylWCYHLcFBbHG6r--q_cgbroVGMC8RklSoxlNwe1NLtaguDPMFn8ksiyR4pb6w04wjQTZmPayzPEv3js640Y5K_dghZPVlWH-ixAxrjCdfz_69DJKzqBWvBta_lcvzAf0oR4kEB06PI_pIGbVxAbyYGmnTTaeCcu3Pa7iGj-tooFkq2haDUIywIl8CZUEQTRxFqdmmOozbDRC3P6d0Yglc4RQjcIx7mX4vd_tyPCMSnBoRfEavAy8_NAsSpvW2Ut0aCdxxFNtW3k83T-XQa0EVqqR46EtQ",
        "loc_index": 2
    }, /* 广告数据 */
    'className': 'ca49a09e50', /* 广告定位器 */
    'asyncHTML': '', /* 异步加载的广告字符串 */
    'isAsync': '', /* 是否为异步加载 */
    'needStats': true                       /* 是否需要点击统计 */
}]);</script>
<script>    _.Module.use('adsense/widget/tpl_14', [{
    'adData': {
        "id": "26934",
        "name": "第二帧第二图",
        "typeid": "GEN93",
        "pos_name": "CAROUSEL_2",
        "loc_code": "p0065",
        "client_type": "PC",
        "page_name": "INDEX",
        "app_type": "13",
        "tpl_name": "14",
        "locator": "",
        "load_type": "prepend",
        "first_screen": "1",
        "url_type": 1,
        "throw_type": "0",
        "url": "http://tieba.baidu.com/link?tbjump=lid%3D2121659560_26934_13___0%26url%3Df66dM7OPa3rdVLh_nISsAnrE_ohKqZeuJPdAWmbLtKu5KNVJ0T2t0ILx87ZQ8AioeKHUXTrBp_9SRTHnh6BOKfjL_FqN4sx7KHagwXDovELNncT43XXEmD2KRqR9e-yTv9l4zyBia5rnH32OK-UhAodpbcii_2Ahgmbxd8mg4j5xtv1b0qH_extmMZ4VL85wS5GhJqZ4MC9OCkE1MAcjDqAvf4PWuzEUFICrg37GU5RUCG2f-gB6NfE2bhZWtR21FOQTUTdeXOkv4f2aV1sjbp5-ynLa0006j1hCrQedSvwVnE2Xawq8pMN5-dhQMx66t2BYrOpDs9v3d03-cxdyaa6-H7BKXw9cF4fUY-XVXGvaqaSwvp6421Gt-VBqCEHaiGVYsVKHE5OHjRNz5RpQhK0cvIgO7b-IEM-c5zFV8h1_R0X7Hgafw0DTELmgExCUY6YuYEh1IKwORDu-QaRtWZ2y_2ZKrjpeIRSN8lpJkPZ4WEKQKsUHEoNhfJbgw5gMyohsl5vzwkQhN9Wmsr92sDN3o6ASE7IRErenhn6RAsi2KYVwhsODRUyvg_SJOslkjk72KsLjjiIC6_on1NbGosFfpjQx2kf81Z62Mv5iiHu3AuJv4ip5LZucxRfm2AALZFOrins5JQlS79PvxGaqaLv_xKvKfRWu-LPBTkR24Nz-ZGtBSKsUERWdhxqNGpalX-Ox-_ZOx0Dvz3gUh11ZiIiZEKF4hYsqjslxVkfIN8PvFZ30BsUDVT08HIMomzV0K6U-rq6drNPqY0MrTPH7GlH19UZ_iryM0xiTKWM4I39ZFHoivSbtF1HC56ej9HKkhAf7S0xZX6kHSEUxdc0KZx5vuQ",
        "ios_url": "",
        "apk_url": "",
        "apk_name": "",
        "first_name": "内容",
        "second_name": "内容",
        "goods_info": [{
            "loc_param": "2",
            "image_width": "225",
            "image_height": "180",
            "statsCommand": "adsenseCarouselAreaShow_1",
            "image_url": "http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470987436352.jpg",
            "image_desc": "说说养护那点小事~",
            "id": "47073",
            "video_info": [],
            "width": 0,
            "height": 0,
            "label_measure": 1
        }],
        "cpid": "13",
        "abtest": "",
        "price": 0,
        "plan_id": 1,
        "user_id": "37676788",
        "ext_info": "1_0_0_0_13_0_0_0_p0065_0_0_第二帧第二图_内容_内容_6318862924358068735_0_0_0_0_CPM_GD__1_0_N_eyJ1aWQiOjAsInR5cGVpZCI6IkdFTjkzIn0=_0",
        "search_id": 6318862924358068735,
        "imTimeSign": null,
        "ad_tags": [],
        "verify": "a6b2ec4d357bacb93b525ead19d41a90",
        "raw_adurl": "http://tieba.baidu.com/p/4630853292",
        "pb_log": {
            "click_url": "http://tieba.baidu.com/p/4630853292",
            "action_type": 2,
            "client_type": 1,
            "task": "tbda",
            "loc_param": "2",
            "page": 1,
            "location": "p0065"
        },
        "click_url_params": "lid%3D2121659560_26934_13___0%26url%3Df66dM7OPa3rdVLh_nISsAnrE_ohKqZeuJPdAWmbLtKu5KNVJ0T2t0ILx87ZQ8AioeKHUXTrBp_9SRTHnh6BOKfjL_FqN4sx7KHagwXDovELNncT43XXEmD2KRqR9e-yTv9l4zyBia5rnH32OK-UhAodpbcii_2Ahgmbxd8mg4j5xtv1b0qH_extmMZ4VL85wS5GhJqZ4MC9OCkE1MAcjDqAvf4PWuzEUFICrg37GU5RUCG2f-gB6NfE2bhZWtR21FOQTUTdeXOkv4f2aV1sjbp5-ynLa0006j1hCrQedSvwVnE2Xawq8pMN5-dhQMx66t2BYrOpDs9v3d03-cxdyaa6-H7BKXw9cF4fUY-XVXGvaqaSwvp6421Gt-VBqCEHaiGVYsVKHE5OHjRNz5RpQhK0cvIgO7b-IEM-c5zFV8h1_R0X7Hgafw0DTELmgExCUY6YuYEh1IKwORDu-QaRtWZ2y_2ZKrjpeIRSN8lpJkPZ4WEKQKsUHEoNhfJbgw5gMyohsl5vzwkQhN9Wmsr92sDN3o6ASE7IRErenhn6RAsi2KYVwhsODRUyvg_SJOslkjk72KsLjjiIC6_on1NbGosFfpjQx2kf81Z62Mv5iiHu3AuJv4ip5LZucxRfm2AALZFOrins5JQlS79PvxGaqaLv_xKvKfRWu-LPBTkR24Nz-ZGtBSKsUERWdhxqNGpalX-Ox-_ZOx0Dvz3gUh11ZiIiZEKF4hYsqjslxVkfIN8PvFZ30BsUDVT08HIMomzV0K6U-rq6drNPqY0MrTPH7GlH19UZ_iryM0xiTKWM4I39ZFHoivSbtF1HC56ej9HKkhAf7S0xZX6kHSEUxdc0KZx5vuQ",
        "loc_index": 3
    }, /* 广告数据 */
    'className': 'v4a381ec96', /* 广告定位器 */
    'asyncHTML': '', /* 异步加载的广告字符串 */
    'isAsync': '', /* 是否为异步加载 */
    'needStats': true                       /* 是否需要点击统计 */
}]);</script>
<script>    _.Module.use('adsense/widget/tpl_14', [{
    'adData': {
        "id": "26728",
        "name": "第二帧第三图",
        "typeid": "GEN94",
        "pos_name": "CAROUSEL_2",
        "loc_code": "p0065",
        "client_type": "PC",
        "page_name": "INDEX",
        "app_type": "13",
        "tpl_name": "14",
        "locator": "",
        "load_type": "prepend",
        "first_screen": "1",
        "url_type": 1,
        "throw_type": "0",
        "url": "http://tieba.baidu.com/link?tbjump=lid%3D2121659560_26728_13___0%26url%3Def454fh_fMw14cC1TJ-ni6iJL6JMJuxttRL7UEGyOiHlyxOxGV2XmhVKNkNmlkZ1aihkmmWtqIx63ZCWU8W13HcHvPgXlP7U14AYExVvd3718Li9SF3rjhcaolraJ91kc6YcLBD8vkJhEgQBRF1oMDaWPrjozmUlbxSdn7DoXMdC84xg8gtnrezpgaUKCnH9v8mXqGFOJ7wB669RkPWElRTPHN7-f85GZUoUuOwu-Vhus2vnjoZ7J2P6HqUHgrkLfj1pJVrE-MOE17XKOnqmtq8XfOK0EO6Isp2Hq358PrAaTaJFVRirCyJvbSFYDEQm-xkDy76mh4cI_i6pWVqL0dq1Ena9B8AX31udF-U4ICJBANx8o_S4VRrAI1ukc4OugkmQKYLpZXP-cYewBh2oG-Y-jlGnnr09YwlcrAWWXBNszcXqroYdzupBmHH0Lv-f3zDaNqMFPGksYbEpUnezC6Jc4SkUuwQIcVSHSRDMlVN_bVwEGy4EEdhxVc5LNYz9TN814pe6O94LHmiV9AqkOXEtyGJDMs0zEJWJfe64yI7wnFDqpu8R58RtySvn39SmIWM8bVqq-KWgn1ZeURWDsX7TY2azjeqQwalo3tbGz61_akGpvnhzOl2rxWZx30ybJ-vFgfiKkVKsyefndTUdAYDOXIPyUmPVVKc5nvL8_Tj3oiwZdelS8XEAh8wotMOxpIsv9X7vuGvOsQ_1Ri_Y10imIoZYfH1Hm9ClR2r_ceWgqM2bxN852IhFEwbXB66uLAIkwBMaEx_sf0G2tK5IrvQkGCaE9cgJSxAx8DfHDVsZeRJ4rvYAQpAm_2JkHfgxSKjE3l4TD1HRbqvkSkMob2BT5Q",
        "ios_url": "",
        "apk_url": "",
        "apk_name": "",
        "first_name": "内容",
        "second_name": "内容",
        "goods_info": [{
            "loc_param": "3",
            "image_width": "225",
            "image_height": "180",
            "statsCommand": "adsenseCarouselAreaShow_1",
            "image_desc": "不想辜负自己最好的年华",
            "image_url": "http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470987478221.jpg",
            "id": "46864",
            "video_info": [],
            "width": 0,
            "height": 0,
            "label_measure": 1
        }],
        "cpid": "13",
        "abtest": "",
        "price": 0,
        "plan_id": 1,
        "user_id": "37676788",
        "ext_info": "1_0_0_0_13_0_0_0_p0065_0_0_第二帧第三图_内容_内容_6318862924358068735_0_0_0_0_CPM_GD__1_0_N_eyJ1aWQiOjAsInR5cGVpZCI6IkdFTjk0In0=_0",
        "search_id": 6318862924358068735,
        "imTimeSign": null,
        "ad_tags": [],
        "verify": "e47515856b4aca7662c04afe127b440c",
        "raw_adurl": "http://tieba.baidu.com/p/4608296296",
        "pb_log": {
            "click_url": "http://tieba.baidu.com/p/4608296296",
            "action_type": 2,
            "client_type": 1,
            "task": "tbda",
            "loc_param": "3",
            "page": 1,
            "location": "p0065"
        },
        "click_url_params": "lid%3D2121659560_26728_13___0%26url%3Def454fh_fMw14cC1TJ-ni6iJL6JMJuxttRL7UEGyOiHlyxOxGV2XmhVKNkNmlkZ1aihkmmWtqIx63ZCWU8W13HcHvPgXlP7U14AYExVvd3718Li9SF3rjhcaolraJ91kc6YcLBD8vkJhEgQBRF1oMDaWPrjozmUlbxSdn7DoXMdC84xg8gtnrezpgaUKCnH9v8mXqGFOJ7wB669RkPWElRTPHN7-f85GZUoUuOwu-Vhus2vnjoZ7J2P6HqUHgrkLfj1pJVrE-MOE17XKOnqmtq8XfOK0EO6Isp2Hq358PrAaTaJFVRirCyJvbSFYDEQm-xkDy76mh4cI_i6pWVqL0dq1Ena9B8AX31udF-U4ICJBANx8o_S4VRrAI1ukc4OugkmQKYLpZXP-cYewBh2oG-Y-jlGnnr09YwlcrAWWXBNszcXqroYdzupBmHH0Lv-f3zDaNqMFPGksYbEpUnezC6Jc4SkUuwQIcVSHSRDMlVN_bVwEGy4EEdhxVc5LNYz9TN814pe6O94LHmiV9AqkOXEtyGJDMs0zEJWJfe64yI7wnFDqpu8R58RtySvn39SmIWM8bVqq-KWgn1ZeURWDsX7TY2azjeqQwalo3tbGz61_akGpvnhzOl2rxWZx30ybJ-vFgfiKkVKsyefndTUdAYDOXIPyUmPVVKc5nvL8_Tj3oiwZdelS8XEAh8wotMOxpIsv9X7vuGvOsQ_1Ri_Y10imIoZYfH1Hm9ClR2r_ceWgqM2bxN852IhFEwbXB66uLAIkwBMaEx_sf0G2tK5IrvQkGCaE9cgJSxAx8DfHDVsZeRJ4rvYAQpAm_2JkHfgxSKjE3l4TD1HRbqvkSkMob2BT5Q",
        "loc_index": 1
    }, /* 广告数据 */
    'className': 'z4ee4a81a6', /* 广告定位器 */
    'asyncHTML': '', /* 异步加载的广告字符串 */
    'isAsync': '', /* 是否为异步加载 */
    'needStats': true                       /* 是否需要点击统计 */
}]);</script>
<script>    _.Module.use('adsense/widget/tpl_14', [{
    'adData': {
        "id": "23709",
        "name": "第三帧",
        "typeid": "GEN95",
        "pos_name": "CAROUSEL_3",
        "loc_code": "p0066",
        "client_type": "PC",
        "page_name": "INDEX",
        "app_type": "13",
        "tpl_name": "14",
        "locator": "",
        "load_type": "prepend",
        "first_screen": "1",
        "url_type": 1,
        "throw_type": "0",
        "url": "http://tieba.baidu.com/link?tbjump=lid%3D2121659560_23709_13___0%26url%3Dac5edOJHy_J42uiBHzWWMtdyKJLG5VS3r6FeH6qzzM_HkgOHUI10IPR9jBa99KbekqXHMoTmNrQ_OZYS-ggVHVzdNauP28TjdXgxtgmTyRHN1r5k5Z60eP5YTEbhh1GLrkq9GMIh6amBsvY9ESHosiKPt4Yi2xs0SL3iCopeZNfenTuEe_ST7NPn7cSrx5oigzsfXK3Qw05DPN9YNHGNRYfS2ZvRxVxvEivFODMbFU8TMx1_71vjeOTW-g1uiqleKeLbxrII6ysp0td-6oLpNkt34oeK8oGb-wjYVV5LNoz3I4qQGc_uoBjQ0PzIBJJ7FawAmsqDRLoeo1e2GxKZuPd5nlz4jDCIVoB03L3mcwXkdFFyA6WTpC4XMQYTziLDa_20uLDfsQHZQ4Vu-NJp54T2ilKVE5Vw-p0LEYMWNeIPQ2d0TjlLuE23iiReTbDAfH0Zf2dDJbP-T_D7IZOIOpF9puqQxkUpCR8xR9j9UgUzIQS9BIVVIP0w9VSi-KKkW1J1BZV5GJTD_lLSnpimET-b84egbzeuo9K2m1-Wk5aRPI305dNEfGLPEmFvg9RaR2iWRPYRbdtVC4U1ivCQ6uen8ZnoSnhHFIvxGLBND2BzH8hEWM9FCn5X7K5OtlzrGSxQtypYYmh7I8eEzO9Oih3OwcMjxy_7-eT0nIxr7Gxm0CHJk1KEfGD1Ua4TyVYOc08Ctr9_b4OPWBUwtaNzI9J9rQIOzxnr4LwH01pFc0p-4kCCjPdWjZ92nwGuBUSIvyi6pFSKpNeTQMJmIoApBxBSOHSU98Moiv1SUeV39w",
        "ios_url": "",
        "apk_url": "",
        "apk_name": "",
        "first_name": "内容",
        "second_name": "内容",
        "goods_info": [{
            "loc_param": "1",
            "image_width": "690",
            "image_height": "180",
            "descCustomCss": "display:none;",
            "statsCommand": "adsenseCarouselAreaShow_2",
            "image_url": "http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470987537837.jpg",
            "id": "43789",
            "video_info": [],
            "width": 0,
            "height": 0,
            "label_measure": 1
        }],
        "cpid": "13",
        "abtest": "",
        "price": 0,
        "plan_id": 1,
        "user_id": "37676788",
        "ext_info": "1_0_0_0_13_0_0_0_p0066_0_0_第三帧_内容_内容_6318862924358068735_0_0_0_0_CPM_GD__1_0_N_eyJ1aWQiOjAsInR5cGVpZCI6IkdFTjk1In0=_0",
        "search_id": 6318862924358068735,
        "imTimeSign": null,
        "ad_tags": [],
        "verify": "626a40cfed50865c7bf267f90cb47ba0",
        "raw_adurl": "http://tieba.baidu.com/p/4644185776",
        "pb_log": {
            "click_url": "http://tieba.baidu.com/p/4644185776",
            "action_type": 2,
            "client_type": 1,
            "task": "tbda",
            "loc_param": "1",
            "page": 1,
            "location": "p0066"
        },
        "click_url_params": "lid%3D2121659560_23709_13___0%26url%3Dac5edOJHy_J42uiBHzWWMtdyKJLG5VS3r6FeH6qzzM_HkgOHUI10IPR9jBa99KbekqXHMoTmNrQ_OZYS-ggVHVzdNauP28TjdXgxtgmTyRHN1r5k5Z60eP5YTEbhh1GLrkq9GMIh6amBsvY9ESHosiKPt4Yi2xs0SL3iCopeZNfenTuEe_ST7NPn7cSrx5oigzsfXK3Qw05DPN9YNHGNRYfS2ZvRxVxvEivFODMbFU8TMx1_71vjeOTW-g1uiqleKeLbxrII6ysp0td-6oLpNkt34oeK8oGb-wjYVV5LNoz3I4qQGc_uoBjQ0PzIBJJ7FawAmsqDRLoeo1e2GxKZuPd5nlz4jDCIVoB03L3mcwXkdFFyA6WTpC4XMQYTziLDa_20uLDfsQHZQ4Vu-NJp54T2ilKVE5Vw-p0LEYMWNeIPQ2d0TjlLuE23iiReTbDAfH0Zf2dDJbP-T_D7IZOIOpF9puqQxkUpCR8xR9j9UgUzIQS9BIVVIP0w9VSi-KKkW1J1BZV5GJTD_lLSnpimET-b84egbzeuo9K2m1-Wk5aRPI305dNEfGLPEmFvg9RaR2iWRPYRbdtVC4U1ivCQ6uen8ZnoSnhHFIvxGLBND2BzH8hEWM9FCn5X7K5OtlzrGSxQtypYYmh7I8eEzO9Oih3OwcMjxy_7-eT0nIxr7Gxm0CHJk1KEfGD1Ua4TyVYOc08Ctr9_b4OPWBUwtaNzI9J9rQIOzxnr4LwH01pFc0p-4kCCjPdWjZ92nwGuBUSIvyi6pFSKpNeTQMJmIoApBxBSOHSU98Moiv1SUeV39w",
        "loc_index": 1
    }, /* 广告数据 */
    'className': 'y274e6f510', /* 广告定位器 */
    'asyncHTML': '', /* 异步加载的广告字符串 */
    'isAsync': '', /* 是否为异步加载 */
    'needStats': true                       /* 是否需要点击统计 */
}]);</script>
<script>    _.Module.use('adsense/widget/tpl_14', [{
    'adData': {
        "id": "30254",
        "name": "Ala直播-首页第四帧-左",
        "typeid": "GEN80",
        "pos_name": "CAROUSEL_4",
        "loc_code": "p0067",
        "client_type": "PC",
        "page_name": "INDEX",
        "app_type": "1",
        "tpl_name": "14",
        "locator": "",
        "load_type": "prepend",
        "first_screen": "1",
        "url_type": 1,
        "throw_type": "0",
        "url": "http://tieba.baidu.com/link?tbjump=lid%3D2121659560_30254_4___0%26url%3D3f57c0ALIFAWqLNGQe7XGksTpk_k2NzuJMS3GXnljYAhmyCQ7UtTREAIpTmi0Smkf_KTUmsSiLgJ2ZWgCnX-nDgCtvS8as-W5YdPNRHMJsrD2YVjo36mjILjpsJuv64dwQNI4VlBiGt0H5H0tAEIgIjBhOIrOwo0GCl4h0xgt2W1f3xoOu2nW5Ln1gxUiXM1QNyVAlvWREr7QHhtkbBmOeP2Ev5NS6BmH_nT0yVWSZyWYpWWwaoSDA-LAhy1ZKf9wLTUc8d8qRifeBy_dbM6OQArBAXD9Rw5QIa0h6zBBvEYh7q0htdS2YXa4PGFBD9TgQr0gmLmjLW8ddpxfNREXVXZpTY5AI2Y-iPJ8ETMgg5weoi9s85wROp764KERfrdfLqm4LHfFRG6_d7GEb0AqbVTvmXiYolXd1GoSDSwr9yLreQYVNc7UnM6ADoIONPdN6Z_rIkv4oBq9rwrvZnPxO0tWuffYsOTM7aHJI3aHDS3ih5xoRyT5xOlsmSwI8_AZsqdvQ_cbXBik-5hOtpJWhEwtBIVRc5Bu6f8RfbvNxNvcXPOy0U6IXPg02ionX0tRys8-3XIxB7QEPCZmI28iCMwh_1nDV_Wdrm71qiObuWvK_t_7Pv04BBHJpT8XXwMzP7Tt0o2E2gfcQ5obBFubWK9fg1CdjjpXpjAGqDQyrjhlc_2FMgKSlCFEZPSBJ1YyL6yiaWULZVY-vXPTs1Qt7-UimWa3_Ngbv7EAAMdldBsozURYC8fiOchViCkwd7KMzSSgRs0cBgy90-ybS881OVRc8hUquUQ-8IlN4lq36myaoqiMsOO3F8qVQ5BOyYv0eFOjpQNIim3dzc12wxkEQtF6cHg6Ofls_19oT7mk0Gy_wSsQqUYz7l5EBHhbbFOQhiZ",
        "ios_url": "",
        "apk_url": "",
        "apk_name": "",
        "first_name": "游戏",
        "second_name": "游戏",
        "goods_info": [{
            "loc_param": "1",
            "image_width": "280",
            "image_height": "180",
            "statsCommand": "adsenseCarouselAreaShow_3",
            "image_url": "http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1470801919392.jpg",
            "image_desc": "直播1小时，补贴400元。",
            "id": "50542",
            "video_info": [],
            "width": 0,
            "height": 0,
            "label_measure": 1
        }],
        "cpid": "4",
        "abtest": "",
        "price": 0,
        "plan_id": 1,
        "user_id": "37676788",
        "ext_info": "1_0_0_0_4_0_0_0_p0067_0_0_Ala直播-首页第四帧-左_游戏_游戏_6318862924358068735_0_0_0_0_CPM_GD__1_0_N_eyJ1aWQiOjAsInR5cGVpZCI6IkdFTjgwIn0=_0",
        "search_id": 6318862924358068735,
        "imTimeSign": null,
        "ad_tags": [],
        "verify": "92eb07078717dcdfc328d38e9846a003",
        "raw_adurl": "http://tieba.baidu.com/p/4727061536",
        "pb_log": {
            "click_url": "http://tieba.baidu.com/p/4727061536",
            "action_type": 2,
            "client_type": 1,
            "task": "tbda",
            "loc_param": "1",
            "page": 1,
            "location": "p0067"
        },
        "click_url_params": "lid%3D2121659560_30254_4___0%26url%3D3f57c0ALIFAWqLNGQe7XGksTpk_k2NzuJMS3GXnljYAhmyCQ7UtTREAIpTmi0Smkf_KTUmsSiLgJ2ZWgCnX-nDgCtvS8as-W5YdPNRHMJsrD2YVjo36mjILjpsJuv64dwQNI4VlBiGt0H5H0tAEIgIjBhOIrOwo0GCl4h0xgt2W1f3xoOu2nW5Ln1gxUiXM1QNyVAlvWREr7QHhtkbBmOeP2Ev5NS6BmH_nT0yVWSZyWYpWWwaoSDA-LAhy1ZKf9wLTUc8d8qRifeBy_dbM6OQArBAXD9Rw5QIa0h6zBBvEYh7q0htdS2YXa4PGFBD9TgQr0gmLmjLW8ddpxfNREXVXZpTY5AI2Y-iPJ8ETMgg5weoi9s85wROp764KERfrdfLqm4LHfFRG6_d7GEb0AqbVTvmXiYolXd1GoSDSwr9yLreQYVNc7UnM6ADoIONPdN6Z_rIkv4oBq9rwrvZnPxO0tWuffYsOTM7aHJI3aHDS3ih5xoRyT5xOlsmSwI8_AZsqdvQ_cbXBik-5hOtpJWhEwtBIVRc5Bu6f8RfbvNxNvcXPOy0U6IXPg02ionX0tRys8-3XIxB7QEPCZmI28iCMwh_1nDV_Wdrm71qiObuWvK_t_7Pv04BBHJpT8XXwMzP7Tt0o2E2gfcQ5obBFubWK9fg1CdjjpXpjAGqDQyrjhlc_2FMgKSlCFEZPSBJ1YyL6yiaWULZVY-vXPTs1Qt7-UimWa3_Ngbv7EAAMdldBsozURYC8fiOchViCkwd7KMzSSgRs0cBgy90-ybS881OVRc8hUquUQ-8IlN4lq36myaoqiMsOO3F8qVQ5BOyYv0eFOjpQNIim3dzc12wxkEQtF6cHg6Ofls_19oT7mk0Gy_wSsQqUYz7l5EBHhbbFOQhiZ",
        "loc_index": 2
    }, /* 广告数据 */
    'className': 'nd161e1840', /* 广告定位器 */
    'asyncHTML': '', /* 异步加载的广告字符串 */
    'isAsync': '', /* 是否为异步加载 */
    'needStats': true                       /* 是否需要点击统计 */
}]);</script>
<script>    _.Module.use('adsense/widget/tpl_14', [{
    'adData': {
        "id": "24665",
        "name": "死神狂潮-首页第四帧-右",
        "typeid": "GEN81",
        "pos_name": "CAROUSEL_4",
        "loc_code": "p0067",
        "client_type": "PC",
        "page_name": "INDEX",
        "app_type": "1",
        "tpl_name": "14",
        "locator": "",
        "load_type": "prepend",
        "first_screen": "1",
        "url_type": 1,
        "throw_type": "0",
        "url": "http://tieba.baidu.com/link?tbjump=lid%3D2121659560_24665_4___0%26url%3Dac00Y-GH6BIjjkp1FxmT5stbuAUPOPKn8HJbHi0udn_YlijSjIT96rkXPF4d6xc3sk5vYI966bS8bJotDBAbWaSPVGhlq0knbHE26D3HbwNucJ_6vCwQj4YGzCq_zfJs4c_tx_jEqEunTMQpKEdb36rCHsz_SVY27VTogh_DAGRM3na8-wk734wmgOZWRlO9hmq3l4VZ_eghkuPp3M36kNzSIkcydx6J9Ad2ttwcp597S8W-ZmMufj7BRACHgPvD3b8x2jOAq6o4sBmsKvPzGlb-xi3dzC4YB2hKoTHFJZuoKSgOG5dS0mX7wIL39us1G9wusenz6l5OmippC4S7LNhObFpnZjFyh9MbgnvvCpeDeokfCp2fmWDIXK62xmDXgbvP3AoeClZh63rN6XNheTzoakvK4QjskzlFp1Iwzf81IGGZAc56_NG7k3ygNWCt42_2NMmLUjlstPpNz1ylHchXV6UU85-D5p0E6sNjJw97utIc3jpzR1m5mA4dN9rE7Iijt0jEWMZasbcNgAUH56AwxTYFZcxPnUccfpsRbpAwk2J3hw67J545FZRGx4mkH-2TkcL4n-IIQCsZ9ArPrGGxJ4nnTF0WX5UzAPKoc4aSIjVr081bw0am47lcfw2lSCm4RCnhv-kuGt8kIhKHdueYB9wcEx4p8f7tXcecmHUiFXQ-8xl3-HOJ1eveiMey9X8VzBbhuFl8G0cJ8_VqxhA7tUa9V1dNftgLN2f5sI6lXG6nSZd0JYxyP17SU8SeaM4HV6FT5t7s4uXLJADpmGlSDAN3nKnTzIfkqubGX8w0VJg1XnUExuF5eaUyORUt6xaJkfIyjfE5liO1MetdpNqZ3yKxw2MYn5rU2VsreXt44CfOlRcGpJuXmdwdsQhqFD0rJV2mViNGX1y5tDNglWoftitkXSs3CCc1W_K1mVr1mKPlKX1X-Fo08fPyS667JoyhFo4EzS5C1ZerAaFH9zVBOBHmNO5RmnOPBjbc5WgGDhM",
        "ios_url": "",
        "apk_url": "",
        "apk_name": "",
        "first_name": "游戏",
        "second_name": "游戏",
        "goods_info": [{
            "loc_param": "2",
            "image_width": "400",
            "image_height": "180",
            "statsCommand": "adsenseCarouselAreaShow_3",
            "image_url": "http://tb1.bdstatic.com/tb/cms/ngmis/adsense/file_1431652528522.jpg",
            "image_desc": "女神狂爱 献身推荐 你来不来？",
            "id": "44790",
            "video_info": [],
            "width": 0,
            "height": 0,
            "label_measure": 1
        }],
        "cpid": "4",
        "abtest": "",
        "price": 0,
        "plan_id": 1,
        "user_id": "37676788",
        "ext_info": "1_0_0_0_4_0_0_0_p0067_0_0_死神狂潮-首页第四帧-右_游戏_游戏_6318862924358068735_0_0_0_0_CPM_GD__1_0_N_eyJ1aWQiOjAsInR5cGVpZCI6IkdFTjgxIn0=_0",
        "search_id": 6318862924358068735,
        "imTimeSign": null,
        "ad_tags": [],
        "verify": "772606ea087f9d1f46bd8847bd7f40c5",
        "raw_adurl": "http://wanba.baidu.com/login_game_by_zone.xhtml?type=lastloginserver&amp;id=760&amp;pid=10400300760_878717",
        "pb_log": {
            "click_url": "http://wanba.baidu.com/login_game_by_zone.xhtml?type=lastloginserver&amp;id=760&amp;pid=10400300760_878717",
            "action_type": 2,
            "client_type": 1,
            "task": "tbda",
            "loc_param": "2",
            "page": 1,
            "location": "p0067"
        },
        "click_url_params": "lid%3D2121659560_24665_4___0%26url%3Dac00Y-GH6BIjjkp1FxmT5stbuAUPOPKn8HJbHi0udn_YlijSjIT96rkXPF4d6xc3sk5vYI966bS8bJotDBAbWaSPVGhlq0knbHE26D3HbwNucJ_6vCwQj4YGzCq_zfJs4c_tx_jEqEunTMQpKEdb36rCHsz_SVY27VTogh_DAGRM3na8-wk734wmgOZWRlO9hmq3l4VZ_eghkuPp3M36kNzSIkcydx6J9Ad2ttwcp597S8W-ZmMufj7BRACHgPvD3b8x2jOAq6o4sBmsKvPzGlb-xi3dzC4YB2hKoTHFJZuoKSgOG5dS0mX7wIL39us1G9wusenz6l5OmippC4S7LNhObFpnZjFyh9MbgnvvCpeDeokfCp2fmWDIXK62xmDXgbvP3AoeClZh63rN6XNheTzoakvK4QjskzlFp1Iwzf81IGGZAc56_NG7k3ygNWCt42_2NMmLUjlstPpNz1ylHchXV6UU85-D5p0E6sNjJw97utIc3jpzR1m5mA4dN9rE7Iijt0jEWMZasbcNgAUH56AwxTYFZcxPnUccfpsRbpAwk2J3hw67J545FZRGx4mkH-2TkcL4n-IIQCsZ9ArPrGGxJ4nnTF0WX5UzAPKoc4aSIjVr081bw0am47lcfw2lSCm4RCnhv-kuGt8kIhKHdueYB9wcEx4p8f7tXcecmHUiFXQ-8xl3-HOJ1eveiMey9X8VzBbhuFl8G0cJ8_VqxhA7tUa9V1dNftgLN2f5sI6lXG6nSZd0JYxyP17SU8SeaM4HV6FT5t7s4uXLJADpmGlSDAN3nKnTzIfkqubGX8w0VJg1XnUExuF5eaUyORUt6xaJkfIyjfE5liO1MetdpNqZ3yKxw2MYn5rU2VsreXt44CfOlRcGpJuXmdwdsQhqFD0rJV2mViNGX1y5tDNglWoftitkXSs3CCc1W_K1mVr1mKPlKX1X-Fo08fPyS667JoyhFo4EzS5C1ZerAaFH9zVBOBHmNO5RmnOPBjbc5WgGDhM",
        "loc_index": 1
    }, /* 广告数据 */
    'className': 'vff1fe3faa', /* 广告定位器 */
    'asyncHTML': '', /* 异步加载的广告字符串 */
    'isAsync': '', /* 是否为异步加载 */
    'needStats': true                       /* 是否需要点击统计 */
}]);</script>
<script>_.Module.use("spage/widget/CarouselAreaV3", [""]);</script>
<script>_.Module.use('spage/widget/interest_num', ["", "20561907"]);</script>
<script>    _.Module.use('adsense/widget/tpl_5', [{
    'adData': {
        "id": "11598",
        "name": "PC首页鸿媒体",
        "typeid": "GEN49",
        "pos_name": "SLIDER_BOTTOM",
        "loc_code": "p0022",
        "client_type": "PC",
        "page_name": "INDEX",
        "app_type": "16",
        "tpl_name": "5",
        "locator": ".middle-sec",
        "load_type": "append",
        "first_screen": "1",
        "url_type": 1,
        "throw_type": "0",
        "url": "http://tieba.baidu.com",
        "ios_url": "",
        "apk_url": "",
        "apk_name": "",
        "first_name": "网盟",
        "second_name": "电商",
        "goods_info": [{
            "iframe_url": "http://tieba.baidu.com/tb/zt/adsense/wangmeng_baichuan/?page=normal&amp;tpl=normal&amp;id=1017331",
            "iframe_height": "90",
            "iframe_width": "1000",
            "url_query": "{}",
            "custom_css": "margin-bottom:10px;",
            "custom_style": "1",
            "ad_id": "1017331",
            "id": "17498",
            "width": 0,
            "height": 0,
            "label_measure": 1
        }],
        "cpid": "16",
        "abtest": "",
        "price": 2,
        "plan_id": 1,
        "user_id": "37676788",
        "ext_info": "1_0_0_0_16_0_0_0_p0022_0_0_PC首页鸿媒体_网盟_电商_6318862924358068735_1_0_0_0_CPC_GD__1_0_G_eyJ1aWQiOjAsInR5cGVpZCI6IkdFTjQ5In0=_0",
        "search_id": 6318862924358068735,
        "imTimeSign": null,
        "ad_tags": [],
        "verify": "90a1810622c2effc916a8b75b7d833a9",
        "pb_log": {
            "click_url": "",
            "action_type": 2,
            "client_type": 1,
            "task": "tbda",
            "loc_param": 1,
            "page": 1,
            "location": "p0022"
        },
        "click_url_params": "",
        "loc_index": 1
    }, /* 广告数据 */
    'className': 'wdc11bf562', /* 广告定位器 */
    'asyncHTML': '', /* 异步加载的广告字符串 */
    'isAsync': '', /* 是否为异步加载 */
    'isIframe': true                        /* 是否为 iframe 广告 */
}]);</script>
<script>        _.Module.use('user/widget/myTieba', [{
    balvInfo: {
        "is_black": null,
        "is_block": null,
        "opgroup": null,
        "block_reason": null,
        "member_num": 1,
        "rank": null,
        "cur_score": null,
        "score_left": null,
        "is_guanzhu": null,
        "is_lvup": null,
        "level_id": null,
        "level_name": null,
        "rights": null,
        "like_forums_num": 0,
        "levelup_score": null
    }, style: "", isBySys: "", product: "index"
}], function (initiate) {
    initiate.init();
});</script>
<script>    _.Module.use('user/widget/icon_tip', {myIcons: []});</script>
<script>_.Module.use('spage/widget/forumDirectory', {
    "forums": [],
    "directory": {
        "entertainment": {
            "directory_group": [{
                "name": "娱乐明星",
                "type": 1,
                "id": 0,
                "second_class": [{"name": "港台东南亚明星", "id": 0, "type": 1}, {
                    "name": "内地明星",
                    "id": 0,
                    "type": 1
                }, {"name": "韩国明星", "id": 0, "type": 1}, {"name": "日本明星", "id": 0, "type": 1}, {
                    "name": "时尚人物",
                    "id": 0,
                    "type": 1
                }, {"name": "欧美明星", "id": 0, "type": 1}, {"name": "主持人", "id": 0, "type": 1}, {
                    "name": "其他娱乐明星",
                    "id": 0,
                    "type": 1
                }, {"name": "娱乐明星话题", "id": 0, "type": 1}, {"name": "导演", "id": 0, "type": 1}, {
                    "name": "戏曲曲艺明星",
                    "id": 0,
                    "type": 1
                }, {"name": "2012中国好声音", "id": 0, "type": 1}, {"name": "音乐制作人", "id": 0, "type": 1}, {
                    "name": "其他粉丝组织",
                    "id": 0,
                    "type": 1
                }, {"name": "明星官方吧", "id": 0, "type": 1}],
                "nick_name": "娱乐明星"
            }],
            "recommend_forum": ["中国好声音", "快乐男声", "李代沫", "exo", "陈乔恩", "姚贝娜", "鹿晗", "李宇春 ", "刘诗诗", "吴奇隆", "滨崎步", "yuripleskun", "张根锡", "林夕", "exo王道", "小S", "男声学院"],
            "recommend_img": {
                "comment": [],
                "src": "http://tieba.baidu.com/tb/cms/mingxing0729.png",
                "href": "http://tieba.baidu.com/tb/stars.html"
            }
        },
        "tvshows": {
            "directory_group": [{
                "name": "电视节目",
                "type": 1,
                "id": 0,
                "second_class": [{"name": "内地综艺", "id": 0, "type": 1}, {
                    "name": "台湾综艺",
                    "id": 0,
                    "type": 1
                }, {"name": "韩国综艺", "id": 0, "type": 1}, {"name": "时尚·生活服务", "id": 0, "type": 1}, {
                    "name": "体育运动·健身",
                    "id": 0,
                    "type": 1
                }, {"name": "财经·职场", "id": 0, "type": 1}, {"name": "新闻资讯", "id": 0, "type": 1}, {
                    "name": "电视台及频道",
                    "id": 0,
                    "type": 1
                }, {"name": "音乐·文艺", "id": 0, "type": 1}, {"name": "其他节目及话题", "id": 0, "type": 1}, {
                    "name": "科教记录·社会与法",
                    "id": 0,
                    "type": 1
                }, {"name": "少儿·教育", "id": 0, "type": 1}, {"name": "广播电台", "id": 0, "type": 1}],
                "nick_name": "爱综艺"
            }],
            "recommend_forum": ["快乐大本营", "我们15个", "大学生了没", "中国好男儿", "非诚勿扰", "天天向上", "我爱黑涩会", "康熙来了", "打渔晒网", "湖南卫视", "tvb", "江苏卫视", "浙江卫视", "流言终结者", "空中浩劫", "职来职往", "爸爸你去哪儿", "赤脚的朋友们", "两天一夜", "花样爷爷", "千里共良宵", "一战到底", "我们约会吧", "舌尖上的中国", "中国梦之声", "非常了得", "百变大咖秀"],
            "recommend_img": {"comment": [], "src": [], "href": []}
        },
        "teleplay": {
            "directory_group": [{
                "name": "电视剧",
                "type": 1,
                "id": 0,
                "second_class": [{"name": "韩国电视剧", "id": 0, "type": 1}, {
                    "name": "香港电视剧",
                    "id": 0,
                    "type": 1
                }, {"name": "美剧", "id": 0, "type": 1}, {"name": "日本电视剧", "id": 0, "type": 1}, {
                    "name": "内地电视剧",
                    "id": 0,
                    "type": 1
                }, {"name": "台湾电视剧", "id": 0, "type": 1}, {"name": "东南亚电视剧", "id": 0, "type": 1}, {
                    "name": "其他地区电视剧",
                    "id": 0,
                    "type": 1
                }, {"name": "电视剧角色", "id": 0, "type": 1}, {"name": "电视剧话题", "id": 0, "type": 1}],
                "nick_name": "追剧狂"
            }],
            "recommend_forum": ["最美的时光", "monstar", "韩版想你", "听见你的声音", "冲上云霄2", "步步惊情", "吸血鬼日记", "生活大爆炸", "行尸走肉", "邪恶力量", "破产姐妹", "2013日版恶作剧", "真假学园", "神探伽利略", "一吻定情", "世界奇妙物语", "爱情公寓", "终极一班3", "好心作怪", "霹雳", "两个爸爸", "恶作剧之吻", "我可能不会爱你", "一诺倾情", "神探夏洛克", "唐顿庄园", "远古入侵", "霍景良", "韩剧", "美剧", "泰剧", "日剧", "古装电视剧"],
            "recommend_img": {"comment": [], "src": [], "href": []}
        },
        "movie": {
            "directory_group": [{
                "name": "电影",
                "type": 1,
                "id": 0,
                "second_class": [{"name": "香港电影", "id": 0, "type": 1}, {
                    "name": "欧美电影",
                    "id": 0,
                    "type": 1
                }, {"name": "内地电影", "id": 0, "type": 1}, {"name": "韩国电影", "id": 0, "type": 1}, {
                    "name": "日本电影",
                    "id": 0,
                    "type": 1
                }, {"name": "台湾电影", "id": 0, "type": 1}, {"name": "电影话题", "id": 0, "type": 1}, {
                    "name": "东南亚电影",
                    "id": 0,
                    "type": 1
                }, {"name": "其他地区电影", "id": 0, "type": 1}],
                "nick_name": "看电影"
            }],
            "recommend_forum": ["电影票房", "恐怖片", "微电影", "影视同人", "大众电影", "奥斯卡", "科幻片", "香港电影", "经典电影", "图解电影", "小清新电影", "纪录片", "好莱坞", "欧美电影", "电影推荐", "悬疑片", "小时代电影", "不二神探", "中国合伙人", "天台爱情", "钢铁侠", "复仇者联盟", "速度与激情", "电锯惊魂", "比悲伤更悲伤的故事", "怪谈新耳袋", "咒怨", "穿越时空的少女", "那些年我们一起追的女孩", "yesorno", "再一次心跳", "暹罗之恋", "初恋这件小事", "红磨坊"],
            "recommend_img": {"comment": [], "src": [], "href": []}
        },
        "sports": {
            "directory_group": [{
                "name": "体育迷",
                "id": 275,
                "second_class": [{"name": "足球", "id": "276", "type": 0}, {
                    "name": "篮球",
                    "id": "277",
                    "type": 0
                }, {"name": "NBA", "id": "278", "type": 0}, {"name": "CBA", "id": "279", "type": 0}, {
                    "name": "乒乓球",
                    "id": "280",
                    "type": 0
                }, {"name": "网球", "id": "281", "type": 0}, {"name": "舞蹈", "id": "283", "type": 0}, {
                    "name": "健身",
                    "id": "284",
                    "type": 0
                }, {"name": "羽毛球", "id": "286", "type": 0}, {"name": "F1", "id": "421", "type": 0}],
                "type": 0,
                "nick_name": "体育"
            }],
            "recommend_forum": ["世界杯", "阿根廷", "巴西队", "西班牙足球", "荷兰足球", "英格兰", "意大利国家队", "葡萄牙", "希腊队", "英格兰足球", "法国队", "墨西哥足球", "波斯尼亚和黑塞哥维那", "德国队", "克罗地亚", "韩国足球", "日本足球", "洪都拉斯足球", "乌拉圭足球", "瑞士队", "澳大利亚足球", "俄罗斯足球", "比利时队", "哥伦比亚足球", "美国足球", "加纳足球", "智利足球", "伊朗足球", "尼日利亚足球", "喀麦隆足球", "阿尔及利亚足球", "哥斯达黎加足球", "巴西世界杯吧"],
            "recommend_img": {"comment": [], "src": [], "href": []}
        },
        "literature": {
            "directory_group": [{
                "name": "小说",
                "id": 161,
                "second_class": [{"name": "奇幻", "id": "403", "type": 0}, {
                    "name": "言情",
                    "id": "177",
                    "type": 0
                }, {"name": "灵异", "id": "404", "type": 0}, {"name": "穿越", "id": "162", "type": 0}, {
                    "name": "连载",
                    "id": "169",
                    "type": 0
                }, {"name": "修真", "id": "412", "type": 0}, {"name": "历史", "id": "121", "type": 0}, {
                    "name": "架空文",
                    "id": "409",
                    "type": 0
                }, {"name": "小说推荐", "id": "413", "type": 0}, {"name": "科幻", "id": "170", "type": 0}, {
                    "name": "书评",
                    "id": "173",
                    "type": 0
                }, {"name": "游戏改编", "id": "406", "type": 0}, {"name": "重生文", "id": "407", "type": 0}, {
                    "name": "后宫",
                    "id": "167",
                    "type": 0
                }, {"name": "清宫", "id": "171", "type": 0}, {"name": "YY文", "id": "408", "type": 0}, {
                    "name": "军事文",
                    "id": "410",
                    "type": 0
                }, {"name": "仙侠", "id": "411", "type": 0}, {"name": "宫斗", "id": "165", "type": 0}, {
                    "name": "小说人物",
                    "id": "175",
                    "type": 0
                }, {"name": "武侠", "id": "405", "type": 0}],
                "type": 0,
                "nick_name": "小说"
            }],
            "recommend_forum": ["盗墓笔记", "我们是兄弟", "步步惊心", "鬼吹灯", "醉枕江山", "三体", "悍戚", "宰执天下", "明末边军一小兵", "胜者为王小说", "人生若只如初见", "子不语", "华胥引", "最终进化", "张起灵", "陆雪琪", "花千骨", "吴邪", "解语花", "神雕侠侣", "笑傲江湖", "英雄志", "日月当空", "凤歌灵飞经", "火爆天王", "医道官途", "苗疆蛊事", "无限曙光", "恐慌沸腾", "狂蟒之灾", "唐砖", "穿越小说", "古代言情", "灵异怪谈"],
            "recommend_img": {"comment": [], "src": [], "href": []}
        },
        "livingexpert": {
            "directory_group": [{
                "name": "生活家",
                "id": 214,
                "second_class": [{"name": "小而美", "id": "244", "type": 0}, {
                    "name": "DIY",
                    "id": "72",
                    "type": 0
                }, {"name": "美食", "id": "380", "type": 0}, {"name": "摄影", "id": "82", "type": 0}, {
                    "name": "旅行",
                    "id": "92",
                    "type": 0
                }, {"name": "变美", "id": "520", "type": 0}, {"name": "留学移民", "id": "521", "type": 0}, {
                    "name": "文玩",
                    "id": "522",
                    "type": 0
                }, {"name": "冷门收藏", "id": "376", "type": 0}, {"name": "意境", "id": "95", "type": 0}, {
                    "name": "手工",
                    "id": "358",
                    "type": 0
                }, {"name": "甜品", "id": "378", "type": 0}, {"name": "古玩", "id": "202", "type": 0}, {
                    "name": "家居",
                    "id": "226",
                    "type": 0
                }, {"name": "奢侈品", "id": "93", "type": 0}, {"name": "多肉植物", "id": "357", "type": 0}, {
                    "name": "模型",
                    "id": "203",
                    "type": 0
                }],
                "type": 0,
                "nick_name": "生活家"
            }],
            "recommend_forum": ["多浆植物", "咖啡", "单反", "芭蕾", "烘焙", "美食", "蒸汽朋克", "手绘", "旅行", "死飞", "唯美意境", "隐居", "复古", "明信片", "手工", "装修日记", "变形金刚玩具", "折耳猫", "汽车模型", "玩具兵人", "奢侈品", "背包客", "泰迪", "滑板", "移民", "美国留学", "留学", "瘦腿", "美容", "韩国整容"],
            "recommend_img": {"comment": [], "src": [], "href": []}
        },
        "xianqu": {
            "directory_group": [{
                "name": "闲·趣",
                "id": 429,
                "second_class": [{"name": "萌宠", "id": "4", "type": 0}, {
                    "name": "萝莉",
                    "id": "6",
                    "type": 0
                }, {"name": "重口味", "id": "257", "type": 0}, {"name": "吐槽", "id": "152", "type": 0}, {
                    "name": "恐怖",
                    "id": "255",
                    "type": 0
                }, {"name": "星座", "id": "263", "type": 0}, {"name": "爆料", "id": "42", "type": 0}, {
                    "name": "喵星人",
                    "id": "5",
                    "type": 0
                }, {"name": "汪星人", "id": "9", "type": 0}, {"name": "童年", "id": "8", "type": 0}, {
                    "name": "内涵",
                    "id": "254",
                    "type": 0
                }, {"name": "正太", "id": "11", "type": 0}],
                "type": 0,
                "nick_name": "闲·趣"
            }],
            "recommend_forum": ["猫", "网络红人", "弱智", "娃娃脸", "处女座", "萌妹子", "帅哥", "鬼故事", "哈士奇", "甜素纯", "爆料", "扒皮", "仓鼠", "诡异", "lolita", "搞笑", "内涵图", "天蝎座", "重口味", "冷笑话", "绿帽子小同学", "恐怖图片", "可爱正太", "恶搞", "十二星座", "塔罗牌", "心理测试", "热门事件"],
            "recommend_img": {"comment": [], "src": [], "href": []}
        },
        "game": {
            "directory_group": [{
                "name": "游戏",
                "type": 1,
                "id": 0,
                "second_class": [{"name": "客户端网游", "id": 0, "type": 1}, {
                    "name": "桌游",
                    "id": 0,
                    "type": 1
                }, {"name": "游戏角色", "id": 0, "type": 1}, {"name": "网页版网游", "id": 0, "type": 1}, {
                    "name": "手机游戏",
                    "id": 0,
                    "type": 1
                }, {"name": "小游戏", "id": 0, "type": 1}, {"name": "单机游戏", "id": 0, "type": 1}, {
                    "name": "掌机游戏",
                    "id": 0,
                    "type": 1
                }, {"name": "电视游戏", "id": 0, "type": 1}, {"name": "其他游戏及话题", "id": 0, "type": 1}],
                "nick_name": "游戏"
            }],
            "recommend_forum": ["剑灵", "Minecraft", "我叫mtonline", "疯狂猜图", "倩女ol", "怪物猎人online", "nba2kol", "剑网三", "坦克世界", "扩散性ma国服", "手机游戏", "lol", "地下城与勇士", "英雄联盟", "dota", "穿越火线", "梦幻西游", "剑网3", "dota2", "qq飞车", "反恐精英OL", "龙之谷", "qq炫舞", "dnf红眼", "天翼决", "梦三国", "仙剑奇侠传", "冒险岛", "跑跑卡丁车", "古剑奇谭", "天龙网游", "斗仙", "口袋妖怪"],
            "recommend_img": {"comment": [], "src": [], "href": []}
        },
        "cartoon": {
            "directory_group": [{
                "name": "动漫宅",
                "id": 206,
                "second_class": [{"name": "日本动漫", "id": "312", "type": 0}, {
                    "name": "国产动漫",
                    "id": "313",
                    "type": 0
                }, {"name": "欧美动漫", "id": "314", "type": 0}, {"name": "搞笑漫画", "id": "319", "type": 0}, {
                    "name": "热血动漫",
                    "id": "323",
                    "type": 0
                }, {"name": "推理", "id": "83", "type": 0}, {"name": "声优", "id": "210", "type": 0}, {
                    "name": "COS",
                    "id": "212",
                    "type": 0
                }, {"name": "暴走漫画", "id": "316", "type": 0}, {"name": "耽美漫画", "id": "317", "type": 0}, {
                    "name": "少女漫画",
                    "id": "318",
                    "type": 0
                }, {"name": "科幻系", "id": "320", "type": 0}, {"name": "冒险", "id": "321", "type": 0}, {
                    "name": "青春恋爱",
                    "id": "322",
                    "type": 0
                }, {"name": "同人", "id": "417", "type": 0}, {"name": "手办", "id": "418", "type": 0}],
                "type": 0,
                "nick_name": "动漫宅"
            }],
            "recommend_forum": ["Free男子游泳部", "海贼王", "火影忍者", "进击的巨人", "动漫", "柯南", "秦时明月", "后宫动漫", "死神", "银魂", "妖精的尾巴", "暴走漫画", "那年那兔那些事儿", "宫崎骏", "家庭教师", "黑子的篮球", "Cosplay", "动漫歌曲", "言叶之庭", "十万个冷笑话", "夏目友人帐", "高达模型", "同人", "手办"],
            "recommend_img": {"comment": [], "src": [], "href": []}
        },
        "academy": {
            "directory_group": [{
                "name": "高等院校",
                "type": 1,
                "id": 0,
                "second_class": [{"name": "北京院校", "id": 0, "type": 1}, {
                    "name": "山东院校",
                    "id": 0,
                    "type": 1
                }, {"name": "江苏院校", "id": 0, "type": 1}, {"name": "四川院校", "id": 0, "type": 1}, {
                    "name": "湖北院校",
                    "id": 0,
                    "type": 1
                }, {"name": "河北院校", "id": 0, "type": 1}, {"name": "安徽院校", "id": 0, "type": 1}, {
                    "name": "陕西院校",
                    "id": 0,
                    "type": 1
                }, {"name": "浙江院校", "id": 0, "type": 1}, {"name": "辽宁院校", "id": 0, "type": 1}, {
                    "name": "湖南院校",
                    "id": 0,
                    "type": 1
                }, {"name": "福建院校", "id": 0, "type": 1}, {"name": "江西院校", "id": 0, "type": 1}, {
                    "name": "重庆院校",
                    "id": 0,
                    "type": 1
                }, {"name": "广东院校", "id": 0, "type": 1}, {"name": "河南院校", "id": 0, "type": 1}, {
                    "name": "山西院校",
                    "id": 0,
                    "type": 1
                }, {"name": "上海院校", "id": 0, "type": 1}, {"name": "黑龙江院校", "id": 0, "type": 1}, {
                    "name": "天津院校",
                    "id": 0,
                    "type": 1
                }, {"name": "吉林院校", "id": 0, "type": 1}, {"name": "广西院校", "id": 0, "type": 1}, {
                    "name": "云南院校",
                    "id": 0,
                    "type": 1
                }, {"name": "甘肃院校", "id": 0, "type": 1}, {"name": "内蒙古院校", "id": 0, "type": 1}, {
                    "name": "贵州院校",
                    "id": 0,
                    "type": 1
                }, {"name": "海南院校", "id": 0, "type": 1}, {"name": "新疆院校", "id": 0, "type": 1}, {
                    "name": "宁夏院校",
                    "id": 0,
                    "type": 1
                }, {"name": "港澳台院校", "id": 0, "type": 1}, {"name": "海外院校", "id": 0, "type": 1}, {
                    "name": "青海院校",
                    "id": 0,
                    "type": 1
                }, {"name": "西藏院校", "id": 0, "type": 1}, {"name": "学校话题", "id": 0, "type": 1}, {
                    "name": "校园青春",
                    "id": 0,
                    "type": 1
                }],
                "nick_name": "高校"
            }],
            "recommend_forum": ["毕业照", "毕业后", "初恋在校园", "绝版青春", "我的同桌是极品", "考试不挂科", "毕业不分手", "校园糗百", "校园怪谈", "我的青春要露脸", "宿舍女神", "最初的暗恋", "青春期荷尔蒙", "食堂食堂", "宿舍夜话", "骚动的青春", "校服诱惑", "大学同居的那些事", "学校的小树林", "奇葩舍友欢乐多", "毕业就结婚", "食堂抢饭的日子", "考前小抄", "最后一排的睡神", "我的室友是逗比", "大学我做过孩子的爹", "校园表白墙", "补考大王", "调教学弟的方法", "防火防盗防师兄", "隔壁班的女同学", "我的极品班主任", "图书馆里的邂逅", "大学留下的遗憾", "校外的路边摊", "笔尖上的青春", "操场上的基友们"],
            "recommend_img": {
                "comment": [],
                "src": "http://tieba.baidu.com/tb/cms/xiaoyuan0729.png",
                "href": "http://tieba.baidu.com/tb/xy.html"
            }
        },
        "district": {
            "directory_group": [{
                "name": "地区",
                "type": 1,
                "id": 0,
                "second_class": [{"name": "山东", "id": 0, "type": 1}, {"name": "河北", "id": 0, "type": 1}, {
                    "name": "河南",
                    "id": 0,
                    "type": 1
                }, {"name": "山西", "id": 0, "type": 1}, {"name": "江苏", "id": 0, "type": 1}, {
                    "name": "辽宁",
                    "id": 0,
                    "type": 1
                }, {"name": "四川", "id": 0, "type": 1}, {"name": "广东", "id": 0, "type": 1}, {
                    "name": "黑龙江",
                    "id": 0,
                    "type": 1
                }, {"name": "陕西", "id": 0, "type": 1}, {"name": "安徽", "id": 0, "type": 1}, {
                    "name": "浙江",
                    "id": 0,
                    "type": 1
                }, {"name": "江西", "id": 0, "type": 1}, {"name": "吉林", "id": 0, "type": 1}, {
                    "name": "内蒙古",
                    "id": 0,
                    "type": 1
                }, {"name": "湖北", "id": 0, "type": 1}, {"name": "福建", "id": 0, "type": 1}, {
                    "name": "甘肃",
                    "id": 0,
                    "type": 1
                }, {"name": "海外", "id": 0, "type": 1}, {"name": "湖南", "id": 0, "type": 1}, {
                    "name": "贵州",
                    "id": 0,
                    "type": 1
                }, {"name": "北京", "id": 0, "type": 1}, {"name": "云南", "id": 0, "type": 1}, {
                    "name": "广西",
                    "id": 0,
                    "type": 1
                }, {"name": "天津", "id": 0, "type": 1}, {"name": "重庆", "id": 0, "type": 1}, {
                    "name": "上海",
                    "id": 0,
                    "type": 1
                }, {"name": "宁夏", "id": 0, "type": 1}, {"name": "新疆", "id": 0, "type": 1}, {
                    "name": "青海",
                    "id": 0,
                    "type": 1
                }, {"name": "海南", "id": 0, "type": 1}, {"name": "港澳台", "id": 0, "type": 1}, {
                    "name": "西藏",
                    "id": 0,
                    "type": 1
                }, {"name": "其他地区及话题", "id": 0, "type": 1}],
                "nick_name": "地区"
            }],
            "recommend_forum": ["济南", "石家庄", "郑州", "南京", "太原", "沈阳市", "成都", "哈尔滨", "广州", "合肥", "杭州", "吉林", "西安", "武汉", "福州", "呼和浩特", "南昌", "长沙", "北京", "兰州", "贵阳", "南宁", "昆明", "天津", "重庆", "上海", "山东", "河北", "河南", "江苏", "山西", "辽宁", "四川", "黑龙江", "广东", "安徽", "浙江", "吉林", "陕西", "湖北", "福建", "内蒙古", "江西", "湖南", "北京", "甘肃", "贵州", "广西", "云南", "天津", "重庆", "上海"],
            "recommend_img": {"comment": [], "src": [], "href": []}
        },
        "humanity": {
            "directory_group": [{
                "name": "人文自然",
                "type": 1,
                "id": 0,
                "second_class": [{"name": "艺术", "id": 0, "type": 1}, {"name": "军事", "id": 0, "type": 1}, {
                    "name": "宗教",
                    "id": 0,
                    "type": 1
                }, {"name": "历史", "id": 0, "type": 1}, {"name": "自然", "id": 0, "type": 1}, {
                    "name": "鉴赏收藏",
                    "id": 0,
                    "type": 1
                }, {"name": "民族文化", "id": 0, "type": 1}, {"name": "语言文化", "id": 0, "type": 1}, {
                    "name": "动植物",
                    "id": 0,
                    "type": 1
                }, {"name": "姓氏文化", "id": 0, "type": 1}, {"name": "社会科学话题", "id": 0, "type": 1}, {
                    "name": "其他人文话题",
                    "id": 0,
                    "type": 1
                }, {"name": "其他自然话题", "id": 0, "type": 1}],
                "nick_name": "人文自然"
            }],
            "recommend_forum": ["心理学", "哲学", "舞蹈", "汽车手绘", "野史", "植物", "清明梦", "蜘蛛", "京剧", "花", "狐狸", "历史", "中国历史", "故明", "哲学辩论", "心理", "语文", "藏獒", "龙猫", "未确认生物", "外星人", "人与自然", "超自然俱乐部", "神爱之家", "绘画圣地"],
            "recommend_img": {"comment": [], "src": [], "href": []}
        }
    }
});</script>
<script>_.Module.use("spage/widget/ForumRcmdV2");</script>
<script>    _.Module.use('liveshow/widget/spageLiveshowSlide', [{gameStaticPic: 'http:\/\/i2.piimg.com\/567571\/eb3511f8c093d1af.jpg'}], function () {
});</script>
<script>_.Module.use('common/component/SlideShow', {
    target: "#sp_plat_act_carousel",
    activeClass: "turn_icon_cur",
    interval: 5000,
    auto: true,
    nav: "#sp_plat_act_carousel_dot",
    next: "#sp_plat_act_carousel_next",
    prev: "#sp_plat_act_carousel_prev",
    delayLoadPic: true,
    effect: "fade"
});
$('#plat_act_wrapper').on('click', '.platact_imglink, .platact_square_link, .platact_total, .platact_look_more', function () {
    $.stats.track('贴吧首页', '活动大厅', 'spage', 'click');
});</script>
<script>_.Module.use("spage/widget/TagNav", {"user_tags": [], "all_tags": null});</script>
<script>_.Module.use("spage/widget/Affairs", {"last_tid": 4621348301, "user_tags": [], "is_personal": ""});</script>
<script>    _.Module.use('common/widget/Voice', {canPlay: '1', api: '', useMd5: ''});</script>
<script>        _.Module.use("spage/widget/TopicRank");    </script>
<script>    _.Module.use('ihome/widget/UserVisitCard', {
    'uname': '',
    'is_login': 0,
    'tbs': 'd2f55d3c039780641471224921'
});</script>
<script>_.Module.use('spage/widget/member_rank');</script>
<script>        _.Module.use("spage/widget/AsideV2", [null]);</script>
<script>_.Module.use("spage/widget/aside_platform", [null]);</script>
<script type="text/javascript">_.Module.use("spage/widget/Stats", []);</script>
<script>    _.Module.use('tbmall/widget/memberUpgradeTip', {}, function () {
});</script>
<script>    _.Module.use('adsense/widget/data_handler_async', [], function (instance) {
    instance.addData({'forum_vdir': null});
});</script>
<script>    _.Module.use('creativeplatform/widget/normalApp', [[]]);</script>
<script>PageData.lcs = {};
PageData.lcs.sbduss = '';</script>
<script></script>
<script>_.Module.use("common/widget/Userbar", [PageData.user, PageData.product]);</script>
<script>        _.Module.use('common/widget/AdStats', [{}]);    </script>
<script>_.Module.use('spage/widget/tbskin_spage', ['0', '20130803']);</script>
<script type="text/javascript">void function (e, t, n, a, o, s) {
    function c(t) {
        e.attachEvent ? e.attachEvent("onload", t, !1) : e.addEventListener && e.addEventListener("load", t)
    }

    function r(e, n, a) {
        a = a || 15;
        var o = new Date;
        o.setTime((new Date).getTime() + 1e3 * a), t.cookie = e + "=" + escape(n) + ";path=/;expires=" + o.toGMTString()
    }

    function i(e) {
        var n = t.cookie.match(new RegExp("(^| )" + e + "=([^;]*)(;|$)"));
        return null != n ? unescape(n[2]) : null
    }

    function l() {
        var e = i("PMS_JT");
        if (e) {
            r("PMS_JT", "", -1);
            try {
                e = e.match(/{["']s["']:(\d+),["']r["']:["']([\s\S]+)["']}/), e = e && e[1] && e[2] ? {
                    s: parseInt(e[1]),
                    r: e[2]
                } : {}
            } catch (n) {
                e = {}
            }
            e.r && t.referrer.replace(/#.*/, "") != e.r || alog("speed.set", "wt", e.s)
        }
    }

    if (e.alogObjectConfig) {
        var p = e.alogObjectConfig.sample, d = e.alogObjectConfig.rand;
        if ("https:" === e.location.protocol) {
            if (a = "https://gss2.bdstatic.com/70cFsjip0QIZ8tyhnq" + a, !p || !d)return
        } else a = "http://img.baidu.com" + a;
        p && d && d > p || (c(function () {
            alog("speed.set", "lt", +new Date), o = t.createElement(n), o.async = !0, o.src = a + "?v=" + ~(new Date / 864e5), s = t.getElementsByTagName(n)[0], s.parentNode.insertBefore(o, s)
        }), l())
    }
}(window, document, "script", "/hunter/alog/dp.min.js"), $(window).on("load", function () {
    window.xssfw && xssfw.watch(function (e) {
        e && $.sendAjaxError({
            msg: $.tb.escapeHTML("xss---" + (e.code.replace(/\s/g, "|") || "")),
            locator: $.tb.escapeHTML(e.path.replace(/\s/g, "|") || "")
        })
    })
});</script>
<script type="text/javascript">!function (e) {
    function t(e) {
        if (0 != e.length) {
            var t = new Image(1, 1), o = "img_" + +new Date, a = [], n = e.split("&");
            a.push("ts=9mp&t=csp&sid=" + f + "&dv=5&page=" + encodeURIComponent(d.pageId) + "&p=" + encodeURIComponent(d.productId) + "&type=CROSS_SITE_RES");
            for (var r = 0; r < n.length; ++r)a.push("desc" + r + "=" + n[r]);
            v[o] = t, t.onload = t.onerror = function () {
                v[o] = t = t.onload = t.onerror = null, delete v[o]
            }, t.src = g + "/tb/pms/img/st.gif?" + a.join("&")
        }
    }

    function o(e) {
        return e = e.replace(/\s/g, "").replace(/\./g, "\\.").replace(/\*/g, ".*").replace(/\?/g, "."), "^" + e + "$"
    }

    function a() {
        for (var e = d["default-exclude"], t = 0; t < e.length; ++t) {
            var a = RegExp(o(e[t]), "i");
            l.push(a)
        }
        1 == d["exclude-host"] && l.push(RegExp(m, "i"))
    }

    function n() {
        for (var e = window.performance.getEntriesByType("resource"), o = 0; o < e.length; ++o) {
            var a = e[o].name;
            if (a && void 0 == s[a]) {
                var n = a.match(h);
                if (n) {
                    n = n[1], /[:@]/.test(n) && (n = n.split("@").pop().split(":")[0]);
                    for (var r = 0; r < l.length; ++r) {
                        var p = l[r];
                        if (p.test(n)) {
                            s[a] = 1;
                            break
                        }
                    }
                    a.indexOf(g) >= 0 && (s[a] = 1), void 0 == s[a] && (s[a] = 0)
                }
            }
        }
        var i = [], c = 0;
        for (var d in s)if (0 == s[d]) {
            var m = encodeURIComponent(d);
            c + m.length >= u && (c > 0 && t(i.join("&")), c = 0, i = []), c += m.length, i.push(m), s[d] = 1
        }
        i.length > 0 && t(i.join("&"))
    }

    function r() {
        var e = 48, t = 2, o = 1e4, a = 0, p = setInterval(function () {
            a++
        }, 16), i = 0, c = setInterval(function () {
            e > a ? i = 0 : ++i == t && (clearInterval(p), clearInterval(c), n(), setTimeout(r, o)), a = 0
        }, 1e3)
    }

    function p() {
        a(), window.performance && window.performance.getEntriesByType && (n(), r())
    }

    var i = {
        index: {pv: 65e6, pageId: "14_329"},
        frs: {pv: 13e7, pageId: "14_331"},
        pb: {pv: 3e8, pageId: "14_333"},
        ihome: {pv: 3e6, pageId: "14_321"},
        tbmall: {pv: 3e6, pageId: "14_322"},
        itieba3: {pv: 5e6, pageId: "14_323"},
        other: {pv: 3e5, pageId: "14_327"}
    }, c = i[PageData.product] ? PageData.product : "other", d = {
        sample: 1e5 / i[c].pv,
        "exclude-host": !0,
        "default-exclude": ["tb1.bdstatic.com", "tb2.bdstatic.com", "tb.himg.baidu.com", "m.tiebaimg.com", "imgsrc.baidu.com", "tb1.bdstatic.com"],
        productId: 14,
        pageId: i[c].pageId
    }, g = "http://static.tieba.baidu.com";
    "https:" == window.location.protocol && (g = "https://gsp0.baidu.com/5aAHeD3nKhI2p27j8IqW0jdnxx1xbK");
    var l = [], s = {}, u = 1200, m = location.hostname, v = {}, f = e.logId || (+new Date).toString(36) + Math.random().toString(36).substr(2, 3), h = /^(?:http?:\/\/)([^\/]+)/i;
    Math.random() <= d.sample && p()
}(window);</script>
</body>
</html>
