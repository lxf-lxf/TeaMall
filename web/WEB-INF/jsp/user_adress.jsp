<%@ page import="com.mall.entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--User: linxifan  Date: 2020/8/11  Time: 18:30--%>
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
    <link href="css/common.css" rel="stylesheet" type="text/css" />
    <link href="Threelinkage/linkage.css" rel="stylesheet"  type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/sweetalert.css">
    <link rel="stylesheet" type="text/css" href="css/show.css">
    <link rel="stylesheet" type="text/css" href="css/ButtonStyle.css">
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="js/common_js.js" type="text/javascript"></script>
    <script src="js/jquery.foucs.js" type="text/javascript"></script>
    <script src="js/sweetalert-dev.js" type="text/javascript"></script>

    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/jsAddress.js" type="text/javascript"></script>
    <title>用户地址管理</title>
</head>

<body>

<!--顶部样式-->
<div id="top">
    <div class="top">
        <div class="Collection"><em></em><a href="#">收藏我们</a></div>
        <div class="hd_top_manu clearfix">
            <ul class="clearfix">
                <li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！
                <c:if test="${user == null}">
                    <a href="login" class="red">[请登录]</a> 新用户<a href="register" class="red">[免费注册]</a>
                </c:if>
                <c:if test="${user!=null}">
                    <a href="user_info" class="red">${user.realname}</a><a href="user/logout" class="black">退出登录</a>
                </c:if>
                <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">我的订单</a></li>
                <li class="hd_menu_tit" data-addclass="hd_menu_hover"> <a href="#">购物车(<b>0</b>)</a> </li>
                <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">联系我们</a></li>
                <li class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a href="#" class="hd_menu">客户服务</a>
                    <div class="hd_menu_list">
                        <ul>
                            <li><a href="#">常见问题</a></li>
                            <li><a href="#">在线退换货</a></li>
                            <li><a href="#">在线投诉</a></li>
                            <li><a href="#">配送范围</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--logo和搜索样式-->
<div id="header"  class="header">
    <div class="logo">
        <a href="#"><img src="images/logo.png" /></a>
        <div class="phone">
            免费咨询热线:<span class="telephone">400-3454-343</span>
        </div>
    </div>
    <div class="Search">
        <p><input name="" type="text"  class="text"/><input name="" type="submit" value=""  class="Search_btn"/></p>
        <p class="Words"><a href="#">苹果</a><a href="#">香蕉</a><a href="#">菠萝</a><a href="#">西红柿</a><a href="#">橙子</a><a href="#">苹果</a></p>
    </div>
</div>
<!--导航栏样式-->
<div id="Menu" class="clearfix">
    <div class="Menu_style">
        <div id="allSortOuterbox" class="display">
            <div class="Category"><a href="#" class="Menu_img"><em></em></a></div>
            <div class="hd_allsort_out_box_new">
                <!--左侧栏目开始-->
                <div class="Menu_list">
                    <div class="menu_title">茶叶品种</div>
                    <a href="#">贡茗茶</a><a href="#">冠茗茶</a><a href="#">佳茗茶</a><a href="#">珍茗茶</a><a href="#">绿茶</a><a href="#">毛尖茶</a>
                </div>
                <div class="Menu_list">
                    <div class="menu_title">茶叶价格</div>
                    <a href="#">100以下</a><a href="#">100-200</a><a href="#">200-400</a><a href="#">400-600</a><a href="#">600-900</a><a href="#">1000以上</a>
                </div>
                <div class="Menu_list">
                    <div class="menu_title">推荐茶叶</div>
                    <ul class="recommend">
                        <li><a href="#" title="[2015年新茶]巴山雀舌毛尖茶新茶，含硒">[2015年新茶]巴山雀舌...</a></li>
                        <li><a href="#" title="[2015年新茶]巴山雀舌毛尖茶新茶，含硒">[2015年新茶]巴山雀舌...</a></li>
                        <li><a href="#" title="[2015年新茶]巴山雀舌毛尖茶新茶，含硒">[2015年新茶]巴山雀舌...</a></li>
                        <li><a href="#" title="[2015年新茶]巴山雀舌毛尖茶新茶，含硒">[2015年新茶]巴山雀舌...</a></li>
                        <li><a href="#" title="[2015年新茶]巴山雀舌毛尖茶新茶，含硒">[2015年新茶]巴山雀舌...</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="Navigation" id="Navigation">
            <ul class="Navigation_name">
                <li><a class="nav_on" id="mynav1"  href="index.html"><span>首页</span></a></li>
                <li><a class="nav_on" id="mynav2"  href="#"><span>巴山雀舌</span></a></li>
                <li><a class="nav_on" id="mynav3"  href="#"><span>贡茗</span></a></li>
                <li><a class="nav_on" id="mynav4"  href="#"><span>冠茗</span></a></li>
                <li><a class="nav_on" id="mynav5"  href="#"><span>臧芝堂（藏茶）</span></a></li>
                <li><a class="nav_on" id="mynav6"  href="#"><span>大巴山（茗茶）</span></a></li>
                <li><a class="nav_on" id="mynav7"  href="#"><span>达州（茶）</span></a></li>
                <li><a class="nav_on" id="mynav8"  href="#"><span>活动</span></a></li>
                <li><a class="nav_on" id="mynav9"  href="#"><span>联系我们</span></a></li>
            </ul>
        </div>
        <script>$("#Navigation").slide({titCell:".Navigation_name li"});</script>
        <!--购物车-->

        <div class="hd_Shopping_list" id="Shopping_list">
            <div class="s_cart"><em></em><a href="#">我的购物车</a> <i class="ci-right">&gt;</i><i class="ci-count" id="shopping-amount">0</i></div>
            <div class="dorpdown-layer">
                <div class="spacer"></div>
                <!--<div class="prompt"></div><div class="nogoods"><b></b>购物车中还没有商品，赶紧选购吧！</div>-->
                <ul class="p_s_list">
                    <li>
                        <div class="img"><img src="images/tianma.png"></div>
                        <div class="content"><p><a href="#">产品名称</a></p><p>颜色分类:紫花8255尺码:XL</p></div>
                        <div class="Operations">
                            <p class="Price">￥55.00</p>
                            <p><a href="#">删除</a></p></div>
                    </li>
                </ul>
                <div class="Shopping_style">
                    <div class="p-total">共<b>1</b>件商品　共计<strong>￥ 515.00</strong></div>
                    <a href="#" title="去购物车结算" id="btn-payforgoods" class="Shopping">去购物车结算</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!--用户中心(地址管理界面)-->
