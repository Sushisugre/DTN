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

		<title>�ҵıʼ�</title>

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
				�������ͷ����
				<div class="user_info">
					Welcome! ${sessionScope.user.nickname}--
					<a href="index.jsp">�˳�</a>
				</div>
			</div>
			<div class="menu">

				<div class="modules">
					<div class="module">
						<s:url id="back" action="listFileAction" namespace="/file">
							<s:param name="catalog">user</s:param>
						</s:url>
						<s:a href="%{back}">�����ĵ�</s:a>
					</div>
					<!-- ��ʵ��������ȫû�� -->

					<div class="module">
						<s:url id="friend" action="listFileAction">
							<s:param name="catalog">friend</s:param>
						</s:url>
						<s:a href="%{friend}">���ѷ���</s:a>
					</div>

					<div class="module">
						<s:url id="deleteForm" action="createFileAction">
							<s:param name="type">initForm</s:param>
						</s:url>
						<s:a href="%{deleteForm}">��ǩǽ</s:a>
					</div>
					<!-- ��ʵ��������ȫû�� -->
				</div>

			</div>
			<div class="main">

				<div class="sidebar">
					����Ŀ ����
					

				</div>



				<div class="content">
					<div class="buttons">
						<div class="b_new_file">
							<s:url id="fileForm" action="createFileAction" namespace="/file">
								<s:param name="type">initForm</s:param>
							</s:url>
							<s:a href="%{fileForm}">�½��ļ�</s:a>
						</div>
						<!-- ��ʵ��������ȫû�� -->

						<div class="b_upload_file">
							<s:url id="uploadForm" action="createFileAction">
								<s:param name="type">initForm</s:param>
							</s:url>
							<s:a href="%{uploadForm}">�ϴ��ļ�</s:a>
						</div>

						<div class="b_delete_file">
							<s:url id="deleteForm" action="createFileAction">
								<s:param name="type">initForm</s:param>
							</s:url>
							<s:a href="%{deleteForm}">ɾ���ļ�</s:a>
						</div>
						<!-- ��ʵ��������ȫû�� -->
					</div>
					
					<div class="files">
					<div class="files_header">
						<table>
							<tr>
								<td>����</td>
								<td>��ǩ</td>
								<td>�޸�ʱ��</td>
							</tr>
						</table>

					</div>
					
						<s:iterator value="#request.files" id="file" status="st">
							<div>
								<!-- s:a�Ļ�������ʽ���鷳��..����a�� -->
								<!-- 
								<s:url id="toFile" action="showFileAction">
										<s:param name="type">initForm</s:param>
									</s:url>
									<s:a href="%{toFile}"><s:property value="#file.title" /></s:a>
								 -->
								<!-- ֱ�Ӱ����ݷ���url�ﴫ��Ӧ�ñȽ�DT..��action���ٶ�ȡ..����ζ���ٷ���һ�����ݿ��� -->
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
