<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>手机回收_麦淘乐</title>
    <meta name="keywords" content="手机回收,二手手机回收,旧手机回收,废旧手机回收,二手手机交易,二手手机价格,二手手机估价,手机回收价格"/>
    <meta name="description" content="麦淘乐二手手机回收，为您提供各种品牌的二手手机、旧手机、废旧手机的回收交易、专业检测、价格评估服务，给您一个满意的二手手机回收价格。"/>
    <meta name="baidu-site-verification" content="IpuQLFxZiC"/>
    <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1"/>
    <meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/ershoushouji.html">
    <meta name="applicable-device" content="pc">
    <link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.ihuigo.com/ershoushouji.html">
    <link href="/static/images/72hours.png" type=image/x-icon rel="Icon">
    <link href="/static/css/new_css/global.css" rel="stylesheet" type="text/css">
    <script src="/static/js/new_js/jquery-1.4.2.js" type="text/javascript"></script>
    <script src="/static/js/new_js/new_public.js" type="text/javascript"></script>
    <script type="text/javascript">
        function selectcity(url) {
            open_div_extends('切换地区', url, 'Loading_child');
        }
    </script>
    <link href="/static/css/new_global.css" rel="stylesheet" type="text/css">
    <script src="/static/js/new_js/jquery.kinMaxShow-1.1.min.js" type="text/javascript"></script>
    <script src=/static/js/new_js/lrtk.js" type="text/javascript"></script>
    <script src="/static/js/new_js/menu.js" type="text/javascript"></script>
    <script src="/static/js/new_js/index.js" type="text/javascript"></script>
</head>

<body>
<link rel="stylesheet" type="text/css" href="/static/css/alert_zhe.css"/>
<script type="text/javascript" src="/static/js/alert_zhe.js"></script>
<div id="Loading_child" class="Loading" style="display:none; height:480px;" onDblClick="ttt('Loading_child');">
    <div class="tyd_box">
        <div class="tyd_box_c">
            <div class="tyd_box_title">
                <span id="Loading_child_title"></span><a href="javascript:ttt('Loading_child')"><img
                    src="/static/images/close1.gif" border="0"/></a>
            </div>
            <div class="tyd_box_content" style="width:612px;overflow:auto; height:450px;">
                <iframe id="Loading_child_iframe_id" name="iframe_id" width="612" height="450" border="0"
                        frameborder="0"></iframe>
            </div>
        </div>
    </div>
</div>
<div id="mbDIV" style="display:none;"></div>
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
<!--头部-->
<script type="text/javascript" src="/static/js/goods.js"></script>
<div class="new_search" style="padding-bottom:20px">
    <div class="search-box">
        <div class="search-title">搜一下，看看你的二手闲置还值多少钱</div>
        <div class="search">
            <div class="search-fenlei" id="search-fenlei">
                <div class="set" id="all_type">手机</div>
                <div class="search-list">
                    <ul>
                        <li class="search-list-iconall"><a href="javascript:void(0)" rel="nofollow"><span
                               ">全部分类</span></a></li>
                        <li class="search-list-icon1"><a href="javascript:void(0)" rel="nofollow"><span
                                >手机</span></a></li>
                    </ul>
                </div>
            </div>
            <form name="top_goods_search" id="top_goods_search"  method="get">
                <input type="text" name="SearchParam" id="SearchParam" value="${SearchParam}" placeholder="请输入要搜索的手机" class="input-txt"/>
                <input type="button" value="" class="input-btn" onclick="sendSearchParam()"/>
            </form>
        </div>
    </div>
