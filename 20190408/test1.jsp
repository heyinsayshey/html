<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Էµ� ���ڱ����� ��</title>
</head>
<body>
<%
	String num = request.getParameter("num");
%>
<span style='font-size:50px; type:bold;'><%=num %>������ �� : </span>
<%
	int sum = 0;
	for(int i=1;i<=Integer.parseInt(num);i++){
		sum += i;
	}%>
<span style='font-size:50px;'>	<%=sum %></span>
</body>
</html>