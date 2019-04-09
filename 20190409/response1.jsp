<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>응답 객체</title>
</head>
<body>
<h1>response 객체는 브라우저에 전달되는 객체라 이해하면 된다. 내부에 출력버퍼를 가지고 있어서, 브라우저에 전달되는 내용을 저장하고 있다. </h1>
<h2>또한 response 객체를 이용하여 므라우저로 하여금 다른 페이지를 요청하도록 할 수 있다.다른 페이지를 요청하도록 하는 것을 redirect 라고 한다.</h2>
<h2>지금 보여지고 있는 페이지의 내용은 하나도 보이지 않을 것이다.</h2>
<!-- redirect 용어 반드시 외우기. -->
<!-- sendRedirect : 재요청을 한 것이기 때문에 response1.jsp와 response2.jsp는 다른 request 영역을 가진다.  -->
<% response.sendRedirect("response2.jsp"); %>
</body>
</html>