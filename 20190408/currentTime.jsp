<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>현재시간</title>
</head>
<body>
<!-- 자바소스가 html 코드에 이렇게 표현될 수 있다. -->

<%
	Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int min = c.get(Calendar.MINUTE);
	int sec = c.get(Calendar.SECOND);
%>
<h1>현재시간은 <%=hour %>시 <%=min %>분 <%=sec %>초 입니다.</h1>
</body>
</html>