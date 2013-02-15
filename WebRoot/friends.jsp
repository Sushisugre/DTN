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
		<base href="<%=basePath%>">

		<title>我的笔记</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link rel="stylesheet" type="text/css" href="style/fancybox.css">
		<link rel="stylesheet" type="text/css" href="style/add_catalog.css">
		<link rel="stylesheet" type="text/css" href="style/basic.css">
		<link rel="stylesheet" type="text/css" href="style/welcome.css">
		<script src="script/jquery-1.3.2.js" type="text/javascript">
</script>
		<script src="script/jquery.fancybox-1.3.1.pack.js"
			type="text/javascript">
</script>
		<script src="script/global.js" type="text/javascript">
</script>
	</head>

	<body>

		<div class="container">
			<div class="header">
				我来组成头部！
				<div class="user_info">
					Welcome! ${sessionScope.user.nickname}--
					<a href="index.jsp">退出</a>
				</div>
			</div>
			<div class="menu">

				<div class="modules">
					<div class="module">
						<s:url id="back" action="listFileAction" namespace="/file">
							<s:param name="catalog">user</s:param>
						</s:url>
						<s:a href="%{back}">个人文档</s:a>
					</div>
					<!-- 其实这两个完全没搞 -->

					<div class="module">
						<s:url id="friend" action="listFileAction">
							<s:param name="catalog">friend</s:param>
						</s:url>
						<s:a href="%{friend}">好友分享</s:a>
					</div>

					<div class="module">
						<s:url id="deleteForm" action="createFileAction">
							<s:param name="type">initForm</s:param>
						</s:url>
						<s:a href="%{deleteForm}">便签墙</s:a>
					</div>
					<!-- 其实这两个完全没搞 -->
				</div>

			</div>
			<div class="main">

				<div class="sidebar">
					左部项目 分类
					

				</div>



				<div class="content">
					<div class="buttons">
						<div class="b_new_file">
							<s:url id="fileForm" action="createFileAction" namespace="/file">
								<s:param name="type">initForm</s:param>
							</s:url>
							<s:a href="%{fileForm}">新建文件</s:a>
						</div>
						<!-- 其实这两个完全没搞 -->

						<div class="b_upload_file">
							<s:url id="uploadForm" action="createFileAction">
								<s:param name="type">initForm</s:param>
							</s:url>
							<s:a href="%{uploadForm}">上传文件</s:a>
						</div>

						<div class="b_delete_file">
							<s:url id="deleteForm" action="createFileAction">
								<s:param name="type">initForm</s:param>
							</s:url>
							<s:a href="%{deleteForm}">删除文件</s:a>
						</div>
						<!-- 其实这两个完全没搞 -->
					</div>
					
					<div class="files">
					<div class="files_header">
						<table>
							<tr>
								<td>标题</td>
								<td>标签</td>
								<td>修改时间</td>
							</tr>
						</table>

					</div>
					
						<s:iterator value="#request.files" id="file" status="st">
							<div>
								<!-- s:a的话定义样式又麻烦了..还是a吧 -->
								<!-- 
								<s:url id="toFile" action="showFileAction">
										<s:param name="type">initForm</s:param>
									</s:url>
									<s:a href="%{toFile}"><s:property value="#file.title" /></s:a>
								 -->
								<!-- 直接把内容放在url里传送应该比较DT..到action里再读取..就意味着再访问一次数据库了 -->
								<a
									href="file/showFileAction.action?id=<s:property value="#file.id" />"><s:property
										value="#file.title" /> </a>
							    <a
									href="file/deleteFileAction.action?id=<s:property value="#file.id" />">
									<img src="image/del.gif"/> </a>
							</div>
						</s:iterator>
					</div>

				</div>
			</div>
			<div class="footer">
				for test-S4
			</div>
		</div>

		
	</body>
</html>
