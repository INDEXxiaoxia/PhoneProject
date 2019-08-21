<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>iphone 7-回购网 - 手机回收网 | 二手手机交易 | 笔记本回收 | 平板回收</title>
    <meta name="keywords" content="iphone 7 iphone7 7 苹果7 苹果 7"/>
    <meta name="description" content="iphone 7 iphone7 7 苹果7 苹果 7"/>
    <meta name="baidu-site-verification" content="IpuQLFxZiC"/>
    <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1"/>
    <meta name="mobile-agent"
          content="format=html5;url=http://m.ihuigo.com/goods/show_price/00676fdb772fb0a63796fb07b4f134ef.html">
    <meta name="applicable-device" content="pc">
    <link rel="alternate" media="only screen and(max-width: 640px)"
          href="http://m.ihuigo.com/goods/show_price/00676fdb772fb0a63796fb07b4f134ef.html">
    <link href="http://www.qfedu.com/favicon.ico" type="image/x-icon" rel="Icon">
    <link href="/static/css/new_css/global.css" rel="stylesheet" type="text/css">
    <script src="/static/js/new_js/jquery-1.4.2.js" type="text/javascript"></script>
    <script src="/static/js/new_js/new_public.js" type="text/javascript"></script>
    <script type="text/javascript">
        function selectcity(url) {
            open_div_extends('切换地区', url, 'Loading_child');
        }
    </script>
    <link href="/static/css/new_css/sub.css" rel="stylesheet" type="text/css">
    <script src="/static/js/public.js" type="text/javascript"></script>
    <script src="/static/js/new_js/menu.js" type="text/javascript"></script>
    <script src="/static/js/new_js/new_goods.js" type="text/javascript"></script>
</head>
<body>
<link rel="stylesheet" type="text/css" href="/static/css/alert_zhe.css"/>
<script type="text/javascript" src="/static/js/alert_zhe.js"></script>
<!--头部-->
<div class="shortcut">
    <div class="page">
        <div class="shortcut-left">
            <ul>
                <li class="city"><span>当前：
        <span id="selectcity_new">
        </span>
        <a rel="nofollow" href="javascript:void(0);">[切换城市]</a></span></li>
            </ul>
        </div>
        <div class="shortcut-right">
            <%--  ========== 登录注册 ========== --%>
            <ul id='login_show'>
                <c:if test="${sessionScope.userInSession.uname!='我tmd不是给你退出登录了吗？'}">
                    <li><a href="#" style="color: #95a5ff">Hello！ ${sessionScope.userInSession.uname}</a></li>
                    <li><a href="/lr/l.o" rel="nofollow">退出登录</a></li>
                </c:if>
                <c:if test="${sessionScope.userInSession.uname=='我tmd不是给你退出登录了吗？'}">
                    <li><a href="/lr/l.v" rel="nofollow">登录</a></li>
                    <li><a href="/lr/r.v" rel="nofollow">注册</a></li>
                </c:if>


            </ul>
            <%--  ========== 登录注册 ========== --%>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="header">
    <div class="page">
        <h1 class="logo"><a href=""><img src="/static/images/new_images/logo.png" width="171" height="43"
                                         title="二手手机回收交易网"/></a></h1>

    </div>
