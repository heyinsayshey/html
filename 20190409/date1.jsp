<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��¥�� session�� ����ϱ�</title>
</head>
<body>
<%
	Date today = new Date();
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E");
	String date = df.format(today);
	session.setAttribute("date", date);//�Ӽ����.
	
%>
��ϵ� ��¥ : <%=date %><br>
<a href="date2.jsp">date2.jsp�� ���� date �Ӽ��� ��ȸ�ϰ�, �����ϱ�</a>
</body>
</html>