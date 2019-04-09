<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String visit = request.getParameter("visitor");
	String title = request.getParameter("title");
	String intext = request.getParameter("intext");

	Date today = new Date();
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	String time = df.format(today);
%>

<table border='1'>
	<caption>방명록</caption>
	<tr><td>방문자</td><td><%=visit %></td></tr>
	<tr><td>제목</td><td><%=title %></td></tr>
	<tr><td>내용</td><td><%=intext %></td></tr>
	<tr><td>방문일</td><td><%=time %></td></tr>
</table>
</body>
</html>