<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ü ���� ���</title>
</head>
<body>
<!-- cityAll, seoul, busan�� ���� request �����̴�. include�߱� ������ ���� request ��ü�� ������. -->
<%
	pageContext.include("seoul.jsp");
%>
<hr>
<%
	pageContext.include("busan.jsp");
%>
<hr>
<h4>��ü ���� ����Դϴ�.....</h4>
<%-- 
	request : ��û ��ü. �Ķ���� ����, header....
	response : ���� ��ü. ������ ���� ��ü.
	pageContext : page ������� ��ü. �ش� �������� ������ ����. ���������� �� ���� ����.
					(���� �� ���� ���� �����̰�, �������� �ʴ´�.)

 --%>
</body>
</html>