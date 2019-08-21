<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<title>订单发货-麦淘乐 - 手机回收网 | 二手手机交易 | 笔记本回收 | 平板回收</title>
<meta name="keywords" content="手机回收,二手手机回收,手机回收网,二手手机回收网,二手手机,笔记本回收,平板电脑回收,数码相机回收,旧手机回收,苹果手机回收">
<meta name="description"
      content="麦淘乐是一家专业安全的二手手机回收网，为您提供在线手机回收、平板电脑回收、笔记本回收、数码相机回收、相机镜头回收、无人机回收，专业手机回收价格评估，让你轻松买卖二手手机等闲置数码产品。">
<meta name="baidu-site-verification" content="IpuQLFxZiC">
<meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1">
<meta name="applicable-device" content="pc">
<link href="http://www.qfedu.com/favicon.ico" type="image/x-icon" rel="Icon">
<link href="/static/css/new_css/global.css" rel="stylesheet" type="text/css">
<script charset="utf-8" src="/static/js/new_js/lxb.js"></script>
<script charset="utf-8" src="/static/js/new_js/v.js"></script>
<script src="/static/js/hm.js"></script>
<script src="/static/js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="/static/js/new_js/new_public.js" type="text/javascript"></script>
<script type="text/javascript">
    function selectcity(url) {
        open_div_extends('切换地区', url, 'Loading_child');
    }
</script>
<!--<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-78139156-1', 'auto');
  ga('send', 'pageview');

</script>-->

<link href="/static/css/new_global.css" rel="stylesheet" type="text/css">

<script src="/static/js/new_js/jquery.kinMaxShow-1.1.min.js" type="text/javascript"></script>

<script src="/static/js/new_js/lrtk.js" type="text/javascript"></script>

<script src="/static/js/new_js/menu.js" type="text/javascript"></script>

<script src="/static/js/new_js/index.js" type="text/javascript"></script>

</head>
<body>
<link rel="stylesheet" type="text/css" href="/static/css/alert_zhe.css">
<script type="text/javascript" src="/static/js/alert_zhe.js"></script>
<div id="Loading_child" class="Loading" style="display:none; height:480px;" ondblclick="ttt(&#39;Loading_child&#39;);">
    <div class="tyd_box">
        <div class="tyd_box_c">
            <div class="tyd_box_title">
                <span id="Loading_child_title"></span><a href="javascript:ttt(&#39;Loading_child&#39;)"><img
                    src="/static/images/close1.gif" border="0"></a>
            </div>
            <div class="tyd_box_content" style="width:612px;overflow:auto; height:450px;">

            </div>
        </div>
    </div>
