<%@ page language="java" import="java.util.*" %>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s"  uri="/struts-tags" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link rel="stylesheet" href="style/main.css" type="text/css" />
  </head>
  
  <body> 
  
  <div class="title">
    This is my JSP page. <br>
  </div>
    <s:form action="login" namespace="/login">
       <s:textfield name="username" label="�û���" value="s4"></s:textfield>
       <s:textfield name="password" label="����" value="aaa"></s:textfield>
       <s:submit></s:submit>
    </s:form>
  <s:a href="register.jsp">�ͻ��˴�ע��</s:a>

  </body>
</html>
