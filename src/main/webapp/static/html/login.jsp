<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录-回购网 - 手机回收网 | 二手手机交易 | 笔记本回收 | 平板回收</title>
    <base href="/ihuishou/"/>
    <link rel="icon" href="http://javen666.com/huishou/small_logo.ico"/>
    <script type="text/javascript" src="/static/js/new_public.js"></script>
    <link href="/static/css/global.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/static/js/jquery-3.2.1.min.js"></script>
</head>
<body style=" background:#fff">
<form method="post" id="login_form" name="login_form" action="">
    <input type="hidden" id="t" name="t" value="login"/>
    <input type="hidden" id="hidd_validate_code" name="hidd_validate_code" value="2bc38f170b805c7217c71eeeb9ba7a19"/>
    <!--注册-->
    <div class="regist_top page"><a href=""><img src="http://javen666.com/huishou/main_logo.png"
                                                 style="vertical-align:middle"></a><span>欢迎登录</span></div>
    <div class="regist">
        <div class="regist_l"><img src="http://javen666.com/huishou/main_img.png"/></div>
        <div class="regist_r">
            <div class="c2"><span>登录名</span>
                <div class="c1_bg">
                    <input type="text" name="username" id="username" class="input_txt3" value="" class="input_txt1"/>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="c2" style="margin-bottom:0"><span>密码</span>
                <div class="c1_bg">
                    <input type="password" name="password" id="password" class="input_txt5"
                           onkeydown="if(event.keyCode==13) return submit_login_form();"/>
                </div>
                <div class="clear"></div>
            </div>
            <div class="c2" style="height:42px; line-height:42px; margin-bottom:0"><span>&nbsp;</span>
                <label>
                    <input id="remeberMe" name="remeberMe" type="checkbox" value="true"/>
                    <em>两周内自动登录</em></label>

                <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <div class="c2"><span>&nbsp;</span>
                <input type="button" value="立即登录" id="sub_button" class="input_btn3"
                       onclick="submit_login_form('null')"/>
                <div class="clear"></div>
            </div>
            <div class="c2"><span>&nbsp;</span><a href="/lr/r.v" class="hg_btn">注册加入回购网</a>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    </div>
    <!--注册-->
</form>
<link rel="stylesheet" type="text/css" href="/css/alert_zhe.css"/>

<script type="text/javascript" src="/js/alert_zhe.js"></script>
<!-- 弹出框start -->
<div id="Loading_child" class="Loading" style="display:none; height:450px;" onDblClick="ttt('Loading_child');">
    <div class="tyd_box">
        <div class="tyd_box_c">
            <div class="tyd_box_title">
                <span id="Loading_child_title"></span><a href="javascript:ttt('Loading_child')"><img
                    src="/images/close1.gif" border="0"/></a>
            </div>
            <div class="tyd_box_content" style="width:612px;overflow:auto; height:360px;">
                <iframe id="Loading_child_iframe_id" name="iframe_id" width="612" height="360" border="0"
                        frameborder="0"></iframe>
            </div>
        </div>
    </div>
</div>
<div id="mbDIV" style="display:none;"></div>
<!--  弹出框end -->
</body>
</html>
<script>
    function submit_login_form(settle) {
        if ($.trim($("#username").val()) == '' || $.trim($("#username").val()) == '用户名') {
            alert("请输入登录账户！");
            $("#username").focus();
            return false;
        }
        if ($.trim($("#password").val()) == '') {
            alert("请输入登录密码！");
            $("#password").focus();
            return false;
        }
//        alert(settle);
        $.post("/lr/l",
            {
                uname: $("#username").val(), pwd: $("#password").val(),
                remeberMe: $("#remeberMe").val(), settle: settle
            }, function (data) {
                if (data == "faild") {
                    alert("用户名或者密码错误");
                } else if (data == "settle") {
                    window.location.href="/index/01";
                    alert(data)
                } else if (data=="success") {
                    window.location.href="/index/01";
                    alert("登陆成功！")
                }
            });
    }

    //    function find_pwd(url){
    //        open_div_extends('找回密码',url,'Loading_child');
    //    }
</script>
