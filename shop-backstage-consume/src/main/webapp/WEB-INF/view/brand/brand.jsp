<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/17 0017
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/plug-in.jsp"></jsp:include>
</head>
<body>
<div id="addBrandHiddenDiv" style="display: none;">
    <form id="brandFormId">
        <table class="table table-bordered" bordercolor="#D2E9FF" cellspacing="0" border="1" style="width: 100%;height: 90%;">
            <tr>
                <td align="right" bgcolor="#ECECFF">*名称：</td>
                <td colspan="2"><input type="hidden" name="id" id="brandId"/><input type="text" class="form-control" name="name"  id="brandNameId" placeholder="名称"></td>
            </tr>
            <tr>
                <td align="right" bgcolor="#ECECFF">类型:</td>
                <td colspan="4"><select id="brandTypeId" class="form-control" name="type" width="200px"><option value="0">文本</option><option value="1">图片</option></select></td>
            </tr>
            <tr>
                <td align="right" bgcolor="#ECECFF">LOGO：</td>
                <td colspan="2"><input type="text" class="form-control" name="logo"  id="brandLogoId" placeholder="LOGO"></td>
            </tr>
            <tr>
                <td align="right" bgcolor="#ECECFF">网址：</td>
                <td colspan="2"><input type="text" class="form-control" name="url"  id="brandUrlId" placeholder="网址"></td>
            </tr>
            <tr>
                <td align="right" bgcolor="#ECECFF">排序：</td>
                <td colspan="2"><input type="number" class="form-control" name="orders"  id="brandOrdersId" placeholder="排序"></td>
            </tr>
            <tr>
                <td align="right" bgcolor="#ECECFF">介绍：</td>
                <td colspan="2"><input type="number" class="form-control" name="introduction"  id="brandIntroductionId" placeholder="介绍"></td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <button type="button" class="btn btn-success" id="editOrInsert" onclick="insertBrand()">
                        <span class="glyphicon glyphicon-plane">确定</span>
                    </button>
                    <button type="button" class="btn btn-success" onclick="returnBrand()">
                        <span class="glyphicon glyphicon-plane">返回</span>
                    </button>
                </td>
            </tr>
        </table>
    </form>
</div>
<div id="brandTabAndTabToolBar">
    <table class="table table-bordered" id="brandTab"></table>
    <div id="brandTabToolBar">
        <div class="btn-group">
            <button type="button" class="btn btn-success" onclick="addBrand()">
                <span class="glyphicon glyphicon-plane">新增</span>
            </button>
            <button type="button" class="btn btn-danger">
                <span class="glyphicon glyphicon-scissors" onclick="deleteBrands()">删除</span>
            </button>
            <button type="button" class="btn btn-warning" onclick="refreshBrand()">
                <span class="glyphicon glyphicon-wrench">刷新</span>
            </button>
        </div>
    </div>
</div>
<script>
    $(function (){
        $("#brandTab").bootstrapTable({
            url:"<%=request.getContextPath() %>/brandController/selectBrandList.jhtml",
            method: 'get', //请求方式（*）
            toolbar:"#brandTabToolBar", //工具按钮用哪个容器
            striped: true, //是否显示行间隔色
            cache: false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true, //是否显示分页（*）
            sortable: false, //是否启用排序
            sortOrder: "asc", //排序方式
            pageNumber:1, //初始化加载第一页，默认第一页
            pageSize: 10, //每页的记录行数（*）
            pageList: [10, 25, 50, 100], //可供选择的每页的行数（*）
            search: true, //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            strictSearch: true,
            showColumns: true, //是否显示所有的列
            showRefresh: true, //是否显示刷新按钮
            minimumCountColumns: 2, //最少允许的列数
            clickToSelect: true, //是否启用点击选中行
            height: $(window).height() - 100, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            showToggle:true, //是否显示详细视图和列表视图的切换按钮
            cardView: false, //是否显示详细视图
            detailView: false, //是否显示父子表
            paginationLoop:false,//关闭分页的无限循环
            paginationPreText:"上一页",
            paginationNextText:"下一页",
            columns:[
                {field:'id',title:'',width:10,
                    formatter:function(value,row,index){
                        return "<input type='checkbox' value="+value+" name='chk'/>";
                    }
                },
                {field:'name',title:'名称',width:70},
                {field:'logo',title:'logo',width:70,
                    formatter:function(value,row,index){
                        return "<a href='javascript:void(0);' target='_blank'  style='text-decoration:none;' onclick='lookLogo("+row.lodo+")'>查看</a>";
                    }
                },
                {field:'url',title:'网址',width:300,
                    formatter:function(value,row,index){
                        return "<a href='"+row.url+"' target='_blank' style='text-decoration:none;''>"+row.url+"</a>";
                    }
                },
                {field:'orders',title:'排序',width:70},
                {field:'brandOperation',title:'操作',width:200,
                    formatter:function(value,row,index){
                        return "<a href='javascript:void(0);' target='_blank' style='text-decoration:none;' onclick='editAttributeById("+row.id+")'>【编辑】</a>&nbsp;<a href='javascript:void(0);' style='text-decoration:none;' target='_blank' onclick='LookAttributeById("+row.id+")'>【查看】</a>";
                    }
                },
            ],
            //传递参数（*）
            queryParams: function(params) {
                var whereParams = {
                    "name":params.search,//精确搜索产品名称

                }
                return whereParams;
            },
        });
    })
    function addBrand(){
        $("#brandTabAndTabToolBar").hide();
        $("#addBrandHiddenDiv").show();
    }

    //刷新
    function refreshBrand(){
        $("#brandTab").bootstrapTable('refresh');
    }
    //返回
    function returnBrand(){
        document.getElementById("brandFormId").reset();
        $("#brandTabAndTabToolBar").show();
        $("#addBrandHiddenDiv").hide();
        $("#brandTab").bootstrapTable('refresh');
    }
    //批量删除
    function deleteBrands(){
        var ids = "";
        var brandIdsNum = 0;
        for (var i = 0; i < $("[name='chk']").length; i++) {
            if($("[name='chk']").eq(i).prop("checked")){
                ids += "," + $("[name='chk']").eq(i).val();
                brandIdsNum++;
            }
        }
        if(brandIdsNum>0){
            ids = ids.substring(1);
            var delBrandIdsNum = "确定删除这"+brandIdsNum+"条数据吗?";
            if(confirm(delBrandIdsNum)){
                $.ajax({
                    url:"<%=request.getContextPath()%>/brandController/deleteBrandByPrimaryKeys.jhtml?ids="+ids,
                    success:function(){
                        alert("删除成功！！！");
                        $("#brandTab").bootstrapTable('refresh');
                    },
                    error:function(){
                        alert("系统错误！！！请调试Debug检查！！！");
                    }
                })
            }
        }
        else{
            alert("请至少选择一条您要删除的数据！！！");
        }
    }
</script>
</body>
</html>
