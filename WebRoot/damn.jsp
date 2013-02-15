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
    
    <title>My JSP 'damn.jsp' starting page</title>

	<link rel="stylesheet" type="text/css" href="style/damn.css">


  </head>
  
  <body>
<s:form action ="fileUpload" method ="POST" enctype ="multipart/form-data" > 
        <s:file name ="myFile" label ="Image File" /> 
        <s:textfield name ="caption" label ="Caption" />        
        <s:submit /> 
    </s:form> 

  </body>
</html>