</div>
<!--头部-->
<!--手机回收-->
<input type="hidden" id="sn" value="00676fdb772fb0a63796fb07b4f134ef"/>
<input type="hidden" id="sign" value="f237947533d00f1e7cd0c75f17e958ec"/>
<div class="recovery">
    <div class="page2">
        <div class="heat_l" style="width:276px;">
            <div class="heat_img"><img src="/static/images/goods/${thisPmodel.modelImg}" width="264" height="197"/>
            </div>
        </div>
        <div class="heat_new">
            <input type="hidden" name="typeid" id="typeid" value="1"/>
            <dl>
                <dt><span>${thisPmodel.modelName} | 请选择一种回购方式</span><a href="#" onClick="javascript :history.back(1);">重新评估</a>
                </dt>
                <dd class="clearfix heat_on" name="1">
                    <div class="heat_yellow"><img src="/static/images/new_jian.png" class="new_jian"/>
                        <div class="yellow_l"><a href="javascript:;" class="new_gou new_gou2"></a> <span
                                class="new_icon1">现金</span></div>
                        <div class="yellow_r"><span>全网最高</span>
                            <div id="pg_price" class="digits">
                                <i style="top: 0px">
                                    <em>${splitPrice[0]}</em>
                                </i>
                                <i style="top: 0px">
                                    <em>${splitPrice[1]}</em>
                                </i>
                                <i style="top: 0px">
                                    <em>${splitPrice[2]}</em>
                                </i>
                                <i style="top: 0px">
                                    <em>${splitPrice[3]}</em>
                                </i>
                            </div>
                            <span>元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;官方直收</span>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <%--//&&&&&&&&&&&*********…………下单………………………………………………&&&&&&&--%>
                    <script type="text/javascript" >
                        function toBuyThisView(uid,pmid,alltips,LastPrice) {
                            window.location.href="/buy/cartthis?uid="+uid+"&pmid="+pmid+"&alltips="+alltips+"&LastPrice="+LastPrice;
                        }
                    </script>

                    <input type="button" value="立即下单" class="heat_input"
                           onclick="toBuyThisView('${sessionScope.userInSession.uid}','${thisPmodel.modelId}','${AllSelectTips}','${LastPrice}')"/>
                    <%--======================================================================--%>

                    <form action="/order/01" method="post" id="order01">
                        <input type="hidden" name="uid" value="${sessionScope.userInSession.uid}">
                        <input type="hidden" name="modelId" value="${thisPmodel.modelId}">
                        <input type="hidden" name="lastPrice" value="${LastPrice}">
                        <input type="hidden" name="haveTips" value="${AllSelectTips}">
                        <input type="hidden" name="orderId" value="" id="delInput">
                    </form>
                    <a href="javascript:;" class="heat_hg" onclick="addModToOrderCar()">加入回购车</a></dd>
                <script type="text/javascript">
                    function addModToOrderCar() {
                        $("#order01").submit();
                    }
                </script>
            </dl>
            <div class="heat_xin" style="margin-top:0">每成交一笔将为贫困地区的孩子捐赠1元 &nbsp;</div>

        </div>
        <script>
            load_show_price_extends('ajax/load_show_price.html');
            /*==选择==*/
            $(".heat_new dd").click(function () {
                $("#typeid").val($(this).attr('name'));
                $(this).addClass("heat_on").siblings().removeClass("heat_on");
                $(this).find(".yellow_l a").addClass("new_gou2").siblings().removeClass("new_gou2");
            });

            $(".heat_arrow").click(function (event) {
                event.stopPropagation();
                $(this).toggleClass("arrow3")
                $(".heat_list").slideToggle(100)
            });
            $(".heat_new dd").bind("click", function () {
                var b = $(".heat_list").is(':hidden')
                if (!b) {
                    $(".heat_list").slideUp();
                    $(".heat_arrow").toggleClass("arrow3")
                }
                ;
            })
            /*==选择==*/
        </script>

        <div class="clear"></div>

    </div>

</div>

<script>
    function _nav(name, id, total, is) {
        for (var i = 1; i <= total; i++) {
            if (!is) {
                document.getElementById(name + i).className = '';
            }
            document.getElementById(name + "_list" + i).style.display = 'none';
        }
        if (!is) {
            document.getElementById(name + id).className = 'on';
        }
        document.getElementById(name + "_list" + id).style.display = 'block';
    }
</script>

<!--手机回收-->

