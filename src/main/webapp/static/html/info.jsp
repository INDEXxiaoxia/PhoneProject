<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>${thisPmodel.modelName}-麦淘乐 - 二手数码回收平台</title>
    <meta name="keywords" content="iphone 7 iphone7 7 苹果7 苹果 7"/>
    <meta name="description" content="iphone 7 iphone7 7 苹果7 苹果 7"/>
    <meta name="baidu-site-verification" content="IpuQLFxZiC"/>
    <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1"/>
    <meta name="applicable-device" content="pc">
    <link href="https://www.indexxiaoxia.xyz/static/images/favicon.ico" type="image/x-icon" rel="Icon">
    <link href="/static/css/new_css/global.css" rel="stylesheet" type="text/css">
    <script src="/static/js/new_js/jquery-1.4.2.js" type="text/javascript"></script>
    <script src="/static/js/new_js/new_public.js" type="text/javascript"></script>
    <script type="text/javascript">
    </script>
    <link href="/static/css/new_css/sub.css" rel="stylesheet" type="text/css">
    <script src="/static/js/public.js" type="text/javascript"></script>
    <script src="/static/js/new_js/menu.js" type="text/javascript"></script>
    <script src="/static/js/new_js/new_goods.js" type="text/javascript"></script>
</head>

<style>
    * {
        transition-duration: 0.5s;
    }
</style>
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
<!--头部--><!--手机回收-->
<div class="recovery">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".new_search_btn").click(function () {
                $(".new_search").slideToggle();
            });
        });
    </script>
    <div class="page2" style="position:relative">
        <div class="new_search_btn" style="position:absolute; left:-40px; top:-11px; cursor:pointer;"><img
                src="/static/images/new_images/search_btn.png" alt="搜索您要评估价格的机型"/></div>

        <div style="height:30px; line-height:30px; font-size:14px;"><a href="">首页</a> &gt;<a
                href="ershoushouji.html">${ThisProduct}</a> &gt;<a href="ershouiphone.html"> ${thisPmodel.modelName}</a>
            &gt; ${thisPmodel.modelName}
        </div>
        <div class="heat_l">
            <div class="heat_img">
                <img src="/static/images/goods/${thisPmodel.modelImg}" alt="${thisPmodel.modelName}回收价格评估"
                     width="264" height="197"/>
            </div>
            <div class="heat_txt">
                <div class="heat_name"><span>${thisPmodel.modelName}</span></div>
                <dl class="heat_ts">
                    <dd><em>${thisPmodel.highPrice}</em>元<br/>
                        30天内回收最高价
                    </dd>
                    <dt class="clear"></dt>
                </dl>
                <div class="heat_bao"><img src="/static/images/new_images/icon10.gif"
                                           alt="${thisPmodel.modelName}回收免费享受第三方理赔服务"/>可免费享受第三方理赔服务
                </div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
        <script src="/static/js/new_js/morris/raphael-2.1.0.min.js"></script>
        <script src="/static/js/new_js/morris/morris.js"></script>
        <link rel="stylesheet" href="/static/js/new_js/morris/morris.css">
        <div class="heat_r">
            <div class="heat_title"><span>回购价格趋势</span><samp>单位：元</samp></div>
            <div class="heat_pic">
                <div id="graph" style="width:360px; height:210px; margin-top:0px;"></div>
            </div>
            <script>
                var day_data = [
                    {"elapsed": "7", "价格": "${PriceList[0]}"}
                    , {"elapsed": "8", "价格": "${PriceList[1]}"}
                    , {"elapsed": "9", "价格": "${PriceList[2]}"}
                    , {"elapsed": "10", "价格": "${PriceList[3]}"}
                    , {"elapsed": "11", "价格": "${PriceList[4]}"}
                ];
                Morris.Line({
                    element: 'graph',
                    data: day_data,
                    xkey: 'elapsed',
                    ykeys: ['价格'],
                    labels: ['价格'],
                    parseTime: false
                });
            </script>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!--手机回收-->
