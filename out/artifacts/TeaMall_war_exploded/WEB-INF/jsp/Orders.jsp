<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<base href="<%=basePath%>">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/css.css" rel="stylesheet" type="text/css" />
    <link href="css/common.css" rel="stylesheet" tyle="text/css" />
    <link href="css/Orders.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.reveal.js" type="text/javascript"></script>
    <script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="js/jquery.sumoselect.min.js" type="text/javascript"></script>
    <script src="js/common_js.js" type="text/javascript"></script>
    <script src="js/footer.js" type="text/javascript"></script>
    <script src="js/jquery.jumpto.js" type="text/javascript"></script>
    <title>确认订单界面</title>
</head>
<script type="text/javascript">
    $(document).ready(function () {
        window.asd = $('.SlectBox').SumoSelect({ csvDispCount: 3 });
        window.test = $('.testsel').SumoSelect({okCancelInMulti:true });
    });
</script>
<body>
<!--顶部样式-->
<div id="top">
    <div class="top">
        <div class="Collection"><em></em><a href="#">收藏我们</a></div>
        <div class="hd_top_manu clearfix">
            <ul class="clearfix">
                <li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！<a href="#" class="red">[请登录]</a> 新用户<a href="#" class="red">[免费注册]</a></li>
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
                <li><a class="nav_on" id="mynav8"  href="#"><span>联系我们</span></a></li>
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
<div id="Orders" class="Inside_pages  clearfix">
    <div class="Orders_style clearfix">
        <div class="address clearfix">
            <div class="title">收货人信息</div>
            <div class="adderss_list clearfix">
                <div class="title_name">选择收货地址 <a href="#">+添加地址</a></div>
                <!--<div class="list" id="select">
               <ul class="confirm active">
               <div class="default">默认地址</div>
               <div class="adderss_operating">
                <div class="Operate"><a href="#" class="delete_btn"></a> <a href="#" class="modify_btn"></a></div>
               </div>
               <div class="user_address">
               <li>小张</li>
               <li>四川成都高新区创业路10号3栋1单元1102式</li>
               <li class="Postcode">610043</li>
               <li>18908269130</li>
               </div>
               </ul>
                <ul class="">
                 <div class="adderss_operating">
                <div class="Operate"><a href="#" class="delete_btn"></a> <a href="#" class="modify_btn"></a></div>
               </div>
                <div class="user_address">
               <li>小张</li>
               <li>四川成都高新区创业路10号3栋1单元1102式</li>
               <li class="Postcode">610043</li>
               <li>18908269130</li>
               </div>
               </ul>
                <ul class="">
                 <div class="adderss_operating">
                <div class="Operate"><a href="#" class="delete_btn"></a> <a href="#" class="modify_btn"></a></div>
               </div>
                <div class="user_address">
               <li>小张</li>
               <li>四川成都高新区创业路10号3栋1单元1102式</li>
               <li class="Postcode">610043</li>
               <li>18908269130</li>
               </div>
               </ul>
               </div>
              </div>
   -->        <!--收货地址样式-->
                <div class="Shipping_address">
                    <ul class="detailed">
                        <li><label>收货人姓名</label><span>张晓</span></li>
                        <li><label>电子邮件</label><span>4567454@qq.com</span></li>
                        <li><label>详细地址</label><span>四川成都武侯区簇景西路20号3栋1单元302号</span></li>
                        <li><label>邮政编码</label><span></span></li>
                        <li><label>移动电话</label><span></span></li>
                        <li><label>固定电话</label><span></span></li>
                    </ul>
                </div>
            </div>

            <form class="form" method="post">
                <fieldset>
                    <!--快递选择-->
                    <div class="express_delivery">
                        <div class="title_name">选择快递方式</div>

                        <ul class="dowebok">
                            <li><input type="radio" name="radio" data-labelauty="圆通快递">
                                <div class="description">
                                    <em class="arrow"></em>
                                    <p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
                                    <p>资费：15元</p>
                                    <p class="Note">满68元包邮</p>
                                    <p><a href="#">点击查看是否在配送范围内</a></p>
                                </div>
                            </li>
                            <li><input type="radio" name="radio" data-labelauty="中通快递">
                                <div class="description">
                                    <em class="arrow"></em>
                                    <p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
                                    <p>资费：15元</p>
                                    <p class="Note">满68元包邮</p>
                                </div>
                            </li>
                            <li><input type="radio" name="radio" data-labelauty="申通快递">
                                <div class="description">
                                    <em class="arrow"></em>
                                    <p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
                                    <p>资费：15元</p>
                                    <p class="Note">满68元包邮</p>
                                </div>
                            </li>
                            <li><input type="radio" name="radio" data-labelauty="邮政EMS">
                                <div class="description">
                                    <em class="arrow"></em>
                                    <p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
                                    <p>资费：15元</p>
                                    <p class="Note">满68元包邮</p>
                                </div>
                            </li>
                            <li><input type="radio" name="radio" data-labelauty="城际快递">
                                <div class="description">
                                    <em class="arrow"></em>
                                    <p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
                                    <p>资费：同城包邮</p>

                                </div>
                            </li>
                            <li><input type="radio" name="radio" data-labelauty="韵达快递">
                                <div class="description">
                                    <em class="arrow"></em>
                                    <p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
                                    <p>资费：15元</p>
                                    <p class="Note">满68元包邮</p>
                                </div>
                            </li>
                            <li><input type="radio" name="radio" data-labelauty="国通快递">
                                <div class="description">
                                    <em class="arrow"></em>
                                    <p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
                                    <p>资费：15元</p>
                                    <p class="Note">满68元包邮</p>
                                </div>
                            </li>
                            <li><input type="radio" name="radio" data-labelauty="顺丰快递">
                                <div class="description">
                                    <em class="arrow"></em>
                                    <p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
                                    <p>资费：15元</p>
                                    <p class="Note">满88元包邮</p>
                                </div>
                            </li>
                            <li><input type="radio" name="radio" data-labelauty="邮政小包">
                                <div class="description">
                                    <em class="arrow"></em>
                                    <p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
                                    <p>资费：15元</p>
                                    <p class="Note">满68元包邮</p>
                                </div>
                            </li>
                            <li><input type="radio" name="radio" data-labelauty="天天快递">
                                <div class="description">
                                    <em class="arrow"></em>
                                    <p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
                                    <p>资费：15元</p>
                                    <p class="Note">满68元包邮</p>
                                </div>
                            </li>
                        </ul>

                    </div>

                    <!--付款方式-->
                    <div class="payment">
                        <div class="title_name">支付方式</div>
                        <ul>
                            <li><input type="radio" name="radio" data-labelauty="余额支付"></li>
                            <li><input type="radio" name="radio" data-labelauty="支付宝"></li>
                            <li><input type="radio" name="radio" data-labelauty="财付通"></li>
                            <li><input type="radio" name="radio" data-labelauty="银联支付"></li>
                            <li><input type="radio" name="radio" data-labelauty="货到付款"></li>
                        </ul>
                    </div>
                    <!--发票样式-->
                    <div class="invoice_style">
                        <ul>
                            <li class="invoice_left"><input name="" type="checkbox" value="" data-labelauty="是否开发票"/> </li>
                            <li class="invoice_left"><select name="somename" class="SlectBox" onclick="console.log($(this).val())" onchange="console.log('change is firing')">
                                <option disabled="disabled" selected="selected">发票类型</option>
                                <option value="办公用品">办公用品</option>
                                <option value="食品">食品</option>
                                <option value="20元红包">20元红包</option>
                                <option value="50元红包">50元红包</option>
                                <option value="100元红包">100元红包</option>
                                <option value="200元红包">200元红包</option>
                            </select>
                            </li>
                            <li class="invoice_left">发票抬头
                                <input name="" type="text" class="text_info" /></li>
                            <li class="invoice_left">
                                <select name="somename" class="SlectBox" onclick="console.log($(this).val())" onchange="console.log('change is firing')">
                                    <option disabled="disabled" selected="selected">发票内容</option>
                                    <option value="办公用品">办公用品</option>
                                    <option value="食品">食品</option>
                                    <option value="数码配件">数码配件</option>
                                    <option value="电脑">电脑</option>
                                    <option value="手机">手机</option>
                                    <option value="200元红包">200元红包</option>
                                </select>

                            </li>
                        </ul>
                    </div>
                    <!--产品列表-->
                    <div class="Product_List">
                        <div class="envelopes">
                            选择已有红包<select name="somename" class="SlectBox" onclick="console.log($(this).val())" onchange="console.log('change is firing')">
                            <option disabled="disabled" selected="selected">选择红包金额</option>
                            <!--placeholder-->
                            <option value="5元红包">5元红包</option>
                            <option value="10元红包">10元红包</option>
                            <option value="20元红包">20元红包</option>
                            <option value="50元红包">50元红包</option>
                            <option value="100元红包">100元红包</option>
                            <option value="200元红包">200元红包</option>
                        </select>
                            或者输入红包序列号<input name="" type="text" class="text_number" /><input type="submit"  class="verification_btn" value="验证序列号"/>
                        </div>
                        <table>
                            <thead><tr class="title"><td class="name">商品名称</td><td class="price">商品价格</td><td class="Preferential">优惠价</td><td class="Quantity">购买数量</td><td class="Money">金额</td></tr></thead>
                            <tbody>
                            <tr>
                                <td class="Product_info">
                                    <a href="#"><img src="Products/11.jpg"  width="100px" height="100px"/></a>
                                    <a href="#" class="product_name">麻阳冰糖橙子甜橙冰糖柑8斤新鲜水果甜过永兴冰糖橙赣南脐橙包邮</a>
                                </td>
                                <td><i>￥</i>123.00</td>
                                <td><i>￥</i>112.00</td>
                                <td>2</td>
                                <td class="Moneys"><i>￥</i>224.00</td>
                            </tr>
                            <tr>
                                <td class="Product_info">
                                    <a href="#"><img src="Products/12.jpg"  width="100px" height="100px"/></a>
                                    <a href="#" class="product_name">麻阳冰糖橙子甜橙冰糖柑8斤新鲜水果甜过永兴冰糖橙赣南脐橙包邮</a>
                                </td>
                                <td><i>￥</i>123.00</td>
                                <td><i>￥</i>112.00</td>
                                <td>2</td>
                                <td class="Moneys"><i>￥</i>224.00</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="Pay_info">
                            <label>订单留言</label><input name="" type="text"  onkeyup="checkLength(this);" class="text_name " />  <span class="wordage">剩余字数：<span id="sy" style="color:Red;">50</span></span>
                        </div>
                        <!--价格-->
                        <div class="price_style">
                            <div class="right_direction">
                                <ul>
                                    <li><label>商品总价</label><i>￥</i><span>448.00</span></li>
                                    <li><label>优惠金额</label><i>￥</i><span>-23.00</span></li>
                                    <li><label>配&nbsp;&nbsp;送&nbsp;&nbsp;费</label><i>￥</i><span>0</span></li>
                                    <li class="shiji_price"><label>实&nbsp;&nbsp;付&nbsp;&nbsp;款</label><i>￥</i><span>425.00</span></li>
                                </ul>
                                <div class="btn"><input name="submit" type="submit" value="提交订单" class="submit_btn"/> <input name="" type="button" value="返回购物车"  class="return_btn"/></div>
                                <div class="integral right">待订单确认后，你将获得<span>345</span>积分</div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
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
        <li class="fixeBoxLi cart_bd" style="display:block;" id="cartboxs">
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
<script type="text/javascript">
    function checkLength(which) {
        var maxChars = 50; //
        if(which.value.length > maxChars){
            alert("您出入的字数超多限制!");
            // 超过限制的字数了就将 文本框中的内容按规定的字数 截取
            which.value = which.value.substring(0,maxChars);
            return false;
        }else{
            var curr = maxChars - which.value.length; //250 减去 当前输入的
            document.getElementById("sy").innerHTML = curr.toString();
            return true;
        }
    }
</script>
<script>
    $(function(){
        $(':input').labelauty();
    });
</script>
</body>
</html>