<div class="content page2">

    <div class="side">

        <div class="bar1">
            <a class="on" id="nav_s1"
               onclick="_nav('nav_s',1,3);show_goods_chengnuo('https://www.baidu.com/');">回购承诺</a>
            <a id="nav_s2" onclick="_nav('nav_s',2,3);show_goods_review('https://www.baidu.com/');">交易评价(999+)</a><a
                id="nav_s3" onclick="_nav('nav_s',3,3);show_goods_zhijian('https://www.baidu.com/');">了解我们如何质检</a></div>

        <div class="list" id="nav_s_list1">
            <div class="qiehuan">
                <a class="on" id="nav_p1" onclick="_nav('nav_p',1,6)"><span class="itme1"><!--精准选项--></span></a>
                <a id="nav_p2" onclick="_nav('nav_p',2,6)"><span class="itme2"><!--全程透明检测--></span></a>
                <a id="nav_p3" onclick="_nav('nav_p',3,6)"><span class="itme3"><!--全国包邮--></span></a>
                <a id="nav_p4" onclick="_nav('nav_p',4,6)"><span class="itme4"><!--超时理赔--></span></a>
                <a id="nav_p5" onclick="_nav('nav_p',5,6)"><span class="itme5"><!--专业数据删除--></span></a>
                <a id="nav_p6" onclick="_nav('nav_p',6,6)"><span class="itme6"><!-- 72小时价格保护--></span></a>
            </div>
            <div id="nav_p_list1" class="nav_p_list"><img src="/static/images/new_images/zb3.png"/></div>
            <div id="nav_p_list2" class="nav_p_list" style="display:none"><img src="/static/images/new_images/zb4.png"/>
            </div>
            <div id="nav_p_list3" class="nav_p_list" style="display:none"><img src="/static/images/new_images/zb5.png"/>
            </div>
            <div id="nav_p_list4" class="nav_p_list" style="display:none"><img src="/static/images/new_images/zb6.png"/>
            </div>
            <div id="nav_p_list5" class="nav_p_list" style="display:none"><img src="/static/images/new_images/zb7.png"/>
            </div>
            <div id="nav_p_list6" class="nav_p_list" style="display:none"><img src="/static/images/new_images/zb8.png"/>
            </div>
        </div>
        <div class="list" id="nav_s_list2" style="display:none">
            <iframe id="goods_review" name="goods_review" src="" width="724" border="0" frameborder="0"></iframe>
        </div>
        <div class="list" id="nav_s_list3" style="display:none">
            <iframe id="goods_zhijian" name="goods_zhijian" src="" width="724" border="0" frameborder="0"></iframe>
        </div>
    </div>
    <!--回购须知-->
    <div class="notes">
        <div class="notes_title"><span>回购须知</span></div>
        <dl>
            <dd>
                <div class="img"><img src="/static/images/new_images/icon12.gif"/></div>
                <div class="txt">
                    <h2>取消密码</h2>
                    <p>请将所设置的密码取消，以便我们检测人员及时进行功能检测。</p>
                </div>
                <div class="clear"></div>
            </dd>
            <dd>
                <div class="img"><img src="/static/images/new_images/icon13.gif"/></div>
                <div class="txt">
                    <h2>退出账户</h2>
                    <p>苹果手机IOS7以上请退出icloud帐户魅族请退出flyme帐户</p>
                </div>
                <div class="clear"></div>
            </dd>
            <dd>
                <div class="img"><img src="/static/images/new_images/icon14.gif"/></div>
                <div class="txt">
                    <h2>回收过程安全吗？</h2>
                    <p>回购网是正规工商注册的环保企业，成立3年多，是中国标准化回收的领航者。支持多种方式交易：支付宝担保、货到付款和当面交易,并承诺到货后24小时之内确认汇款</p>
                </div>
                <div class="clear"></div>
            </dd>
            <dd class="no">
                <div class="img"><img src="/static/images/new_images/icon15.gif"/></div>
                <div class="txt">
                    <h2>价格会不会有变动？</h2>
                    <p>只要您所描叙的使用情况和实际相符合，这个就是最终的回购价格，不会有变动，若和所描叙的有差异，我们将与您说明情况，然后根据网站的评估系统重新评估。若价格不合适，您也可以要求退货。</p>
                </div>
                <div class="clear"></div>
            </dd>
        </dl>
    </div>
    <!--回购须知-->
    <div class="clear"></div>
