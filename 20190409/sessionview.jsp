<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ٱ��� ��� ����</title>
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
		<h3>��ٱ��Ͽ� ��ǰ�� �����ϴ�.</h3>
<%	}else{%>
<form name="f">
<table >
	<tr><th>��ȣ</th><th>��ǰ��</th><th></th></tr>
	<% 
	for(int i=0;i<list.size();i++){	%>
		<tr>
		<td><%=(i+1) %></td>
		<td><%=list.get(i) %></td>
		<td><a href="sessiondel.jsp?cnt=<%=i%>">��</a>
<%	}}%>
</table>
</form>
</body>
</html>