<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니 목록 보기</title>
<style type="text/css">
	table,th,td {
		border:1px solid black; 
		border-collapse:collapse;
	}
</style>
</head>
<body>
<%
	String product = request.getParameter("product");
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("cart");
	if(list==null||list.size()==0){%>
		<h3>장바구니에 상품이 없습니다.</h3>
<%	}else{%>
<form name="f">
<table >
	<tr><th>번호</th><th>상품명</th><th></th></tr>
	<% 
	for(int i=0;i<list.size();i++){	%>
		<tr>
		<td><%=(i+1) %></td>
		<td><%=list.get(i) %></td>
		<td><a href="sessiondel.jsp?cnt=<%=i%>">ⓧ</a>
<%	}}%>
</table>
</form>
</body>
</html>