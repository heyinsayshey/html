<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session ��ü</title>
</head>
<body>
<h1>session ��ü : �������� ���� ������ �����ϴ� ��ü</h1>
<%
	//session �� ���� ��������� ���� 10�ʸ���.
	session.setMaxInactiveInterval(10);//session �����ð�. 10��
%>
<h3>session �׽�Ʈ</h3>
isNew() : <%=session.isNew() %><br>
�����ð� : <%=session.getCreationTime() %><br>
�������ӽð� : <%=session.getLastAccessedTime() %><br>
sessionID : <%=session.getId() %><br>
</body>
</html>