<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>서울 도시 정보</title>
</head>
<body>
<h1>서울 도시</h1>
<h2>서울은 대한민국의 수도다.</h2>
<h2>서울은 인구가 1000만이다.</h2>
<!--busan.jsp, city.jsp와 같은 request 객체를 가지고 있다. request 객체를 공유하고 있다.  -->
<h3><%=request.getParameter("c") %></h3>
...
</body>
</html>