<div class="user_style clearfix" id="user">
    <script>
        //检测输入框逻辑
        function checkadname() {//检测收货人
            var nameflag = false;
            var adname = $("input[name='adname']").val()
            if (adname == "" || adname == null || adname == undefined) {
                $("#Span_name").html("收货人不能为空");
            } else {
                $("#Span_name").html("");
                nameflag=true;
            }
            return nameflag;
        }
        function checkdetadress() {//检测详细地址
            var detadressflag = false;
            var detadress = $("input[name='detadress']").val()
            if (detadress == "" || detadress == null || detadress == undefined) {
                $("#Span_detadress").html("详细地址地址不能为空");
            } else {
                $("#Span_detadress").html("");
                detadressflag=true;
            }
            return detadressflag;
        }
        function checkpostcode() {//检测邮编
            var postcodeflag = false;
            var postcode = $("input[name='postcode']").val()
            if (postcode == "" || postcode == null || postcode == undefined) {
                $("#Span_postcode").html("邮编不能为空");
            } else{
                $("#Span_postcode").html("");
                postcodeflag=true;
            }
            return postcodeflag;
        }

        function checkphone(){//检测手机号
            var phoneflag= false;
            var phone = $("input[name='phone']").val()
            var reg =/^0?1[3|4|5|6|7|8][0-9]\d{8}$/;
            if (reg.test(phone)) {
                phoneflag=true;
                $("#Span_phone").html("");
            } else {
                $("#Span_phone").html("请输入正确的手机号");
            }
            return phoneflag;
        }

        function onsub(){
            return (checkphone() && checkpostcode() && checkadname() && checkdetadress());
        }


        $(document).ready(function(){
            $("#addAdress").click(function(){
                if (!onsub()){
                    swal("","请正确填写地址信息。。","error")
                }else{

                    var adname=$("input[name='adname']").val();var uid=${user.uid};var province=$("#select_prov option:selected").val();
                    var city=$("#select_city option:selected").val();var area=$("#select_area option:selected").val();var detadress=$("input[name='detadress']").val();
                    var phone=$("input[name='phone']").val();var postcode=$("input[name='postcode']").val();
                    $.post(
                        "adress/addAdress",
                        {"adname":adname,"uid":uid,"province":province,"city":city,
                            "area":area,"detadress":detadress,"phone":phone,"postcode":postcode},
                        function (data) {
                            if (data == 1){
                                swal({title:"",text:"添加地址成功！",type:"success"},
                                    function (){
                                    location.href="adress/selByPageNum/${pageNum}";
                                });
                            }else{
                                swal("","添加地址失败。。","error")
                            }
                        }
                    )
                }
            });
        });
        function selUpdateAdress(aid) {
            location.href="adress/selUpdateAdress/"+aid;
        }
        //根据aid删除地址
        function delAdress(aid){
            swal({
                    title: "确定删除吗？",
                    text: "你的地址将被删除！",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "确定删除！",
                    cancelButtonText: "取消删除！",
                    closeOnConfirm: false,
                    closeOnCancel: false
                },
                function(isConfirm){
                    if (isConfirm) {
                        $.post(
                            "adress/delAdress",
                            {"aid":aid},
                            function (data) {
                                if (data == 1){
                                    swal({title:"删除",text:"地址已被删除！",type:"success"},
                                        function (){
                                            location.href="adress/selByPageNum/${pageNum}";
                                        });
                                }else{
                                    swal("删除！", "地址删除失败,请联系管理员。",
                                        "error");
                                }
                            }
                        )
                    } else {
                        swal("取消！", "取消删除地址。。",
                            "error");
                    }
                });
        }
    </script>
    <div class="user_title"><em></em>用户中心</div>
    <div class="clearfix user" >
        <!--左侧菜单栏样式-->
        <div class="user_left">
            <div class="user_info">
                <div class="Head_portrait"><img src="images/people.png"  width="80px" height="80px"/><!--头像区域--></div>
                <div class="user_name">用户蜜甘草<a href="#">[个人资料]</a></div>
            </div>
            <ul class="Section">
                <li><a href="#"><em></em><span>我的特色馆</span></a></li>
                <li><a href="#"><em></em><span>个人信息</span></a></li>
                <li><a href="#"><em></em><span>修改密码</span></a></li>
                <li><a href="#"><em></em><span>我的订单</span></a></li>
                <li><a href="#"><em></em><span>我的评论</span></a></li>
                <li><a href="#"><em></em><span>我的积分</span></a></li>
                <li><a href="#"><em></em><span>我的收藏</span></a></li>
                <li><a href="adress/selByPageNum/1"><em></em><span>收货地址管理</span></a></li>
            </ul>
        </div>
        <script src="Threelinkage/kit.js"></script>
        <!--[if IE]>
        <script src="Threelinkage/ieFix.js"></script>
        <![endif]-->
        <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-30210234-1']);
            _gaq.push(['_trackPageview']);
            (function() {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

        </script>
        <script src="Threelinkage/dom.js"></script>
        <script src="Threelinkage/event.js"></script>
        <script src="Threelinkage/math.js"></script>
        <script src="Threelinkage/TreeDict.js"></script>
        <script src="Threelinkage/form.js"></script>
        <script src="Threelinkage/list.js"></script>
        <!--json data-->
        <script src="Threelinkage/json-data.js" charset="utf-8"></script>
        <!--右侧内容样式-->

        <div class="right_style r_user_style">
            <div class="user_Borders">
                <div class="title_name">
                    <span class="name">地址管理</span>
                </div>
                <div class="about_user_info">
                        <div class="user_layout">
                            <ul>
                                <li class="li"><label class="user_title_name">收件人姓名：</label>
                                    <input name="adname" type="text" onblur="checkadname()" class="add_text" ><i>*</i>
                                    <span id="Span_name"></span>
                                </li>
                                <li class="li">
                                    <div class="select">
                                    <span ><label> 省份 </label>
                                        <select class="select_prov" id="select_prov"></select>
                                    </span>
                                        <span ><label> 市/县 </label>
                                        <select class="select_city" id="select_city"></select>
                                    </span>
                                        <span ><label> 区/县 </label>
                                        <select class="select_area" id="select_area"></select>
                                    </span>
                                        <script>
                                            addressInit("select_prov","select_city","select_area")
                                        </script>
                                    </div>
                                </li >
                                <li class="li"><label class="user_title_name">收货地址：</label>
                                    <input name="detadress" type="text" class="add_text" onblur="checkdetadress()" >
                                    <span id="Span_detadress"></span>
                                </li>
                                <li class="li"><label class="user_title_name">邮&nbsp;&nbsp;&nbsp;&nbsp;编：</label>
                                    <input name="postcode" maxlength="8" type="tel" class="add_text" onblur="checkpostcode()" oninput = "value=value.replace(/[^\d]/g,'')">
                                    <i>*</i><span id="Span_postcode"></span>
                                </li>
                                <li class="li"><label class="user_title_name">手&nbsp;机&nbsp;号：</label>
                                    <input name="phone" maxlength="11" type="tel" class="add_text" onblur="checkphone()" oninput = "value=value.replace(/[^\d]/g,'')">
                                    <i>*</i><span id="Span_phone"></span>
                                </li>
                            </ul>
                            <div class="operating_btn"><input id="addAdress" type="submit" value="确认" class="submit—btn"></div>
                        </div>
                </div>
                <!--地址列表-->
                <div class="Address_List">
                    <div class="title_name"><span class="name">用户地址列表</span></div>
                    <div class="list">
                        <table>
                            <thead>
                            <td class="list_name_title0">收件人姓名</td>
                            <td class="list_name_title1">地区</td>
                            <td class="list_name_title2">邮编</td>
                            <td class="list_name_title3">电话</td>
                            <td class="list_name_title4">收货地址</td>
                            <td class="list_name_title5">操作</td>
                            </thead>
                            <c:forEach items="${adressList}" var="adress">
                                <tr>
                                    <td>${adress.adname}</td>
                                    <td>${adress.province} ${adress.city} ${adress.area}</td>
                                    <td>${adress.postcode}</td>
                                    <td>${adress.phone}</td>
                                    <td>${adress.detadress}</td>
                                    <td style="width: 10vm">
                                        <button style="width: 9vm;height: 30px" onclick="selUpdateAdress(${adress.aid})">修改</button>
                                        <button style="width: 9vm;height: 30px;"onclick="delAdress(${adress.aid})">删除</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
                <!--地址序号-->
                <div class="pagin">
                    <div class="message">共<i class="blue">${total}</i>条记录，当前显示第&nbsp;<i class="blue">${pageNum}</i>页</div>
                    <ul class="paginList" >
                        <c:if test="${pageNum == 1}">
                            <li  class="paginItem current"><a href="adress/selByPageNum/1">Fisrt</a></li>
                            <li  class="paginItem current"><a href="adress/selByPageNum/${pageNum}">${pageNum}</a></li>
                            <li  class="paginItem"><a href="adress/selByPageNum/${pageNum+1}">${pageNum+1}</a></li>
                            <li  class="paginItem"><a href="adress/selByPageNum/${pageNum+2}">${pageNum+2}</a></li>
                        </c:if>
                        <c:if test="${pageNum > 1}">
                            <li  class="paginItem "><a href="adress/selByPageNum/1">Fisrt</a></li>
                            <li class="paginItem"><a href="adress/selByPageNum/${pageNum-1}">${pageNum-1}</a></li>
                            <li class="paginItem current"><a href="adress/selByPageNum/${pageNum}">${pageNum}</a></li>
                            <li class="paginItem"><a href="adress/selByPageNum/${pageNum+1}">${pageNum+1}</a></li>
                        </c:if>
                    </ul>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="footerbox">
    <!--友情链接-->
    <div class="Links">
        <div class="link_title">友情链接</div>
        <div class="link_address"><a href="#">四川茶叶协会</a>  <a href="#">链接地址</a>  <a href="#">链接地址</a>  <a href="#">链接地址 </a>   <a href="#">链接地址</a> <a href="#">链接地址</a> <a href="#">链接地址</a></div>
    </div>
</div>
<!--底部样式-->
<div class="footer">
    <div class="streak"></div>
    <div class="footerbox clearfix">
        <div class="left_footer">
            <div class="img"><img src="images/img_33.png" /></div>
            <div class="phone">
                <h2>服务咨询电话</h2>
                <p class="Numbers">400-3455-334</p>
            </div>
        </div>
        <div class="right_footer">
            <dl>
                <dt><em class="icon_img"></em>购物指南</dt>
                <dd><a href="#">怎样购物</a></dd>
                <dd><a href="#">积分政策</a></dd>
                <dd><a href="#">会员优惠</a></dd>
                <dd><a href="#">订单状态</a></dd>
                <dd><a href="#">产品信息</a></dd>
                <dd><a href="#">怎样购物</a></dd>
            </dl>
            <dl>
                <dt><em class="icon_img"></em>配送方式</dt>
                <dd><a href="#">快递资费及送达时间</a></dd>
                <dd><a href="#">快递覆盖地区查询</a></dd>
                <dd><a href="#">验货与签收</a></dd>
                <dd><a href="#">订单状态</a></dd>
                <dd><a href="#">产品信息</a></dd>
                <dd><a href="#">怎样购物</a></dd>
            </dl>
            <dl>
                <dt><em class="icon_img"></em>配送方式</dt>
                <dd><a href="#">货到付款</a></dd>
                <dd><a href="#">支付宝</a></dd>
                <dd><a href="#">财付通</a></dd>
                <dd><a href="#">网银支付</a></dd>
                <dd><a href="#">银联支付</a></dd>
            </dl>
            <dl>
                <dt><em class="icon_img"></em>售后服务</dt>
                <dd><a href="#">退换货原则</a></dd>
                <dd><a href="#">退换货要求与运费规则</a></dd>
                <dd><a href="#">退换货流程</a></dd>
            </dl>
            <dl>
                <dt><em class="icon_img"></em>关于我们</dt>
                <dd><a href="#">关于我们</a></dd>
                <dd><a href="#">友情链接</a></dd>
                <dd><a href="#">媒体报道</a></dd>
                <dd><a href="#">新闻动态</a></dd>
                <dd><a href="#">企业文化</a></dd>

            </dl>
        </div>
    </div>
    <div class="slogen">
        <div class="footerbox clearfix ">
            <ul class="wrap">
                <li>
                    <a href="#"><img src="images/icon_img_02.png" data-bd-imgshare-binded="1"></a>
                    <b>正品保证</b>
                    <span>正品行货 放心选购</span>
                </li>
                <li><a href="#"><img src="images/icon_img_03.png" data-bd-imgshare-binded="2"></a>
                    <b>满68元包邮</b>
                    <span>购物满68元，免费快递</span>
                </li>
                <li>
                    <a href="#"><img src="images/icon_img_04.png" data-bd-imgshare-binded="3"></a>
                    <b>厂家直供</b>
                    <span>价格更低，质量更可靠</span>
                </li>
                <li>
                    <a href="#"><img src="images/icon_img_05.png" data-bd-imgshare-binded="4"></a>
                    <b>权威认证</b>
                    <span>政府扶持单位，安全保证</span>
                </li>
            </ul>
        </div>
    </div>
    <div class="footerbox Copyright">
        <p><a href="#">关于我们</a> | <a href="#">隐私申明</a> | <a href="#">成为供应商</a> | <a href="#">茶叶</a> | <a href="#">博客</a> |<a href="#">友情链接</a> | <a href="#">网站地图</a></p>
        <p>Copyright 2010 - 2015 巴山雀舌 四川巴山雀舌茗茶实业有限公司 zuipin.cn All Rights Reserved </p>
        <p>川ICP备10200063号-1</p>
        <a href="#" class="return_img"></a>
    </div>
</div>
<!--右侧菜单栏购物车样式-->
<div class="fixedBox">
    <ul class="fixedBoxList">
        <li class="fixeBoxLi user"><a href="#"> <span class="fixeBoxSpan"></span> <strong>用户</strong></a> </li>
        <li class="fixeBoxLi cart_bd" style="display:block;" id="cartboxs1">
            <p class="good_cart">0</p>
            <span class="fixeBoxSpan"></span> <strong>购物车</strong>
            <div class="cartBox">
                <div class="bjfff"></div><div class="message">购物车内暂无商品，赶紧选购吧</div>    </div></li>
        <li class="fixeBoxLi Service "> <span class="fixeBoxSpan"></span> <strong>客服</strong>
            <div class="ServiceBox">
                <div class="bjfffs"></div>
                <dl onclick="javascript:;">
                    <dt><img src="images/Service1.png"></dt>
                    <dd><strong>QQ客服1</strong>
                        <p class="p1">9:00-22:00</p>
                        <p class="p2"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=123456&amp;site=DGG三端同步&amp;menu=yes">点击交谈</a></p>
                    </dd>
                </dl>
                <dl onclick="javascript:;">
                    <dt><img src="images/Service1.png"></dt>
                    <dd> <strong>QQ客服1</strong>
                        <p class="p1">9:00-22:00</p>
                        <p class="p2"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=123456&amp;site=DGG三端同步&amp;menu=yes">点击交谈</a></p>
                    </dd>
                </dl>
            </div>
        </li>
        <li class="fixeBoxLi code cart_bd " style="display:block;" id="cartboxs">
            <span class="fixeBoxSpan"></span> <strong>微信</strong>
            <div class="cartBox">
                <div class="bjfff"></div>
                <div class="QR_code">
                    <p><img src="images/erweim.jpg" width="150px" height="150px" style=" margin-top:10px;" /></p>
                    <p>微信扫一扫，关注我们</p>
                </div>
            </div>
        </li>

        <li class="fixeBoxLi Home"> <a href="./"> <span class="fixeBoxSpan"></span> <strong>收藏</strong> </a> </li>
        <li class="fixeBoxLi BackToTop"> <span class="fixeBoxSpan"></span> <strong>返回顶部</strong> </li>
    </ul>
</div>

</body>
</html>
