<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니 목록 보기</title>
</head>
<body>
<%
	//session.getAttribute("cart") : 속성조회. session 객체에 등록된 속성 중 이름이 cart 인 객체 리턴.
	//참조변수가 2개인 것. 
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("cart");
	if(list==null || list.size()==0){
%>
	<h3>장바구니에 상품이 없습니다.</h3>
<% } else {
	for(String p : list){ %>
	<h4><%=p %></h4>
<%}}
	//session의 속성을 제거. 세션은 삭제하고 원하는 속성은 살릴 수 있다.
	session.removeAttribute("cart");
	
	//session 객체를 새로 생성하기. 세션과 속성모두 다 삭제되고 새로운 세션이 생성됨.
	session.invalidate();
%>
</body>
</html>