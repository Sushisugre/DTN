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
		<link rel="stylesheet" type="text/css" href="style/welcome.css">
		<link type="text/css" rel="stylesheet" href="style/catalog.css" />
		<link rel="stylesheet" type="text/css" href="style/fancybox.css">
		<link rel="stylesheet" type="text/css" href="style/add_catalog.css">
		<link rel="stylesheet" type="text/css" href="style/register.css">
		<script src="script/jquery-1.3.2.js" type="text/javascript">
</script>
		<script src="script/jquery.fancybox-1.3.1.pack.js"
			type="text/javascript">
</script>
		<script src="script/global.js" type="text/javascript">
</script>

		<title>我的笔记</title>
		
		<style type="text/css"> 
<!-- 
 
a:link { text-decoration: none; color:black;} 
a:hover { text-decoration: underline;} 
a:active { text-decoration: none; backgrond-color:blue; } 
a:visited { text-decoration: none; color:black; } 
--> 
</style> 
	</head>

	<body>

		<div id="leftpg_div">
			<img src="image/welcome_leftpg.png" width="321" height="921" />
		</div>
		<div id="bookmarks_div">
			<div class="module">
				<s:url id="back" action="listFileAction" namespace="/file">
					<s:param name="catalog">user</s:param>
				</s:url>
				<s:a href="%{back}">个人文档</s:a>
			</div>
			<img src="image/welcome_bookmarks.png" width="584" height="47" />
		</div>
		<div id="rightpg_div">
			<img src="image/welcome_rightpg.png" width="669" height="922" />
		</div>
		<div id="welcome_title_div">
			<img src="image/welcome!.png" width="128" height="23" />
		</div>

		<div id="showUserName_div">
		<div class="name">${sessionScope.user.nickname}</div>

		<div class="logout"><a href="login/logout.action">退出</a></div>
				<div class="logout"><a id="fancy2" href="#user_block">修改资料</a></div>
			
		</div>

		<div id="topCutOff_div">
			<img src="image/cutOff.png" width="213" height="3" />
		</div>
		<div id="newFileButtom_div">
			<s:url id="fileForm" action="createFileAction" namespace="/file">
				<s:param name="type">initForm</s:param>
				<s:param name="catalog">
					<s:property value="#cat.id" />
				</s:param>
			</s:url>
			<s:a href="%{fileForm}">
				<img src="image/newFileButtom.png" width="213" height="44" />
			</s:a>

		</div>
		<div id="newCatalog_div">
			<a id="fancy" href="#catalog"><img
					src="image/addCatalogButtom.png" width="216" height="44" />
			</a>


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
			<s:iterator value="#request.files" id="file" status="st">
				<s:if test="#st.index<currentPage*20+20">
					<s:if test="#st.index>=currentPage*20">
						<div>
							<!-- s:a的话定义样式又麻烦了..还是a吧 -->
							<!-- 																
								<s:url id="toFile" action="showFileAction">
										<s:param name="type">initForm</s:param>
									</s:url>
									<s:a href="%{toFile}"><s:property value="#file.title" /></s:a>
								 -->

							<!-- 直接把内容放在url里传送应该比较DT..到action里再读取..就意味着再访问一次数据库了 -->
							<div class="file">
							<a
								href="file/showFileAction.action?id=<s:property value="#file.id" />"><s:property
									value="#file.title" /> </a>
									<div class="divider"></div>
							</div>
							<div class="modifiedTime">
							<s:date name="#file.modifiedtime" format="yyyy-MM-dd hh:mm" />
							</div>
							<div class="delete">
							<a href="file/deleteFileAction.action?id=<s:property value="#file.id" />">
								<img src="image/del.gif" /> </a>
								</div>
								
						</div>
					</s:if>
				</s:if>
			</s:iterator>
		</div>
		<div id="pageTurning">
			<s:iterator value="#request.files" id="ddd" status="page">
				<s:if test="#page.index<allPages">
				<div class="page_turn">
					<a
						href="file/listFileAction.action?currentPage=<s:property value="#page.index" />&catalog=<s:property value="#session.catalog"/>">
						<s:property value="#page.index+1" /> </a>
					</div>
				</s:if>
			</s:iterator>
		</div>
		<div id="titleImg_div">
			<img src="image/titleImg.png" width="80" height="33" />
		</div>
		<div id="modifyTimeImg_div">
			<img src="image/modifyTimeImg.png" width="158" height="36" />
		</div>
		<div id="mainTitle"><img src="image/projectTitle.png" width="390" height="150" /></div>

		<div style="display: none">
			<div id="catalog" class="pop_container">
				<div class="pop_form">
					<s:form action="addCatalogAction" namespace="/catalog"
						theme="simple">
							<img src="image/newCatalog.png" width="511" height="329" />
						
						<div id="yesButtom">
							<s:submit value="确定" type="image" src="image/newCatalogOK.png"></s:submit>

						</div>
						<div id="inputCatalogName">
							<s:textfield name="catname" value="" cssClass="input_catname"></s:textfield>
						</div>
						<div id="noButtom">
							<img src="image/newCatalogNO.png" onclick="$.fancybox.close()" />
						</div>

					</s:form>
				</div>
			</div>
		</div>
		
		<div style="display: none">
			<div id="user_block" class="pop_container">         
				<img src="image/registerBlock.png" />

				<s:form action="userInfoAction" method="post" theme="simple">

					<div id="noButtom">
						<img src="image/noButtom.png" width="23" height="23" onclick="$.fancybox.close()" />
					</div>
					<div id="apDiv3">
						<s:submit type="image" src="image/registerOK.png"></s:submit>

					</div>

					<div id="inputUserName">
						<s:property value="#session.user.username" />
				
					</div>
					<div id="inputPassword">
						<s:password name="password" value="" cssClass="input"></s:password>
					</div>
					<div id="ReinputPassword">
						<s:password name="password_check" value="" cssClass="input"></s:password>
					</div>
					<div id="inputNickname">
						<s:textfield name="nickname" value="%{#session.user.nickname}" cssClass="input"></s:textfield>
					</div>
				</s:form>
			</div>
		</div>

	</body>
</html>