</div>
<div id="mbDIV" style="display:none;"></div><!--头部-->
<div class="shortcut">
    <div class="page">
        <div class="shortcut-left">
            <ul>
                <li class="item-more"><a rel="nofollow" href="javascript:void(0)"><span>&nbsp;</span><em>手机逛回购</em></a>
                    <div class="sub-nav">
                        <div><a href="" rel="nofollow" target="_blank"><img src="" width="145" height="145"></a></div>
                        <div>扫描进入手机站</div>
                    </div>
                </li>
                <li class="city"><span>当前：
        <span id="selectcity_new">
          武汉
        </span>
        <a rel="nofollow" href="javascript:void(0);"
           onclick="selectcity(&#39;/index/selectcity_new.html&#39;);">[切换城市]</a></span></li>
            </ul>
        </div>
        <div class="shortcut-right">
            <ul id='login_show'>
                <c:if test="${sessionScope.userInSession!=null}">
                    <li><a href="#" style="color: #95a5ff">Hello！ ${sessionScope.userInSession.uname}</a></li>
                    <li><a href="/lr/l.o" rel="nofollow">退出登录</a></li>
                </c:if>
                <c:if test="${sessionScope.userInSession==null}">
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
<!--头部--><!--查询结果-->
<div class="search_list">
    <div class="page">
        <div class="current"><a href="/index/01">首页</a><span>&gt;</span><a
                href="#">会员中心</a></div>
        <!--会员中心-->
        <div class="member">
            <link href="/static/css/new_css/member.css" rel="stylesheet" type="text/css">
            <!--会员中心列表-->
            <div class="member_l">
                <dl class="member_l_list">
                    <dd><a href="http://www.qfedu.com/member.html"><b class="item1">&nbsp;</b><em>帐户中心</em></a></dd>
                    <dd><a href="http://www.qfedu.com/member/order.html"><b class="item2">&nbsp;</b><em>回购订单</em>
                        <!--<span>1</span>--></a></dd>
                    <dd><a href="http://www.qfedu.com/personal/buy_order.html"><b class="item6">&nbsp;</b><em>购买订单</em></a>
                    </dd>
                    <dd><a href="http://www.qfedu.com/personal/huan_order.html"><b class="item7">&nbsp;</b><em>换新订单</em><span
                            style="display: none;">2</span></a></dd>

                    <dd><a href="http://www.qfedu.com/spike_order/spike_buy_order.html"><b class="item8">&nbsp;</b><em>活动订单</em></a>
                    </dd>
                    <!--<dd  ><a href="/personal/vr_order.html"><b class="item9">&nbsp;</b><em>VR订单</em></a></dd>-->
                    <dd><a href="http://www.qfedu.com/member/juan.html"><b class="item3">&nbsp;</b><em>我的优惠券</em></a>
                    </dd>
                    <dd><a href="http://www.qfedu.com/member/address.html"><b class="item4">&nbsp;</b><em>地址管理</em></a>
                    </dd>
                    <dd><a href="http://www.qfedu.com/member/message.html"><b class="item5">&nbsp;</b><em>消息中心</em>
                        <!--<span>2</span>--></a></dd>
                </dl>
            </div>
            <!--会员中心列表-->
            <div class="member_r2">
                <div class="face_main">
                    <!--订单信息-->
                    <!--订单信息-->
                    <div class="face_zt">
                        <div class="face_zt_title"><span>我的订单</span></div>
                        <div class="transaction_main">
                        <c:set var="time" value="x"/>
                        <%--<c:set var="timekey" value="yes"/>--%>
                        <c:forEach items="${packageOrders}" var="packageorder">
                            <table width="100%" border="0" cellpadding="0" cellspacing="1" class="table2" style="margin: 0">
                                <tbody>
                            <%--<c:if test="${packageorder.theorder.ordertime==time&&timekey=='yes'}">--%>
                            <%--<h3>${packageorder.theorder.ordertime}的订单</h3>--%>
                            <%--<c:set var="timekey" value="no"/>--%>
                            <%--</c:if>--%>
                            <c:if test="${packageorder.theorder.ordertime!=time}">
                                <c:set var="time" value="${packageorder.theorder.ordertime}"/>
                                <div class="face_bh" style="box-shadow: 0 0 1px black;padding: 10px;margin: 20px 0px 0px;border-radius: 30px 30px 0px 0px">
                                    <p>
                                        <span>订单编号：XXYZ8888${packageorder.theorder.orderId}</span>
                                        <span>交易方式：支付宝</span>
                                        <span>支付宝账号：${packageorder.theorder.paynum}</span>
                                    </p>
                                    <p><span>联系人：${packageorder.theorder.callman}</span>
                                        <span>联系电话：${packageorder.theorder.callnum}</span>
                                        <span><u style="color: #876667;">${packageorder.theorder.ordertime}</u></span>
                                    </p>
                                </div>
                                <tr>
                                    <th height="24" align="center" style="text-align:center" width="20%">型号</th>
                                    <th height="24" align="center" style="text-align:center" width="20%">评估价格</th>
                                    <th height="24" align="center" style="text-align:center" width="60%">评估描述</th>

                                </tr>
                            </c:if>

                                <tr>
                                    <td height="110" width="20%"><a href="/static/images/goods/${packageorder.pmodel.modelImg}"
                                                        target="_blank"><img
                                            src="/static/images/goods/${packageorder.pmodel.modelImg}" width="112"
                                            height="84"></a>
                                        <div class="table2_txtsd">${packageorder.pmodel.modelName}</div>
                                        <div class="clear"></div>
                                    </td>
                                    <td width="20%">￥<em>${packageorder.lastPrice}</em></td>
                                    <%--<td width="60%><p class="table2_p2">--%>
                                        <%--&nbsp;<span>红色</span>&nbsp;--%>
                                        <%--|&nbsp;<span>无换机</span>&nbsp;--%>
                                    <%--</p></td>--%>
                                    <%--///////////////////////////--%>
                                    <td style="padding-left:28px; line-height: 18px;text-align: left;">
                                        <c:forEach items="${packageorder.sontipsList}" var="sonTip">

                            <span style="font-size:3px; float: left;background-color:
                            <c:if test="${sonTip.tipsId<=27}">
                                    #95a5ff
                            </c:if>
                            <c:if test="${sonTip.tipsId>27&&sonTip.tipsId<=34}">
                                    #ff7672
                            </c:if>
                            <c:if test="${sonTip.tipsId>34}">
                                    #7ae875
                            </c:if>
                                    ;color: white;border-radius: 10px;padding:3px 10px;margin:5px 5px;box-shadow: 0 0 2px blue">
                                    ${sonTip.theDesc}
                            </span>
                                        </c:forEach>
                                    </td>
                                <%--//////////////////////////////////--%>
                                </tr>


                                </tbody>
                            </table>
                            </c:forEach>
                        </div>
                    </div>
                    <!--订单信息-->           <!--订单信息-->
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <!--会员中心-->
    </div>
