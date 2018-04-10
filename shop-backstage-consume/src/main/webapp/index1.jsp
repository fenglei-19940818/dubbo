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
    <input type="button" value="查询" onclick="query()"/>
    <input type="button" value="添加" onclick="add()"/>
    <input type="button" value="修改前查询回显" onclick="updateById()"/>
    <input type="button" value="修改" onclick="update()"/>
    <input type="button" value="删除或者批量删除" onclick="del()"/>

    <!-- 引入JQuery -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/jquery.min.js"></script>

    <!-- 引入EasyUI -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/jquery.easyui.min.js"></script>

    <!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/EasyUI/locale/easyui-lang-zh_CN.js"></script>

    <script type="text/javascript">

        //查询
        function query() {
            $.ajax({
                type:'post',
                url:'<%=request.getContextPath()%>/memberRank/queryMemberRankListPager.do',
                success:function(msg){
                    alert("数据库的数据条数:"+msg.total+"条");
                }
            })
        }

        //添加
        function add() {
            $.ajax({
                type:'post',
                url:'<%=request.getContextPath()%>/memberRank/addMemberRank.do',
                data:{"name":"黑金会员","scale":"0.65","amount":"10.00","is_Default":"0","is_Special":"0"},
                success:function(msg){

                    if(msg==1){
                        alert("添加成功");
                    }else{
                        alert("添加失败");
                    }
                }
            })
        }

        //修改前查询，根据Id查询
        function updateById() {
            $.ajax({
                type:'post',
                url:'<%=request.getContextPath()%>/memberRank/queryMemberRankById.do',
                data:{"id":"2"},
                success:function(msg){
                    alert("你要修改的是会员等级名称是:"+msg.name);
                }
            })
        }

        //修改
        function update() {
            $.ajax({
                type:'post',
                url:'<%=request.getContextPath()%>/memberRank/updateMemberRank.do',
                data:{"id":"2","name":"银牌会员2","scale":"9","amount":"290","is_Default":"0","is_Special":"0"},
                success:function(msg){

                    if(msg==1){
                        alert("修改成功");
                    }else{
                        alert("修改失败");
                    }
                }
            })
        }

        //删除
        function del() {
            $.ajax({
                type:'post',
                url:'<%=request.getContextPath()%>/memberRank/deleteMemberRank.do',
                data:{"ids":"6,7"},
                success:function(msg){
                    if(msg>0){
                        alert("删除成功")
                    }else{
                        alert("删除失败")
                    }
                }
            })
        }
    </script>

</body>
</html>