</div>
<div id="pai_mark" class="pai_mark"></div>
<div class="pai_box pai_give"><img src="/static/images/new_images/pai_close.png" class="pai_close1"/>
    <p><img src="/static/images/new_images/70.png"/></p>

    <div class="pai_bottom">
        <input type="button" value="领取现金" class="pai_btn1"/>
    </div>
</div>
<div class="pai_cai pai_success">
    <img src="/static/images/new_images/pai_close.png" class="pai_close2"/>
    <h4><span class="cache_amount"></span>元领取成功!</h4>
    <p>
        1、即领即用，领取后默认使用加价； <br/>
        2、加价使用规则 <a href="news/info/37/3909.html">点击查看详情</a><br/>
        3、评估一台手机即可领取一次现金，但每个订单限用一 个。<br/>
        4、每日限领3次现金，领取的现金仅限当天使用。<br/>
        5、活动时间：2016.5.01-2016.5.10，请尽快使用；<br/>
        6、回购网保留在法律规定的范围内对上述规则进行解释的权利。 <br/>
    </p>
    <div class="pai_bottom2">
        <input type="button" value="领取成功" class="pai_btn1"/>
    </div>
</div>
<!--购物车-->
<div class="mui-mbar">
    <!--黑色栏-->
    <div class="mui-mbar-mask">
        <div class="mui-mbar-gwc">
            <div class="mui-mbar-wz"><em class="cart_total_items">${packageOrderList.size()}</em>
                <p><img src="/static/images/new_images/cart.png"/></p>
                <span>回购车</span>
            </div>
        </div>
        <!--在线客服-->
        <div class="mui-mbar-kefu mui-mbar-all">
            <div class="mui-mbar-go"><a rel="nofollow" href="javascript:void(0)"
                                        onclick="zixunserver('index/zixunserver.html')"><img
                    src="/static/images/new_images/cart_icon1.png"/></a></div>
            <div class="mui-zaixian mui-mbar-last"><a href="javascript:void(0)"
                                                      onclick="zixunserver('index/zixunserver.html')">在线客服</a>
            </div>
        </div>
        <!--在线客服-->
        <!--微信二维码-->
        <div class="mui-mbar-weixin">
            <div class="mui-mbar-go"><a href="service/suggestions.html" rel="nofollow" target="_blank"><img
                    src="/static/images/new_images/cart_icon2.png"/></a></div>
            <div class="mui-weima"><a href="service/suggestions.html" rel="nofollow" target="_blank"><img
                    src="/static/images/new_images/weixin.png" width="192" height="192"/></a></div>
        </div>
        <!--微信二维码-->
        <!--投诉建议-->
        <div class="mui-mbar-tousu mui-mbar-all">
            <div class="mui-mbar-go"><a href="service/suggestions.html" rel="nofollow" target="_blank"><img
                    src="/static/images/new_images/cart_icon3.png"/></a></div>
            <div class="mui-jianyi mui-mbar-last"><a href="service/suggestions.html" rel="nofollow"
                                                     target="_blank">投诉建议</a></div>
        </div>
        <!--投诉建议-->
        <!--返回顶部-->
        <div class="mui-mbar-top mui-mbar-all">
            <div class="mui-mbar-go"><a rel="nofollow" href="javascript:goTop();" class="sidetop"><img
                    src="/static/images/new_images/go_top.png"/></a></div>
            <div class="mui-fanhui mui-mbar-last">返回顶部</div>
        </div>
        <!--返回顶部-->
    </div>
    <!--黑色栏-->
    <!--购物车-->
    <div class="mui-mbar-cart">
        <div class="mui-list">

            <div style="height:100%;overflow: auto">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table-list">
                    <tr id="cart_tr_title">
                        <th class="table-padding">机型</th>
                        <th width="100">&nbsp;</th>
                        <th width="68">评估价</th>
                    </tr>

                    <c:set var="zonePrice" value="${0}"/>
                    <%--==========================================--%>
                    <c:forEach items="${packageOrderList}" var="order">
                        <tr id="'+item_id+'">
                            <td class="table-padding">
                                <div class="mui-pic">
                                    <a href="javascript:" class="close_btn"><img src="/static/images/close.png"
                                                                                 onclick="delCar()"></a>
                                    <script type="text/javascript">
                                        function delCar() {
                                            $("#delInput").val("${order.orderId}");
                                            addModToOrderCar();
                                        }

                                    </script>
                                    <a href="javascript:void(0)"><img
                                            src="/static/images/goods/${order.pmodel.modelImg}" width="74" height="56"></a>
                                </div>
                            </td>
                            <td>
                                <p><a href="javascript:void(0)">${order.pmodel.modelName}</a></p>
                            </td>
                            <td>
                                <em>￥${order.lastPrice}</em>
                            </td>
                        </tr>
                        <c:set var="zonePrice" value="${zonePrice+order.lastPrice}"/>
                    </c:forEach>
                    <%--//================================--%>
                    <%--<script type="text/javascript">--%>
                    <%--function removeCar(orderId) {--%>
                    <%--window.location.href="/order/01?orderId="+orderId;--%>
                    <%--}--%>
                    <%--</script>--%>
                </table>
            </div>
        </div>
        <!--结算-->
        <div class="mui-jiesuan">
            <p>已选<em class="cart_total_items">${packageOrderList.size()}</em>台共计<em id="cart_total">￥${zonePrice}</em>
            </p>
            <input type="button" value="去结算" class="mui-button"
                   onclick="toBuyAllView(${sessionScope.userInSession.uid})"/>
            <script type="text/javascript">
                function toBuyAllView(uid) {
                    window.location.href="/buy/cart?uid="+uid;
                }
            </script>
        </div>
        <!--结算-->
    </div>
    <!--购物车-->
