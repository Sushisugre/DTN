<%@ page language="java" contentType="text/html ;charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
	<head>
			<style type="text/css"> 
<!-- 
 
a:link { text-decoration: none; color:black;} 
a:hover { text-decoration: underline;} 
a:active { text-decoration: none; backgrond-color:blue; } 
a:visited { text-decoration: none; color:black; } 
--> 
</style> 
		<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
		<base href="<%=basePath%>">
		<link type="text/css" rel="stylesheet" href="style/editfile.css" />
		<link type="text/css" rel="stylesheet" href="style/catalog.css" />
		<script type="text/javascript" src="ckeditor/ckeditor.js">
</script>
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
		<s:form name="fileEditForm" theme="simple" action="createFileAction"
			namespace="/file" method="post">
			<s:hidden name="type" value="submit"></s:hidden>
			<s:hidden name="id">
				<s:property value="#request.file.id" />
			</s:hidden>
			<div id="saveAndCloseButtom_div">
			<s:submit value="保存并关闭" cssClass="submit" type="image" src="image/saveAndClose.png"/>
		</div>
			
			<div id="mainContent_div">
				<s:textarea name="content" rows="19" cols="97"
					cssClass="file_editor"></s:textarea>
				<script type="text/javascript">
<!--
    CKEDITOR.replace("content");
//-->
</script>
			</div>

			<div id="titleImg">
				<img src="image/createTitle.png" width="77" height="33" />
			</div>
			<div class="title">
				<s:textfield name="title" cssClass="file_title" />
			</div>
			<div id="titleUnderline">
				<img src="image/underlineOfTitle.png" width="272" height="3" />

			</div>
			<div id="backButtom">
				<img src="image/back.png" width="214" height="44" />
			</div>
			<div id="chooseCatalog">
				<s:select name="catalog" cssClass="select" list="catalogs" />
			</div>
			<div id="chooseAuthority">
				<s:select name="permission" label="权限" cssClass="select"
							list="#{'3':'仅自己可见','2':'分组好友可见','1':'公开'}"
							value="#request.file.permission" />
			</div>

		</s:form>
		<div id="apDiv5">
			<img src="image/chooseACatalog.png" width="59" height="30" />
		</div>
		<div id="apDiv6">
			<img src="image/chooseAuthority.png" width="63" height="28" />
		</div>
	</body>
</html>