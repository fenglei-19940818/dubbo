<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/04/18
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理系统</title>
    <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="header">
    <div class="dl-title"><span class="">No.1 Shop++ 后台管理系统</span></div>
    <div class="dl-log">欢迎您，<span class="dl-log-user">${loginName}</span>
        <a href="###" title="退出系统" class="dl-log-quit">[退出]</a>
    </div>
</div>
<div class="content">
    <div class="dl-main-nav">
        <ul id="J_Nav"  class="nav-list ks-clear">
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-storage">首页</div></li>
            <li class="nav-item"><div class="nav-item-inner nav-inventory">商品</div></li>
            <li class="nav-item"><div class="nav-item-inner nav-inventory">订单</div></li>
            <li class="nav-item"><div class="nav-item-inner nav-inventory">会员</div></li>
            <li class="nav-item"><div class="nav-item-inner nav-inventory">内容</div></li>
            <li class="nav-item"><div class="nav-item-inner nav-inventory">营销</div></li>
            <li class="nav-item"><div class="nav-item-inner nav-inventory">统计</div></li>
            <li class="nav-item"><div class="nav-item-inner nav-inventory">系统</div></li>
        </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>

</div>
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="assets/js/bui-min.js"></script>
<script type="text/javascript" src="assets/js/config-min.js"></script>
<script>
    BUI.use('common/main',function(){
        var config = [{
            id:'menu',
            menu:[{
                text:'首页内容',
                items:[
                    {id:'main-menu',text:'环境配置',href:'main/menu.php'},
                ]
            }]
        },{
            id:'goods',
            menu:[{
                text:'商品管理',
                items:[
                    {id:'goods1',text:'商品管理',href:'404.jsp'},
                    {id:'goods2',text:'商品分类',href:'404.jsp'},
                    {id:'goods3',text:'商品参数',href:'404.jsp'},
                    {id:'goods4',text:'商品属性',href:'404.jsp'},
                    {id:'goods5',text:'规格管理',href:'404.jsp'},
                    {id:'goods6',text:'品牌管理',href:'brandController/toBrandJsp.jhtml'},
                    {id:'goods7',text:'到货通知',href:'404.jsp'}
                ]
            }]
        },{
            id:'order',
            menu:[{
                text:'订单管理',
                items:[
                    {id:'order1',text:'订单管理',href:'404.jsp'},
                    {id:'order2',text:'收款管理',href:'404.jsp'},
                    {id:'order3',text:'退款管理',href:'404.jsp'},
                    {id:'order4',text:'发货管理',href:'404.jsp'},
                    {id:'order5',text:'退货管理',href:'404.jsp'},
                    {id:'order6',text:'发货点管理',href:'404.jsp'},
                    {id:'order7',text:'快递单模板',href:'404.jsp'}
                ]
            }]
        },{
            id:'member',
            menu:[{
                text:'会员管理',
                items:[
                    {id:'hygl',text:'会员管理',href:'404.jsp'},
                    {id:'hydj',text:'会员等级',href:'memberRank/toShowMemberRank.jhtml'},
                    {id:'hyzcx',text:'会员注册项',href:'memberAttribute/toShowMemberAttribute.jhtml'},
                    {id:'plgl',text:'评论管理',href:'review/toShowReview.jhtml'},
                    {id:'zxgl',text:'咨询管理',href:'404.jsp'},
                ]
            }]
        },{
            id:'content',
            menu:[{
                text:'内容管理',
                items:[
                    {id:'content1',text:'导航管理',href:'404.jsp'},
                    {id:'content2',text:'文章管理',href:'404.jsp'},
                    {id:'content3',text:'文章分类',href:'404.jsp'},
                    {id:'content4',text:'标题管理',href:'404.jsp'},
                    {id:'content5',text:'友情链接',href:'404.jsp'},
                    {id:'content6',text:'广告位',href:'404.jsp'},
                    {id:'content7',text:'广告管理',href:'404.jsp'},
                    {id:'content8',text:'模板管理',href:'404.jsp'},
                    {id:'content9',text:'缓存管理',href:'404.jsp'},
                    {id:'content10',text:'静态化管理',href:'404.jsp'},
                    {id:'content11',text:'索引管理',href:'404.jsp'},
                ]
            }]
        },{
            id:'marketing',
            menu:[{
                text:'营销管理',
                items:[
                    {id:'marketing1',text:'促销管理',href:'404.jsp'},
                    {id:'marketing2',text:'优惠卷管理',href:'404.jsp'},
                    {id:'marketing3',text:'SEO设置',href:'404.jsp'},
                    {id:'marketing4',text:'Sitemap管理',href:'404.jsp'}
                ]
            }]
        },{
            id:'statistics',
            menu:[{
                text:'统计报表',
                items:[
                    {id:'statistics1',text:'访问统计',href:'404.jsp'},
                    {id:'statistics2',text:'统计设置',href:'404.jsp'},
                    {id:'statistics3',text:'销售统计',href:'404.jsp'},
                    {id:'statistics4',text:'销售排行',href:'404.jsp'},
                    {id:'statistics4',text:'销费排行',href:'404.jsp'},
                    {id:'statistics4',text:'预存款',href:'404.jsp'}
                ]
            }]
        },{
            id:'system',
            menu:[{
                text:'系统设置',
                items:[
                    {id:'system1',text:'系统设置',href:'404.jsp'},
                    {id:'system2',text:'地区管理',href:'404.jsp'},
                    {id:'system3',text:'支付方式',href:'404.jsp'},
                    {id:'system4',text:'配送方式',href:'404.jsp'},
                    {id:'system5',text:'物流公司',href:'404.jsp'},
                    {id:'system6',text:'支付插件',href:'404.jsp'},
                    {id:'system7',text:'存储插件',href:'404.jsp'},
                    {id:'system8',text:'管理员',href:'404.jsp'},
                    {id:'system9',text:'角色管理',href:'404.jsp'},
                    {id:'system10',text:'发送消息',href:'404.jsp'},
                    {id:'system11',text:'消息列表',href:'404.jsp'},
                    {id:'system11',text:'草稿箱',href:'404.jsp'},
                    {id:'system11',text:'日志管理',href:'404.jsp'},
                ]
            }]
        }];
        new PageUtil.MainPage({
            modulesConfig : config
        });
    });

</script>
</body>
</html>
