<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<TITLE>登录页面</TITLE>

<SCRIPT src="<%=request.getContextPath() %>/login/js/jquery-1.9.1.min.js" type="text/javascript"></SCRIPT>



<STYLE>
body {
	background: #ebebeb;
	font-family: "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei",
		"\9ED1\4F53", Arial, sans-serif;
	color: #222;
	font-size: 12px;
}

* {
	padding: 0px;
	margin: 0px;
}

.top_div {
	background: #008ead;
	width: 100%;
	height: 400px;
}

.ipt {
	border: 1px solid #d3d3d3;
	padding: 10px 10px;
	width: 290px;
	border-radius: 4px;
	padding-left: 35px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s
}

.ipt:focus {
	border-color: #66afe9;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6)
}

.u_logo {
	background: url("<%=request.getContextPath() %>/login/images/username.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 43px;
	left: 40px;
}

.p_logo {
	background: url("<%=request.getContextPath() %>/login/images/password.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 12px;
	left: 40px;
}

a {
	text-decoration: none;
}

.tou {
	background: url("<%=request.getContextPath() %>/login/images/tou.png") no-repeat;
	width: 97px;
	height: 92px;
	position: absolute;
	top: -87px;
	left: 140px;
}

.left_hand {
	background: url("<%=request.getContextPath() %>/login/images/left_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	left: 150px;
}

.right_hand {
	background: url("<%=request.getContextPath() %>/login/images/right_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	right: -64px;
}

.initial_left_hand {
	background: url("<%=request.getContextPath() %>/login/images/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	left: 100px;
}

.initial_right_hand {
	background: url("<%=request.getContextPath() %>/login/images/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	right: -112px;
}

.left_handing {
	background: url("<%=request.getContextPath() %>/login/images/left-handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -24px;
	left: 139px;
}

.right_handinging {
	background: url("<%=request.getContextPath() %>/login/images/right_handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -21px;
	left: 210px;
}
</STYLE>



<SCRIPT type="text/javascript">
	$(function() {
		//得到焦点
		$("#password").focus(function() {
			$("#left_hand").animate({
				left : "150",
				top : " -38"
			}, {
				step : function() {
					if (parseInt($("#left_hand").css("left")) > 140) {
						$("#left_hand").attr("class", "left_hand");
					}
				}
			}, 2000);
			$("#right_hand").animate({
				right : "-64",
				top : "-38px"
			}, {
				step : function() {
					if (parseInt($("#right_hand").css("right")) > -70) {
						$("#right_hand").attr("class", "right_hand");
					}
				}
			}, 2000);
		});
		//失去焦点
		$("#password").blur(function() {
			$("#left_hand").attr("class", "initial_left_hand");
			$("#left_hand").attr("style", "left:100px;top:-12px;");
			$("#right_hand").attr("class", "initial_right_hand");
			$("#right_hand").attr("style", "right:-112px;top:-12px");
		});
	});
</SCRIPT>



<META name="GENERATOR" content="MSHTML 11.00.9600.17496">
</HEAD>

<BODY>

	<DIV class="top_div">
		<div style="padding-top: 5%">
			<center><h1>Shop++ 后台登录<br><br>No.1组</h1></center>
		</div>
	</DIV>

	<DIV style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 200px; text-align: center;">

		<DIV style="width: 165px; height: 96px; position: absolute;">

			<DIV class="tou"></DIV>

			<DIV class="initial_left_hand" id="left_hand"></DIV>

			<DIV class="initial_right_hand" id="right_hand"></DIV>
		</DIV>
		<form id="login-form" method="post">
		<P style="padding: 30px 0px 10px; position: relative;">
			<SPAN class="u_logo"></SPAN> <INPUT class="ipt" name="username" type="text"
				placeholder="请输入用户名" value="">

		</P>

		<P style="position: relative;">
			<SPAN class="p_logo"></SPAN> <INPUT class="ipt" name="userpass" id="password"
				type="password" placeholder="请输入密码" value="">

		</P>
		</form>

		<DIV style="height: 50px; line-height: 50px; margin-top: 30px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
			<P style="margin: 0px 35px 20px 45px;">
				<SPAN style="float: left;"><A style="color: rgb(204, 204, 204);" href="#">忘记密码?</A>
				</SPAN> <SPAN style="float: right;"><A style="color: rgb(204, 204, 204); margin-right: 10px;" href="#">注册</A>

					<span style="background: rgb(0, 142, 173);cursor:pointer; padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;" onclick="submits()">登录</span> </SPAN>
			</P>
		</DIV>
	</DIV>

	<div style="text-align:center;"></div>
</BODY>
<script>
	function submits(){
        $.ajax({
            type:'post',
            url:'<%=request.getContextPath()%>/user/login.do',
            data:$("#login-form").serialize(),
            success:function(msg){
                var str = "";
                if(msg == 0){
                    str = "用户名或密码错误";
                }else if(msg == 1){
                    str = "登录成功";
                    location.href="<%=request.getContextPath()%>/user/toIndex.do";
                }
                $.messager.show({
                    title:'我的消息',
                    msg:str,
                    showType:'show',
                    style:{
                        right:'',
                        top:document.body.scrollTop+document.documentElement.scrollTop,
                        bottom:''
                    }
                });

            }
        })
	}

</script>
</html>