<!--评估流程-->
<div id="ahs_trade_body">
    <input type="hidden" id="view" value="goods_info"/>
    <input type="hidden" id="if_show_price" value="1"/>
    <input type="hidden" id="gid" name="gid" value="21025"/>
    <input type="hidden" id="package_id" name="package_id" value="${thisPmodel.modelId}"/>
    <div id="ahs_property_head">
        <p>开始评估你的手机，只需3步，获得产品精准评估报价</p>
        <!--步骤一-->
        <div class="speed" id="speed1"><img src="/static/images/new_images/step1.gif" alt="第1步评估手机的基本情况"/></div>
        <!--步骤一-->
        <!--步骤二-->
        <div class="speed" id="speed2"><img src="/static/images/new_images/step2.gif" alt="第2步评估手机的功能使用情况"/></div>
        <!--步骤二-->
        <!--步骤三-->
        <div class="speed" id="speed3"><img src="/static/images/new_images/step3.gif" alt="第一步评估手机的外观成色"/></div>
        <!--步骤三-->
    </div>
    <div id="ahs_property_body">
        <!--第一步-->
        <div id="property_step1">
            <dl>
                <%--//---遍历字典列表--data为一个个小字典[{},[]]---%>
                <c:forEach items="${mapList}" var="data">
                    <dd>
                            <%--由于使用字典封装参数，导致每次取值都需要遍历--%>
                            <%--//--遍历键列表  ==父标签列表------%>
                        <c:forEach items="${data.keySet()}" var="DadTip">
                            <%--//---如果是第一步-----%>
                        <c:if test="${DadTip.theStep==1}">
                            <%--IFIFIFIFIFIFIFIFIFIFIFIFIFIFIF--%>
                            <%--遍历键列表 用于 显示 大标签的名字 -------%>
                        <c:forEach items="${data.keySet()}" var="DadTip">
                            <%--/　提交大标签 /--%>
                            <input type="hidden" name="property[]" id="property_${DadTip.tipsId}" value="0"/>
                            <div class="property_title"><h3>${DadTip.theDesc}</h3></div>
                        </c:forEach>
                        <ul>
                                <%--遍历字典的值 小标签实体列表字典 -------%>
                            <c:forEach items="${data.values()}" var="SonTips">
                                <%--从小字典提取出列表 并遍历 -------%>
                                <c:forEach items="${SonTips}" var="SonTip">
                                    <li class="" onClick="property_click(this,'${SonTip.dadId}','${SonTip.tipsId}')"
                                        name="sx_child_${SonTip.dadId}">
                                        <div class="pro_div"><span class="property_value"><i>${SonTip.theDesc}</i><ins>${SonTip.detaDesc}</ins></span><span
                                                class="gou"></span></div>
                                    </li>
                                </c:forEach>
                            </c:forEach>
                                <%--IFIFIFIFIFIFIFIFIFIFIFIFIFIFIF--%>
                            </c:if>
                            </c:forEach>
                            <div class="clear"></div>
                        </ul>
                    </dd>
                </c:forEach>
                <div id="step1_nav" class="property_nav">
                    <div id="btn_step1_next" class="btn_next">下一步</div>
                </div>
            </dl>
        </div>
        <!--第一步-->
        <!--第二步-->
        <div id="property_step2" class="hide">
            <dl>
                <%--[｛父标签对象，子标签列表｝，]--%>
                <c:forEach items="${mapList}" var="data">
                    <%--[父标签对象,]--%>
                    <c:forEach items="${data.keySet()}" var="DadTip">
                        <%--父标签对象--%>
                        <c:if test="${DadTip.theStep==2}">

                            <dd>
                                <div class="property_title">
                                    <h3>${DadTip.theDesc}（可多选或不选）</h3>
                                </div>
                                <ul>
                                        <%--遍历出来为[一个个对象组成的列表]--%>
                                    <c:forEach items="${data.values()}" var="SonTips">
                                        <%--对遍历出来的列表再次遍历--%>
                                        <c:forEach items="${SonTips}" var="Sontip">
                                            <%--<input type="hidden" name="desc_pid[]" value="${Sontip.tipsId}"/>--%>
                                            <input type="hidden" name="Step2[]" id="desc_id_${Sontip.tipsId}"
                                                   value="0"/>
                                            <li onClick="item_click(this,'${Sontip.tipsId}')"
                                                name="mx_child_${Sontip.tipsId}">
                                                <div class="pro_div"><span
                                                        class="property_value"><i>${Sontip.theDesc}</i><ins>${Sontip.detaDesc}</ins></span>
                                                    <span class="gou"></span></div>
                                            </li>

                                        </c:forEach>
                                    </c:forEach>
                                    <div class="clear"></div>
                                </ul>
                            </dd>
                        </c:if>
                    </c:forEach>
                </c:forEach>
            </dl>
            <div id="step2_nav" class="property_nav">
                <div id="btn_step2_back" class="btn_back">< 返回上一步</div>
                <div id="btn_step2_next" class="btn_next">选好了，去下一步 ></div>
            </div>
        </div>
        <!--第二步-->
        <%--//  发送机型ID--%>
        <input type="hidden" id="pmodel_id" name="pmodel_id" value="${thisPmodel.modelId}"/>
        <!--第三步-->
        <div id="property_step3" class="hide">
            <dl>

                <%--[｛父标签对象，子标签列表｝，]--%>
                <c:forEach items="${mapList}" var="data">
                    <%--[父标签对象,]--%>
                    <c:forEach items="${data.keySet()}" var="DadTip">
                        <%--父标签对象--%>
                        <c:if test="${DadTip.theStep==3}">

                            <c:if test="${DadTip.isEnum==0}">
                                <dd>
                                    <input type="hidden" name="Step3dj[]" id="property_${DadTip.tipsId}" value="0"/>
                                    <div class="property_title"><h3>${DadTip.theDesc}</h3></div>
                                    <ul>
                                            <%--遍历字典的值 小标签实体列表字典 -------%>
                                        <c:forEach items="${data.values()}" var="SonTips">
                                            <%--从小字典提取出列表 并遍历 -------%>
                                            <c:forEach items="${SonTips}" var="SonTip">
                                                <li class=""
                                                    onClick="property_click(this,'${SonTip.dadId}','${SonTip.tipsId}')"
                                                    name="sx_child_${SonTip.dadId}">
                                                    <div class="pro_div"><span
                                                            class="property_value"><i>${SonTip.theDesc}</i><ins>${SonTip.detaDesc}</ins></span><span
                                                            class="gou"></span></div>
                                                </li>
                                            </c:forEach>
                                        </c:forEach>
                                    </ul>
                                </dd>
                            </c:if>
                            <c:if test="${DadTip.isEnum==1}">
                                <dd>
                                    <div class="property_title">
                                        <h3>${DadTip.theDesc}（可多选或不选）</h3>
                                    </div>
                                    <ul>
                                        <c:forEach items="${data.values()}" var="SonTips">
                                            <%--对遍历出来的列表再次遍历--%>
                                            <c:forEach items="${SonTips}" var="Sontip">
                                                <%--<input type="hidden" name="desc_pid[]" value="${Sontip.tipsId}"/>--%>
                                                <input type="hidden" name="Step3do[]" id="desc_id_${Sontip.tipsId}"
                                                       value="0"/>
                                                <li onClick="item_click(this,'${Sontip.tipsId}')"
                                                    name="mx_child_${Sontip.tipsId}">
                                                    <div class="pro_div"><span
                                                            class="property_value"><i>${Sontip.theDesc}</i><ins>${Sontip.detaDesc}</ins></span>
                                                        <span class="gou"></span></div>
                                                </li>

                                            </c:forEach>
                                        </c:forEach>
                                        <div class="clear"></div>
                                    </ul>
                                </dd>
                            </c:if>



                        </c:if>
                    </c:forEach>
                </c:forEach>
            </dl>
            <div id="step3_nav" class="property_nav">
                <div id="btn_step3_back" class="btn_back">< 返回上一步</div>
                <div id="btn_step3_next" class="btn_next"
                     onclick="sendTipsParam()">查看价格 >
                </div>
            </div>
        </div>
        <!--第三步-->
    </div>