</div>
<!--查询结果-->
<script>
    function check_fahuo_from() {
        if ($("#express_id").val() == 0) {
            $("#express_id").focus();
            alert('请选择快递公司');
            return false;
        }

        if ($.trim($("#express_sn").val()) == '') {
            $("#express_sn").focus();
            alert('请输入快递单号');
            return false;
        }
        var re = /^[0-9]+.?[0-9]*$/;
        if (!re.test($("#express_sn").val())) {
            $("#express_sn").focus();
            alert("请输入数字");
            return false;
        }
        //防止网络延迟重复提交
        $("#sub_button").attr('disabled', 'disabled');
        $("#fahuo_from").submit();
    }

    $(".select_box").click(function (event) {
        event.stopPropagation();
        $(this).find(".option").toggle();
        $(this).parent().siblings().find(".option").hide();

    });
    $(document).click(function (event) {
        var eo = $(event.target);
        if ($(".select_box").is(":visible") && eo.attr("class") != "option" && !eo.parent(".option").length)
            $('.option').hide();
    });

    /*快递公司点击事件*/
    function option_express_click(obj) {
        var text = $(obj).text();
        var val = $(obj).attr('value');
        $(obj).parent().siblings(".select_txt").text(text);
        $("#express_id").val(val);
    }
</script>
<div class="footer">

    <!--购物车-->
    <div class="mui-mbar">
        <!--黑色栏-->
        <div class="mui-mbar-mask">
            <div class="mui-mbar-gwc">
                <%--<div class="mui-mbar-wz"><em class="cart_total_items">0</em>--%>
                <%--<p><img src="/static/images/cart.png"></p>--%>
                <%--<span>回购车</span>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<!--在线客服-->--%>
                <%--<div class="mui-mbar-kefu mui-mbar-all">--%>
                <%--<div class="mui-mbar-go"><a rel="nofollow" href="javascript:void(0)" onclick="zixunserver(&#39;/index/zixunserver.html&#39;)"><img src="/static/images/cart_icon1.png"></a></div>--%>
                <%--<div class="mui-zaixian mui-mbar-last"><a href="javascript:void(0)" onclick="zixunserver(&#39;/index/zixunserver.html&#39;)">在线客服</a></div>--%>
                <%--</div>--%>
                <%--<!--在线客服-->--%>
                <%--<!--微信二维码-->--%>
                <%--<div class="mui-mbar-weixin">--%>
                <%--<div class="mui-mbar-go"><a href="http://www.qfedu.com/service/suggestions.html" rel="nofollow" target="_blank"><img src="/static/images/cart_icon2.png"></a></div>--%>
                <%--<div class="mui-weima"><a href="http://www.qfedu.com/service/suggestions.html" rel="nofollow" target="_blank"><img src="/static/images/weixin.png" width="192" height="192"></a></div>--%>
                <%--</div>--%>
                <%--<!--微信二维码-->--%>
                <%--<!--投诉建议-->--%>
                <%--<div class="mui-mbar-tousu mui-mbar-all">--%>
                <%--<div class="mui-mbar-go"><a href="http://www.qfedu.com/service/suggestions.html" rel="nofollow" target="_blank"><img src="/static/images/cart_icon3.png"></a></div>--%>
                <%--<div class="mui-jianyi mui-mbar-last"><a href="http://www.qfedu.com/service/suggestions.html" rel="nofollow" target="_blank">投诉建议</a></div>--%>
                <%--</div>--%>
                <%--<!--投诉建议-->--%>
                <%--<!--返回顶部-->--%>
                <%--<div class="mui-mbar-top mui-mbar-all">--%>
                <%--<div class="mui-mbar-go"><a rel="nofollow" href="javascript:goTop();" class="sidetop"><img src="/static/images/go_top.png"></a></div>--%>
                <%--<div class="mui-fanhui mui-mbar-last">返回顶部</div>--%>
                <%--</div>--%>
                <%--<!--返回顶部-->--%>
                <%--</div>--%>
                <%--<!--黑色栏-->--%>
                <%--<!--购物车-->--%>
                <%--<div class="mui-mbar-cart">--%>
                <%--<div class="mui-list">--%>
                <%--<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table-list">--%>
                <%--<tbody>--%>
                <%--<tr id="cart_tr_title">--%>
                <%--<th class="table-padding">机型</th>--%>
                <%--<th width="100">&nbsp;</th>--%>
                <%--<th width="68">评估价</th>--%>
                <%--</tr>--%>
                <%--</tbody>--%>
                <%--</table>--%>
                <%--</div>--%>
                <%--<!--结算-->--%>
                <%--<div class="mui-jiesuan">--%>
                <%--<p>已选<em class="cart_total_items">0</em>台共计<em id="cart_total">￥0</em></p>--%>
                <%--<input type="button" value="去结算" class="mui-button"--%>
                <%--onclick="gocart(&#39;/ajax/check_iflogin.html&#39;,&#39;/order/cart.html&#39;)">--%>
            </div>
            <!--结算-->
        </div>
        <!--购物车-->
    </div>
    <!--购物车-->
