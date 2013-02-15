<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<head>
		<title>±Ê¼Ç</title>
		<base href="<%=basePath%>">
		<link rel="stylesheet" type="text/css" href="style/index.css">
		<link rel="stylesheet" type="text/css" href="style/fancybox.css">
		<link rel="stylesheet" type="text/css" href="style/register.css">
		<script src="script/jquery-1.3.2.js" type="text/javascript">
</script>
		<script src="script/jquery.fancybox-1.3.1.pack.js"
			type="text/javascript">
</script>
		<script src="script/global.js" type="text/javascript">
</script>

	</head>

	<body>
       <div class="logo">
       <img src="image/MynoteImg.png" />
       </div>
		<div class="login">
			<s:form action="login" theme="simple" namespace="/login"
				cssClass="form">
				<s:textfield name="username" value="" cssClass="input_user"></s:textfield>
				<s:password name="password" value="" cssClass="input_pw"></s:password>
				<s:submit type="image" src="image/login.png" cssClass="s_login"></s:submit>
			</s:form>
		</div>
		<div class="register_button">
			<s:a id="fancy" href="#register_block">
				<img src="image/register.png" />
			</s:a>
		</div>
		<div id="apDiv1">
			<img src="image/login_block.png" />
		</div>

		<div style="display: none">
			<div id="register_block" class="pop_container">

            
				<img src="image/registerBlock.png" />


				<s:form action="register" method="post" theme="simple">

					<div id="noButtom">
						<img src="image/noButtom.png" width="23" height="23" onclick="$.fancybox.close()" />
					</div>
					<div id="apDiv3">
						<s:submit type="image" src="image/registerOK.png"></s:submit>

					</div>

					<div id="inputUserName">
						<s:textfield name="username" value="" cssClass="input">
						</s:textfield>
					</div>
					<div id="inputPassword">
						<s:password name="password" value="" cssClass="input"></s:password>
					</div>
					<div id="ReinputPassword">
						<s:password name="password_check" value="" cssClass="input"></s:password>
					</div>
					<div id="inputNickname">
						<s:textfield name="nickname" value="" cssClass="input"></s:textfield>
					</div>
				</s:form>



			</div>

		</div>



	</body>
</html>