</div>
<!--购物车-->
<script type="text/javascript">
    function new_addToCar() {

    }
</script>

<script type="text/javascript">
    function showmark() {
        $("#pai_mark").css("width", $(document).width())
        $("#pai_mark").css("height", $(document).height())
        $(".pai_box").show();
        $("#pai_mark").show();
    }

    function show_box() {
        //onClick="receive_coupon('ajax/receive_coupon.html');"
        $("#pai_mark").css("width", $(document).width())
        $("#pai_mark").css("height", $(document).height())
        $("#pai_mark").show();
        $(".pai_give").show();
    }

    $(function () {
        $(".pai_close1").bind("click", function () {
            $(".pai_box").hide();
            $("#pai_mark").hide();
            $(".pai_give").hide();
        })
        $(".pai_btn1").click(function () {
//                    receive_coupon('ajax/receive_coupon.html');
            var url = "ajax/receive_coupon.html";
            var sn = $("#sn").val();
            var sign = $("#sign").val();
            $.post(url, {'sn': sn, 'sign': sign}, function (data) {
                if (data.status == "true") {
                    $(".cache_amount").text(data.amount);
                    $(".pai_give").hide();
                    $(".pai_success").show();
                    $(".labor_div").text("下单后默认加价" + data.amount + "元");
                } else {
                    alert(data.msg);
                }
            }, "json");

        })
    });
    $(function () {
        $(".pai_close2").bind("click", function () {
            $(".pai_cai").hide();
            $("#pai_mark").hide();

            $(".pai_success").hide();
        })
    });
</script>
<script>
    function goshuangdan(check_url, gourl) {
        $.post(check_url, {}, function (data) {
            var obj = eval(data);
            if (obj[0] == 0) {
                login_pop(gourl);
                return;
            }
            location.reload();
        })
    }
</script>
<script>
    $(function () {
        _nav('nav_s', 2, 3);
        show_goods_review('https://www.baidu.com/');
    });
</script>
</body>
</html>
