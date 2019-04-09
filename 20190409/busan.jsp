<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>부산 도시 정보</title>
</head>
<body>
<h1>부산 정보</h1>
<h2>부산은 항구 도시다.</h2>
<h2>부산은 인구가 300만이다.</h2>
<!-- seoul.jsp, city.jsp와 같은 request 객체를 가지고 있다.  -->
<h3><%=request.getParameter("c") %></h3>

...
</body>
</html>