</div>
<!--查询结果-->
<div class="search_list">
    <div class="page">
        <div class="current"><a href="">首页</a><span>></span><a href="#">闲置回收</a>
            <span>></span><a href="#">
                <c:forEach items="${productLsit}" var="product">
                    <c:if test="${product.productTypeId==proID}">${product.productName}</c:if>
                </c:forEach>
            </a>
            <em></em>
        </div>
        <div class="side_left">
            <dl class="side_list">
                <dt>搜索结果分类</dt>
                <%--==========================这里有jsp的传参代码啊啊啊啊啊啊啊===========选取产品类型========--%>
                <c:forEach items="${productLsit}" var="product">
                    <%--class="item_on"--%>
                    <%--<c:if test="${product.productTypeId=1}">class="item_on"</c:if>--%>
                    <dd
                            <c:if test="${product.productTypeId==proID}">class="item_on"</c:if>
                    ><a href="/index/goods?proID=${product.productTypeId}" title="手机回收价格评估"><b
                            class="item${product.productTypeId}">&nbsp;</b><em>${product.productName}</em><span>&nbsp;</span></a>
                    </dd>
                </c:forEach>

            </dl>
            <dl class="side_hot">
                <dt>最近热门回收</dt>
                <dd>
                    <div class="img2">
                        <img src="http://img.ihuigo.com/goods_a/f6a645a58a6b36cb42e8ef1af0364101.jpg" width="42"
                             height="31" title="ipad mini回收价格评估"/>
                    </div>
                    <div class="txt2">
                        <p style="width:120px;">
                            <a href="#" title="ipad mini回收价格评估">ipad mini</a></p>462
                    </div>
                    <div class="clear"></div>
                </dd>
            </dl>
            <ul class="hotline">
                <li><img src="/static/images/icon30.png" alt="麦淘乐手机回收400电话咨询"
                         style="vertical-align:middle"><span>400-xxxx-xxx</span></li>
            </ul>
        </div>
        <div class="side_right">
            <!--全部手机品牌-->
            <div class="brand" >
                <div class="title2"><span><a href="#"><strong>
                    <c:forEach items="${productLsit}" var="product">
                        <c:if test="${product.productTypeId==proID}">${product.productName}</c:if>
                    </c:forEach>

                </strong> 品牌</a></span></div>
                <div class="brand_main">
                    <div class="brand_hot">
                        <%--==========================这里有jsp的传参代码啊啊啊啊啊啊啊===================--%>
                        <c:forEach items="${brandList}" var="brand">
                            <a href="/index/goods?proID=${proID}&braID=${brand.brandId}"
                                    <c:if test="${brand.brandId==braID}">
                                        style="color: #2b2b2b"
                                    </c:if>
                            >${brand.brandName}</a>
                            <em>|</em>
                        </c:forEach>
                    </div>
                    <%--<div class="brand_hots">--%>
                    <%--<a href="ershoububugao.html">vivo</a>--%>
                    <%--<em>|</em><a href="ershoulianxiang.html">联想</a>--%>
                    <%--</div>--%>
                </div>
            </div>
            <!--全部手机品牌-->
            <div class="search_main" id="focusMove" tabindex="-1">
                <div class="search_title"><h2 class="list-item">手机回收</h2>&nbsp;&nbsp;&nbsp;&nbsp;<em></em>搜索到<em>
                    ${pagemodelList.total} </em>个结果
                </div>
                <dl class="pic_list">
                    <%--==========================这里有jsp的传参代码啊啊啊啊啊啊啊===================--%>
                    <c:forEach items="${pagemodelList.list}" var="pmode">
                        <dd>
                            <div class="pic_list_box">
                                <div class="pic_list_img"><a href="/Ass/ess?modId=${pmode.modelId}" title="'${pmode.modelName}'回收价格评估"><img
                                        src="/static/images/goods/${pmode.modelImg}"
                                        width="180"
                                        height="135" alt="'${pmode.modelName}'闲置回收价格评估"/></a></div>
                                <p class="name">${pmode.modelName}</p>
                                <!--<p class="price">回收价：<em>￥3080</em></p>-->
                                <p class="pinggu"><a href="/Ass/ess?modId=${pmode.modelId}"
                                                     title="在线评估'${pmode.modelName}'">
                                    <!--去评估--></a>
                                </p>
                                <c:if test="${pmode.ishot==1}">
                                    <div class="hot"><img src="/static/images/hot.png"/></div>
                                </c:if>
                            </div>
                        </dd>
                    </c:forEach>
                    <div class="clear"></div>
                </dl>
                <div class="clear"></div>
                <div class="pageStr">
                    <div class="ihuigo_page" >
                        <%--==========================这里有jsp的传参代码啊啊啊啊啊啊啊===================--%>
                        <%-- 已点击的样式  span class="cur_link"--%>
                        <c:forEach items="${pagemodelList.navigatepageNums}" var="pageNum">
                            <c:if test="${pagemodelList.pageNum==pageNum}">
                                <span class="cur_link">${pageNum}</span>
                            </c:if>
                            <c:if test="${pagemodelList.pageNum!=pageNum}">
                                <span><a href="/index/goods?proID=${proID}&i=${pageNum}&focusMove=yes">${pageNum}</a></span>
                            </c:if>


                        </c:forEach>
                        <span class="next_link"><a href="/index/goods?proID=${proID}&i=${pagemodelList.pageNum+1}&focusMove=yes">下一页</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!--查询结果-->
