<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/css.css" rel="stylesheet" type="text/css" />
    <link href="css/common.css" rel="stylesheet" tyle="text/css" />
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="js/common_js.js" type="text/javascript"></script>
    <title>用户注册</title>
</head>

<body>
<!--顶部样式-->
<div class="common_top">
    <div class="Narrow">
        <div class=" left logo"><a href="#"><img src="images/logo.png" /></a></div>
        <!--电话图层-->
        <div class="phone"><label>全国服务热线：</label><em>400-345-5633</em></div>
    </div>
</div>
<!--用户注册样式-->
<div class="registered_style Narrow clearfix">
    <div class="left_advertising">
        <img src="images/bg_03.png" />
    </div>
    <div class="right_register">
        <div class="register_Switching" id="register_Switching">
            <div class="hd">
                <ul><li>快速注册</li><li>普通注册</li></ul>
            </div>
            <div class="bd">
                <ul>
                    <form id="form1" name="form1" method="post" action="">
                        <div class="form clearfix">
                            <div class="item"><label class="rgister-label">手&nbsp;&nbsp;机&nbsp;&nbsp;号：</label><input name="" type="text"  class="text" /></div>
                            <div class="item"><label class="rgister-label" >验&nbsp;&nbsp;证&nbsp;&nbsp;码：</label><input name="" type="text"  class="text" /><a class="phone_verification">获取验证码</a></div>
                            <div class="item-ifo">
                                <input type="checkbox" class="checkbox left" checked="checked" id="readme" onclick="agreeonProtocol();">
                                <label for="protocol" class="left">我已阅读并同意<a href="#" class="blue" id="protocol">《福际商城用户注册协议》</a></label>
                            </div>
                        </div>
                        <div class="rgister-btn">
                            <a href="javascript:;" class="btn_rgister">注&nbsp;&nbsp;&nbsp;&nbsp;册</a>
                        </div>
                        <div class="Note"><span class="login_link">已是会员<a href="login.html">请登录</a></span></div>
                    </form>
                </ul>
                <ul>
                    <form method="post" action="user/register" onsubmit="sub()">
                        <div class="form clearfix">
                            <div class="item">
                                <label class="rgister-label">用&nbsp;&nbsp;户&nbsp;&nbsp;名：
                                </label><input name="uname" type="text" class="text" id="uname" onkeyup="checkName()" /><b>*</b>
                                <span id="nameSpan"></span>
                            </div>
                            <div class="item">
                                <label class="rgister-label" >密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
                                <input name="password" type="password"  class="text" id="password" onkeyup="checkPwd()" /><b>*</b>
                                <span id="pwdSpan"></span>
                            </div>
                            <div class="Password_qd">
                                <ul><li class="r">弱</li><li class="z">中</li><li class="q">强</li></ul>
                            </div>
                            <div class="item">
                                <label class="rgister-label " >确认密码：</label>
                                <input name="repwd" type="password" class="text" id="repwd" onkeyup="checkRepwd()"/><b>*</b>
                                <span id="repwdSpan"></span>
                            </div>
                            <div class="item">
                                <label class="rgister-label" >电子邮箱：</label>
                                <input name="email" type="text"  class="text" id="email" onmouseover="checkEmail()" /><b>*</b>
                                <span id="emailSpan"></span>
                            </div>
                            <div class="item-ifo">
                                <input type="checkbox" class="checkbox left" id="checkbox" onclick="agreeonProtocol();">
                                <label for="protocol" class="left">我已阅读并同意<a href="#" class="blue" id="protocol">《福际商城用户注册协议》</a></label>
                            </div>
                        </div>
                        <div class="rgister-btn">
                            <input class="btn_rgister" type="submit" value="注&nbsp;&nbsp;&nbsp;&nbsp;册" id="btn_register"/>
                        </div>
                        <div class="Note"><span class="login_link">已是会员<a href="login">请登录</a></span></div>
                    </form>
                </ul>
            </div>
        </div>
        <script>jQuery(".register_Switching").slide({trigger:"click"});</script>
    </div>
</div>
<!--底部样式-->
<div class="bottom_footer">
    <p><a href="#">关于我们</a> | <a href="#">联系我们</a> | <a href="#">商家入驻</a> | <a href="#">法律申明</a> | <a href="#">友情链接</a>  </p>
    <p>Copyright©2014四川金祥保险销售有限公司.All Rights Reserved. </p>
    <p>川ICP备09150084号</p>
</div>

<script src="js/jquery.js"></script>
<script>

        function checkName(){
            var unameFlag = false;
            var nameLength = $("#uname").val().length;
            if("" !== nameLength){
                if(nameLength >= 10 || nameLength <= 4){
                    $("#nameSpan").html("账号长度必须大于等于4小于等于10");
                }else{
                    $("#nameSpan").html("账号可以使用");
                    unameFlag = true;
                }
            }else {
                $("#nameSpan").html("账号长度不能为空");
            }
            return unameFlag;
        }

        function checkPwd(){
            var password = false;
            var pwdLength = $("#password").val().length;
            if("" !== pwdLength){
                if(pwdLength > 15 || pwdLength < 5){
                    $("#pwdSpan").html("密码长度必须大于5位数小于15位数");
                }else{
                    $("#pwdSpan").html("密码可以使用");
                    password = true;
                }
            }else {
                $("#nameSpan").html("密码长度不能为空");
            }
            return password;
        }

        function checkRepwd(){
            var repwdFlag = false;
            var pwd = $("#password").val();
            var repwd = $("#repwd").val();
            if(pwd !== repwd){
                $("#repwdSpan").html("俩次密码必须一致");
            }else {
                $("#repwdSpan").html("密码一致");
                repwdFlag = true;
            }
            return repwdFlag;
        }

        function checkEmail(){
            var emailFlag = false;
            var value = $("#email").val();
            var reg = new RegExp("^[a-z0-9A-Z]+[- | a-z0-9A-Z . _]+@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-z]{2,}$");
            if(!reg.test(value)){
                $("#emailSpan").html("邮箱不符合规则")
            }else{
                $("#emailSpan").html("邮箱可以使用");
                emailFlag = true;
            }
            return emailFlag;
        }


        function clickBox() {
            var checkBox = false;
            var flag = $(this).is(':checked');
            if(flag){
                checkBox=false;
            }
            return checkBox;
        }

        function sub() {
            if(checkName() && checkPwd() && repwd() && checkEmail && checkBox){
                return true;
            }else{
                return false;
            }
        }
</script>
</body>
</html>

