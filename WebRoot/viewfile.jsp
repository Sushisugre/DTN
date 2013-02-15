<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page contentType="text/html; charset=GBK"%>
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
		<title>文件</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
				<style type="text/css"> 
<!-- 
 
a:link { text-decoration: none; color:black;} 
a:hover { text-decoration: underline;} 
a:active { text-decoration: none; backgrond-color:blue; } 
a:visited { text-decoration: none; color:black; } 
--> 
</style> 

<link rel="stylesheet" type="text/css" href="style/editfile.css">
		<link rel="stylesheet" type="text/css" href="style/viewfile.css">
		<link type="text/css" rel="stylesheet" href="style/catalog.css" />
	</head>

	<body>
		<div id="leftpg_div">
			<img src="image/welcome_leftpg.png" width="321" height="921" />
		</div>
		<div id="bookmarks_div">
			<img src="image/welcome_bookmarks.png" width="584" height="47" />
		</div>
		<div id="rightpg_div">
			<img src="image/welcome_rightpg.png" width="669" height="922" />
		</div>
		<div id="welcome_title_div">
			<img src="image/welcome!.png" width="126" height="24" />
		</div>
		<div id="showUserName_div">
			<div class="name">${sessionScope.user.nickname}</div>
		<div class="logout"><a href="login/logout.action">退出</a></div>
		</div>
		<div id="topCutOff_div">
			<img src="image/cutOff.png" width="213" height="3" />
		</div>
		<div id="saveAndCloseButtom_div">
		<s:url id="updateForm" action="createFileAction">
									<s:param name="type">initForm</s:param>
									<s:param name="id"><s:property value="#request.file.id"/></s:param>
								</s:url>
								<s:a href="%{updateForm}"><img src="image/editFileButtom.png" width="216" height="44" /></s:a>
			
		</div>
		<div id="middleCutOff_div">
			<img src="image/cutOff.png" width="213" height="3" />
		</div>
		<div id="bottomCutOff_div">
			<img src="image/cutOff.png" width="213" height="3" />
		</div>
		<div id="currentCatalog_div">
			<img src="image/currentCatalog.png" width="214" height="45" />
		</div>
		<div id="currentCatalogContent_div">
			<div class="catalog">
				<a href="file/listFileAction.action?catalog=default"> 【默认分类】 </a>
			</div>
			<s:iterator value="#session.catalogs" id="cat" status="st">
				<div class="catalog"> 
					<a
						href="file/listFileAction.action?catalog=<s:property value="#cat.id"/>">
					【<s:property value="#cat.name" />】 </a>
				</div>
			</s:iterator>
		</div>
		<div id="bottomImage_div">
			<img src="image/buttomImg.png" width="216" height="119" />
		</div>
		<div id="bottomNote">
			<img src="image/bottomNote.png" width="429" height="16" />
		</div>
		<div id="mainContent_div">
		<s:property value="#request.file.content" escape="false"></s:property>
		</div>
		<div id="chooseAuthority"></div>
		<div id="titleImg">
			<img src="image/createTitle.png" width="77" height="33" />
		</div>
		<div class="file_title">
			<s:property value="#request.file.title"></s:property>
		</div>
		<div id="titleUnderline">
			<img src="image/underlineOfTitle.png" width="272" height="3" />
		</div>
		<div id="backButtom">
			<img src="image/back.png" width="214" height="44" />
		</div>
		<div id="chooseCatalog"></div>
		<div id="apDiv5">
			<img src="image/chooseACatalog.png" width="59" height="30" />
		</div>
		<div id="apDiv6">
			<img src="image/chooseAuthority.png" width="63" height="28" />
		</div>
		<div id="apDiv2">
		<s:url id="deleteForm" action="deleteFileAction">
								<s:param name="id">${requestScope.file.id}</s:param>
								</s:url>
								<s:a href="%{deleteForm}"><img src="image/deleteFileButtom.png" width="216" height="44" /></s:a>
			
		</div>
		<div id="apDiv4">
			<img src="image/timeOfmodigying.png" width="80" height="18" />
			<div class="divider"></div>
		</div>
		<div id="modifyTime">
			<s:date name="#request.file.modifiedtime"></s:date>
			
		</div>
		<p>
			&nbsp;
		</p>
	</body>
</html>
