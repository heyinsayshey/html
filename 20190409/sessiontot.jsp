<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ٱ��� ��� ����</title>
</head>
<body>
<%
	//session.getAttribute("cart") : �Ӽ���ȸ. session ��ü�� ��ϵ� �Ӽ� �� �̸��� cart �� ��ü ����.
	//���������� 2���� ��. 
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("cart");
	if(list==null || list.size()==0){
%>
	<h3>��ٱ��Ͽ� ��ǰ�� �����ϴ�.</h3>
<% } else {
	for(String p : list){ %>
	<h4><%=p %></h4>
<%}}
	//session�� �Ӽ��� ����. ������ �����ϰ� ���ϴ� �Ӽ��� �츱 �� �ִ�.
	session.removeAttribute("cart");
	
	//session ��ü�� ���� �����ϱ�. ���ǰ� �Ӽ���� �� �����ǰ� ���ο� ������ ������.
	session.invalidate();
%>
</body>
</html>