</div>
<!--评估流程-->
<!--隐藏的评估描叙选项start-->
<div style="display:none; background-color:#CCCCCC;">
</div>
<!--隐藏的评估描叙选项end-->
<script>
    $(document).ready(function () {
        $("#step1_nav .btn_next").bind('click', step1_next);
        $("#step2_nav .btn_next").bind('click', step2_next);
        $("#step2_nav .btn_back").bind('click', step2_back);
        $("#step3_nav .btn_back").bind('click', step3_back);

        $("input[name='property[]']").each(function () {
            $(this).val(0);
        })
        $("#property_step1 input[name='desc_id[]']").each(function () {
            $(this).val(0);
        })
        $("#property_step3 input[name='desc_id[]']").each(function () {
            $(this).val(0);
        })
        $("#pj_ids").val(0);
    })
</script>
<!--[if lte IE 6]>
<script src="/static/js/new_js/png.js" type="text/javascript"></script>
<script type="text/javascript">
    DD_belatedPNG.fix('img,.banner ul, li, dl, dt, dd, span, em, div, i, samp, a, b, .kuang');
</script>
<![endif]-->
</body>
<script>
    function sendTipsParam() {
        var Step1 = "";
        var Step2 = "";
        var Step3dj = "";
        var Step3do = "";
        var key = 0;
        $("input[name='property[]']").each(function () {
            if ($(this).val() != null && $(this).val() != 0) {
                Step1 += $(this).val() + ",";
            }
        })
        $("input[name='Step2[]']").each(function () {
            if ($(this).val() != null && $(this).val() != 0) {
                Step2 += $(this).val() + ",";
            }
        })
        $("input[name='Step3dj[]']").each(function () {
            if ($(this).val() != null && $(this).val() != 0) {
                Step3dj += $(this).val() + ",";
            } else {
                key = 1;
            }
        })
        $("input[name='Step3do[]']").each(function () {
            if ($(this).val() != null && $(this).val() != 0) {
                Step3do += $(this).val() + ",";
            }
        })
        var pmodelId = $("#pmodel_id").val();
        var AllSelectTips = Step1 + Step2 + Step3dj + Step3do;
        // alert(AllSelectTips)
        // alert(pmodelId);
        if (key == 0) {
            window.location.href = "/data/datahandle?pmodelId=" + pmodelId + "&AllSelectTips=" + AllSelectTips;
        }else {
            alert("请选择参数！")
        }
    }
</script>
</html>
