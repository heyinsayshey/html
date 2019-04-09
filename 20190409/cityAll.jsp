<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>전체 도시 목록</title>
</head>
<body>
<!-- cityAll, seoul, busan은 같은 request 영역이다. include했기 때문에 같은 request 객체를 가진다. -->
<%
	pageContext.include("seoul.jsp");
%>
<hr>
<%
	pageContext.include("busan.jsp");
%>
<hr>
<h4>전체 도시 목록입니다.....</h4>
<%-- 
	request : 요청 객체. 파라미터 정보, header....
	response : 응답 객체. 브라우저 전달 객체.
	pageContext : page 영역담당 객체. 해당 페이지의 정보를 저장. 페이지마다 한 개씩 있음.
					(영역 중 제일 작은 단위이고, 공유하지 않는다.)

 --%>
</body>
</html>