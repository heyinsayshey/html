<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>이 페이지의 내용은 나타나지 않습니다.</h1>
<%
	String city = request.getParameter("c");
	pageContext.forward(city+".jsp");
%>
</body>
</html>