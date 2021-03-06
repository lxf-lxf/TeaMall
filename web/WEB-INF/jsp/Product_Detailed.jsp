<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/css.css" rel="stylesheet" type="text/css" />
    <link href="css/common.css" rel="stylesheet" tyle="text/css" />
    <link href="css/show.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.min.1.8.2.js" type="text/javascript"></script>
    <script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="js/common_js.js" type="text/javascript"></script>
    <script src="js/footer.js" type="text/javascript"></script>
    <script src="js/jqzoom.js" type="text/javascript"></script>
    <!--[if IE 7]>
    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css">
    <![endif]-->
    <title>产品名称详细介绍购买</title>
</head>

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
<!--内页样式-->
<div class="Inside_pages">
    <!--面包屑-->
    <div class="Location_link">
        <em></em><a href="#">产品中心</a>  &lt;   <a href="#">巴山雀舌</a>  &lt;   <a href="#">贡茗产品介绍</a>
    </div>
    <!--产品购买介绍样式-->
    <div class="Detailed">
        <!--产品详细介绍-->
        <div class="Details_style clearfix" id="goodsInfo">
            <div class="mod_picfold clearfix">
                <div class="clearfix" id="detail_main_img">
                    <div class="layout_wrap preview">
                        <div id="vertical" class="bigImg">
                            <img src="mid/01.jpg" width="" height="" alt="" id="midimg" />
                            <div style="display:none;" id="winSelector"></div>
                        </div>
                        <div class="smallImg">
                            <div class="scrollbutton smallImgUp disabled">&lt;</div>
                            <div id="imageMenu">
                                <ul>
                                    <li><img src="${Good.photo}" width="68" height="68" alt="洋妞"/></li>
                                    <li><img src="${Good.photo}" width="68" height="68" alt="洋妞"/></li>
                                    <li><img src="${Good.photo}" width="68" height="68" alt="洋妞"/></li>
                                    <li><img src="${Good.photo}" width="68" height="68" alt="洋妞"/></li>
                                    <li><img src="small/05.jpg" width="68" height="68" alt="洋妞"/></li>
                                    <li><img src="small/06.jpg" width="68" height="68" alt="洋妞"/></li>
                                    <li><img src="small/07.jpg" width="68" height="68" alt="洋妞"/></li>
                                </ul>
                            </div>
                            <div class="scrollbutton smallImgDown">&gt;</div>
                        </div><!--smallImg end-->
                        <div id="bigView" style="display:none;"><div><img width="800" height="800" alt="" src="" /></div></div>
                    </div>
                </div>
                <div class="Sharing">
                    <div class="bdsharebuttonbox bdshare-button-style0-16" data-bd-bind="1441079683326"><a href="#" class="bds_more" data-cmd="more">分享到：</a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
                    <script>
                        window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{"bdSize":16},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
                    </script>
                    <!--收藏-->
                    <div class="Collect"><a href="javascript:collect(92)"><em class="ico1"></em>收藏商品( 2345 )</a></div>
                </div>
            </div>
            <!--信息样式-->
            <div class="textInfo">
                <form action="javascript:addToCart(97)" name="ECS_FORMBUY" id="ECS_FORMBUY">
                    <div class="title"><h1></h1><p>${Good.gname}</p></div>
                    <div class="mod_detailInfo_priceSales">
                        <div class="margins">
                            <div class="Price clearfix text_name"><label>价格</label><span class="Prices"><h4>¥${Good.size.price}</h4> <b>${Good.size.marketPrice}</b></span></div>
                            <div class="Activity clearfix text_name"><label>重量</label><span class="weight">${Good.size.weight}</span></div>
                            <div class="Size clearfix text_name"><label>规格</label><a href="#">${Good.size.specs}</a></div>
                            <div class="Sales_volume">
                                <div class="Sales_info"><h5>销量</h5><b>2345</b></div>
                            </div>
                        </div>
                        <div class="s_Review">
                            <a href="#">好评率<b>95%</b>[评论<b>87653</b>条]</a>
                        </div>

                    </div>
                    <div class="buyinfo" id="detail_buyinfo">
                        <dl>
                            <dt>数量</dt>
                            <dd>
                                <div class="choose-amount left">
                                    <a class="btn-reduce" href="javascript:;" onclick="setAmount.reduce('#buy-num')">-</a>
                                    <a class="btn-add" href="javascript:;" onclick="setAmount.add('#buy-num')">+</a>
                                    <input class="text" id="buy-num" value="1" onkeyup="setAmount.modify('#buy-num');">
                                </div>
                                <div class="P_Quantity">剩余：${Good.size.stock.number}件</div>
                            </dd>
                            <dd>
                                <div class="wrap_btn"> <a href="javascript:addToCart_bak(92)" class="wrap_btn1" title="加入购物车"></a>
                                    <a href="javascript:addToCart(92)" class="wrap_btn2" title="立即购买"></a> </div>
                            </dd>
                        </dl>
                    </div>
                    <div class="Guarantee clearfix">
                        <dl><dt>商城服务</dt><dd><em></em>正品保障</dd><dd><em></em>售后无忧</dd><dd><em></em>原产认证</dd>
                            <dd class="manner"> <div class="payment " id="payment">
                                <a href="javascript:void(0);" class="paybtn">支付方式<span class="icon-angle-down"></span></a>
                                <ul><li>货到付款</li><li>礼品卡支付</li><li>网上支付</li><li>银行转账</li></ul></div>
                            </dd></dl></div>
                </form>
            </div>
        </div>
    </div>
    <!---->
    <div class="clearfix">
        <div class="left_style">
            <div class="Records">
                <div class="title_name">用户浏览记录</div>
                <ul>
                    <li>
                        <a href="#">
                            <p><img src="Products/4.jpg" data-bd-imgshare-binded="1"></p>
                            <p class="p_name">SanmiuSunflower新苗向日葵 乳酪夹心饼干 270g 菲律宾进口</p>
                        </a>
                        <p><span class="p_Price">￥5.30</span><b>10.4</b></p>
                    </li>
                    <li>
                        <a href="#">
                            <p><img src="Products/5.jpg" data-bd-imgshare-binded="1"></p>
                            <p class="p_name">商品名称</p>
                        </a>
                        <p><span class="p_Price">￥5.30</span><b>10.4</b></p>
                    </li>
                    <li>
                        <a href="#">
                            <p><img src="Products/3.jpg" data-bd-imgshare-binded="1"></p>
                            <p class="p_name">商品名称</p>
                        </a>
                        <p><span class="p_Price">￥5.30</span><b>10.4</b></p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="right_style">
            <div class="inDetail_boxOut ">
                <div class="inDetail_box">
                    <div class="fixed_out ">
                        <ul class="inLeft_btn fixed_bar">
                            <li><a id="property-id" href="#shangpsx" class="current">商品属性</a></li>
                            <li><a id="detail-id" href="#shangpjs">规格与包装</a></li>
                            <li><a id="shot-id" href="#miqsp">售后服务</a></li>
                            <li><a id="coms1-id" href="#coms1">买家评论</a></li>
                        </ul>
                    </div>
                    <!---->
                    <div class="product_details">
                        <div id="shangpsx">
                            <div class="title"><img src="images/title_name_03.png" /></div>
                            <ul class="shangpsx_info">
                                <li><label>生产许可证编号</label><span>${Good.size.pcode}</span></li>
                                <li><label>产品标准号</label><span>${Good.size.pstand}</span></li>
                                <li><label>生产日期</label><span>${Good.size.pdate}</span></li>
                                <li><label>有效期</label><span>${Good.size.baozi}</span></li>
                                <li><label>产品名称</label><span>${Good.gname}</span></li>
                                <li><label>净含量</label><span>${Good.size.weight}</span></li>
                                <li><label>包装</label><span>${Good.size.specs}</span></li>
                                <li><label>品牌</label><span>${Good.size.brand}</span></li>
                                <li><label>食品工艺</label><span>炒青绿茶</span></li>
                                <li><label>级别</label><span>${Good.size.level}</span></li>
                                <li><label>产地</label><span>${Good.size.paddress}</span></li>
                                <li><label>价格</label><span>${Good.size.price}</span></li>
                            </ul>
                        </div>
                        <div id="shangpjs">
                            <img src="images/pro_img.png" />
                        </div>
                        <div id="coms1">
                            <div class="productContent" id="status2">
                                <div class=""></div>
                                <div class="iComment clearfix">
                                    <div class="rate"><strong id="goodRate">100<span>%</span></strong><br>
                                        <span>好评度</span></div>
                                    <div class="percent" id="percentRate">
                                        <dl>
                                            <dt>好评<span>(100%)</span></dt>
                                            <dd>
                                                <div style="width:100px;"></div>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>中评<span>(0%)</span></dt>
                                            <dd class="d1">
                                                <div style="width:0;"> </div>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>差评<span>(0%)</span></dt>
                                            <dd class="d1">
                                                <div style="width:0;"> </div>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="actor">
                                        <dl>
                                            <dt>发表评价即可获得10积分，精华评论更有 <font color="red">额外奖励</font> 积分；<br>
                                                还有7个多倍积分名额哦，赶紧抢占吧！<br>
                                                只有购买过该商品的用户才能进行评价。</dt>
                                        </dl>
                                    </div>
                                </div>
                                <div class="commentBox" style="display: block;">
                                    <form action="javascript:;" onsubmit="submitComment(this)" method="post" name="commentForm" id="commentForm">
                                        <h3>商品评分</h3>
                                        <p class="tip">请直接点击相应的星级进行评分</p>
                                        <div id="star">
                                            <ul>
                                                <li class=""><span onclick="dorank(1)"></span>
                                                    <p>1分</p>
                                                    <p>非常不满意</p>
                                                </li>
                                                <li class=""><span onclick="dorank(2)"></span>
                                                    <p>2分</p>
                                                    <p>不满意</p>
                                                </li>
                                                <li class=""><span onclick="dorank(3)"></span>
                                                    <p>3分</p>
                                                    <p>一般</p>
                                                </li>
                                                <li class=""><span onclick="dorank(4)"></span>
                                                    <p>4分</p>
                                                    <p>满意</p>
                                                </li>
                                                <li class=""><span onclick="dorank(5)"></span>
                                                    <p>5分</p>
                                                    <p>非常满意</p>
                                                </li>
                                            </ul>
                                            <input type="hidden" name="rank" id="rank" value="1">
                                            <input type="hidden" name="cmt_type" value="">
                                            <input type="hidden" name="id" value="78">
                                            <input type="hidden" name="email" id="email" value="null@mial.com">
                                        </div>
                                        <h4>评论内容</h4>
                                        <div class="bd">
                                            <textarea name="content" id="content" class="textarea_long" onkeyup="checkLength(this);"></textarea>
                                            <p class="g">
                                                <label>&nbsp; </label>
                                                <input type="submit" value="发表" class="btn_common">
                                                <span t="word_calc" class="word"><b id="sy">0</b>/1000</span> </p>
                                        </div>
                                    </form>
                                </div>
                                <div id="ECS_COMMENT"> <div class="Comment">
                                    <div class="CommentTab">
                                        <ul>
                                            <li class="active" onclick="javascript:gotoPage(1,78,0,0);">全部评论(0)</li>
                                            <li onclick="javascript:gotoPage(1,78,0,3);">好评(0)</li>
                                            <li onclick="javascript:gotoPage(1,78,0,2);">中评(0)</li>
                                            <li onclick="javascript:gotoPage(1,78,0,1);">差评(0)</li>
                                        </ul>
                                    </div>
                                    <div class="CommentText" id="goodsdetail_comments_list" style="display:block">
                                        <ul class="clearfix">
                                        </ul>
                                        <div class="discuss_Paging">
                                            <div class="discuss">
                                                <span class="f_l f6" style="margin-right:10px;">共 <b>0</b> 条评论</span>
                                                <p id="commentPager_4">
                                                    <a href="javascript:gotoPage(1,78,0,0)">首页</a>
                                                    <a class="prev" href="javascript:;">上一页</a>
                                                    <a class="next" href="javascript:;">下一页</a>
                                                    <a class="last" href="javascript:;">尾页</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                    <script type="text/javascript">
                                        //<![CDATA[
                                        var cmt_empty_username = "请输入您的用户名称";
                                        var cmt_empty_email = "请输入您的电子邮件地址";
                                        var cmt_error_email = "电子邮件地址格式不正确";
                                        var cmt_empty_content = "您没有输入评论的内容";
                                        var captcha_not_null = "验证码不能为空!";
                                        var cmt_invalid_comments = "无效的评论内容!";

                                        /**
                                         * 提交评论信息
                                         */
                                        function submitComment(frm)
                                        {
                                            var cmt = new Object;

                                            //cmt.username        = frm.elements['username'].value;
                                            cmt.email           = frm.elements['email'].value;
                                            cmt.content         = frm.elements['content'].value;
                                            cmt.type            = frm.elements['cmt_type'].value;
                                            cmt.id              = frm.elements['id'].value;
                                            cmt.enabled_captcha = frm.elements['enabled_captcha'] ? frm.elements['enabled_captcha'].value : '0';
                                            cmt.captcha         = frm.elements['captcha'] ? frm.elements['captcha'].value : '';
                                            cmt.rank            = frm.elements['rank'].value;

                                            /*  for (i = 0; i < frm.elements['comment_rank'].length; i++)
                                              {
                                                if (frm.elements['comment_rank'][i].checked)
                                                {
                                                   cmt.rank = frm.elements['comment_rank'][i].value;
                                                 }
                                              }*/

//  if (cmt.username.length == 0)
//  {
//     alert(cmt_empty_username);
//     return false;
//  }

                                            if (cmt.email.length > 0)
                                            {
                                                if (!(Utils.isEmail(cmt.email)))
                                                {
                                                    alert(cmt_error_email);
                                                    return false;
                                                }
                                            }
                                            else
                                            {
                                                alert(cmt_empty_email);
                                                return false;
                                            }

                                            if (cmt.content.length == 0)
                                            {
                                                alert(cmt_empty_content);
                                                return false;
                                            }

                                            if (cmt.enabled_captcha > 0 && cmt.captcha.length == 0 )
                                            {
                                                alert(captcha_not_null);
                                                return false;
                                            }

                                            Ajax.call('comment.php', 'cmt=' + cmt.toJSONString(), commentResponse, 'POST', 'JSON');
                                            frm.elements['content'].value = '';
                                            return false;
                                        }

                                        /**
                                         * 处理提交评论的反馈信息
                                         */
                                        function commentResponse(result)
                                        {
                                            if (result.message)
                                            {
                                                alert(result.message);
                                            }

                                            if (result.error == 0)
                                            {
                                                var layer = document.getElementById('ECS_COMMENT');

                                                if (layer)
                                                {
                                                    layer.innerHTML = result.content;
                                                }
                                            }
                                        }

                                        //]]>
                                    </script></div>
                                <script type="text/javascript">
                                    $('.CommentTab ul').find('li').click(function(){
                                        $('.CommentTab ul').find('li').removeClass('active');
                                        $('.CommentText').css({display:'none'});
                                        $(this).addClass('active');
                                        $('.CommentText').eq($(this).index()).css({display:'block'});
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
</body>
</html>

