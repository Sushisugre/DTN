<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type"
			content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="style/basic.css" />
		<link rel="stylesheet" type="text/css" href="style/register.css" />
		<title>ע��</title>
	</head>
	<body>
		<div class="header">
			��д�û��������밡���쵰��
		</div>

		<div class="main">
			<div class="content">
				<div class="register">
					<s:form action="register" method="post">
						<s:textfield name="username" value="" label="�û���" cssClass="label">
						</s:textfield>
						<s:password name="password" value="" label="����" cssClass="label"></s:password>
						<s:password name="password_check" value="" label="����ȷ��" cssClass="label"></s:password>
						<s:textfield name="nickname" value="" label="�ǳ�" cssClass="label">
						</s:textfield>
						<s:submit value="ע��"></s:submit>
					</s:form>
				</div>
			</div>
		</div>
		
		

		<div class="footer">
			for test-S4
		</div>

	</body>
</html>