</div>
<link rel="stylesheet" type="text/css" href="/static/css/alert_zhe.css">
<script type="text/javascript" src="/static/js/alert_zhe.js"></script>
<div id="Loading_server" class="Loading_server" style="display:none; height:580px;"
     ondblclick="ttt(&#39;Loading_server&#39;);">
    <div class="tyd_box">
        <div class="tyd_box_c">
            <div class="tyd_box_title">
                <span id="Loading_server_title"></span><a href="javascript:ttt(&#39;Loading_server&#39;)"><img
                    src="/static/images/close1.gif" border="0"></a>
            </div>
            <div class="tyd_box_content" style="width:524px;height:529px; overflow:hidden">
                <iframe id="Loading_server_iframe_id" name="iframe_id" width="524" height="529" border="0"
                        frameborder="0" src="saved_resource.html"></iframe>
            </div>
        </div>
    </div>
</div>
<div id="mbDIV" style="display:none;"></div>
<script type="text/javascript" src="/static/js/new_js/jquery.scrollLoading.js"></script>
<script>
    $(document).ready(function () {
        $(".scrollLoading").scrollLoading()
    });

    function zixunserver(url) {
        open_div_extends('', url, 'Loading_server', 524, 580);
    }

    function gocart(check_url, gourl) {
        $.post(check_url, {}, function (data) {
            var obj = eval(data);
            if (obj[0] == 0) {
                login_pop(gourl);
                return;
            }
            location.href = gourl;
        })
    }
</script>
<input type="hidden" id="public_gourl" value="">
<link rel="stylesheet" type="text/css" href="/static/css/alert_zhe.css">
<script type="text/javascript" src="/static/js/alert_zhe.js"></script>
<div id="Loading_child_members" class="Loading" style="display:none; height:600px;"
     ondblclick="ttt(&#39;Loading_child_members&#39;);">
    <div class="tyd_box">
        <div class="tyd_box_c">
            <div class="tyd_box_title">
                <span id="Loading_child_members_title"></span><a href="javascript:ttt(&#39;Loading_child_members&#39;)"><img
                    src="/static/images/close1.gif" border="0"></a>
            </div>
            <div class="tyd_box_content" style="width:502px;overflow:auto; height:570px;;">
                <iframe id="Loading_child_members_iframe_id" name="iframe_id" width="502" height="570px;" border="0"
                        frameborder="0" src="/static/saved_resource(2).html"></iframe>
            </div>
        </div>
    </div>
</div>
<div id="mbDIV_members" style="display: none; height: 1368px;"></div>
<script type="text/javascript">
    function login_pop() {
        var gourl = arguments[0] ? arguments[0] : '';
        if (gourl != '') $("#public_gourl").val(gourl);
        open_div_extends('登录与注册', '/members/login_popup.html', 'Loading_child_members', '502', '600');
    }
</script>
<!--[if lte IE 6]>
<script src="/js/new_js/png.js" type="text/javascript"></script>
<script type="text/javascript">
    DD_belatedPNG.fix('img,.banner ul, li, dl, dt, dd, span, em, div, i, samp, a, b, .kuang');
</script>
<![endif]-->

</div></body>
</html>