<script type="text/javascript">
    $(document).ready(function () {
        $('.pic_list dd').mousemove(function () {
            $(this).find('.pic_list_box').addClass('kuang');
        });
        $('.pic_list dd').mouseleave(function () {
            $(this).find('.pic_list_box').removeClass('kuang');
        });
    });
</script>
<div class="footer">
    <div class="page2">
        <dl class="foot_list1">
            <dt>关于我们</dt>
            <dd><a href="service/about.html" rel="nofollow" target="_blank" title="麦淘乐高价在线手机回收平台">关于麦淘乐</a></dd>
            <dd><a href="service/contact.html" target="_blank" rel="nofollow" title="麦淘乐手机回收联系方式">联系我们</a></dd>
            <dd><a href="service/join.html" target="_blank" rel="nofollow" title="麦淘乐长期招聘爱好手机回收行业的小伙伴">人才招聘</a></dd>
        </dl>
        <dl class="foot_list2">
            <dt>服务</dt>
            <dd><a href="service/terms.html" target="_blank" rel="nofollow" title="手机回收常见问题与解答">服务条款</a></dd>
            <dd><a href="service/suggestions.html" target="_blank" rel="nofollow" title="感谢您对手机回收相关问题的投诉与建议">投诉建议</a>
            </dd>
            <dd><a href="service/map.html" target="_blank" title="麦淘乐的网站地图导航">网站地图</a></dd>
        </dl>
        <dl class="foot_list3">
            <dt>客服热线</dt>
            <dd>
                <p>tel:xxxxxxxxxxx</p>

            </dd>
        </dl>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".weixin2").hover(function () {
                    $(this).find(".weixin-qrcode2").show();
                }, function () {
                    $(this).find(".weixin-qrcode2").hide();
                });
            });
        </script>
        <dl class="foot_list4">
            <dt>关注我们</dt>
            <dd class="sina"><a href="http://e.weibo.com/ihuigo?topnav=11" rel="nofollow" target="_blank">&nbsp;</a>
            </dd>
            <dd class="weixin"><a rel="nofollow" class="weixin2" target="_blank">
                <div class="weixin-qrcode2"></div>
            </a></dd>
        </dl>
        <div class="clear"></div>
        <div class="statist">
            <p><em>Copyright Reserved 2009-2016 @</em>
                麦淘乐qfedu.com版权所有
                <span>
    <a href="#" target="_blank" rel="nofollow">鄂ICP备xxxxxx号</a>
    </span>
            </p>
        </div>

    </div>
</div>
<!--[if lte IE 6]>
<script src="/static/js/new_js/png.js" type="text/javascript"></script>
<script type="text/javascript">
    DD_belatedPNG.fix('img,.banner ul, li, dl, dt, dd, span, em, div, i, samp, a, b, .kuang');
</script>
<![endif]-->
</body>
</html>
<style>
    #focusMove:focus{
        outline: none;
    }
</style>
<script>
    function sendSearchParam() {
        var SearchParam=$("#SearchParam").val();
        window.location.href="/index/goods?SearchParam="+SearchParam;
    }
    <c:if test="${focusMove=='yes'}">
    console.log("focusMove")
    $("#focusMove").val("aaa");
    $("#focusMove").focus();
    </c:if>
</script>
