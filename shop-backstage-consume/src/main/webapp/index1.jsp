<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/04/08
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <!-- 引入EasyUI的样式文件-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css" type="text/css"/>

    <!-- 引入EasyUI的图标样式文件-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css" type="text/css"/>

</head>
<body>
    会员等级：<input type="button" value="查询" onclick="query()"/>
    <br>
    -----------------
    <br>
    会员注册项：<input type="button" value="查询" onclick="queryatt()"/>
    <br>
    -----------------
    <br>
    评论管理：<input type="button" value="查询" onclick="queryreview()"/>
    <br>

    <!-- 引入JQuery -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/jquery.min.js"></script>

    <!-- 引入EasyUI -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/jquery.easyui.min.js"></script>

    <!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/locale/easyui-lang-zh_CN.js"></script>

    <script type="text/javascript">

        //查询
        function query() {
            location.href="<%=request.getContextPath()%>/memberRank/toShowMemberRank.do";
        }

        //-------------------------------

        function queryatt(){
            location.href="<%=request.getContextPath()%>/memberAttribute/toShowMemberAttribute.do";
        }

        //-------------------------------

        function queryreview(){
            location.href="<%=request.getContextPath()%>/review/toShowReview.do";
        }

    </script>

</body>
</html>
