<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>pageContext ���� ��ü ����</title>
</head>
<body>
<h1>pageContext ��ü : ���� �������� �ڿ��� �����ϴ� ��ü</h1>
<% if(request == pageContext.getRequest()) { //pageContext : ���� �������� ��� �ڿ��� ����.  %>
	request == pageContext.getRequest() 
<% } else { %>
	request != pageContext.getRequest()
<%} %>
<h1>pageContext ��ü : page ���� ��� ��ü.</h1>
</body>
</html>