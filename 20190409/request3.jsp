<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>간단한 사칙연산 결과</title>
</head>
<body>
<% 
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	String operator = request.getParameter("kind");
	double result = 0;
	
	if(operator.equals("+")){
		result = num1+num2;
	}
	if(operator.equals("-")){
		result = num1-num2;
	}
	if(operator.equals("*")){
		result = num1*num2;
	}
	if(operator.equals("/")){
		result = (double)num1/(double)num2;
	}
%>
<h1><%=num1 %> <%=operator %> <%=num2 %> = <%=result %></h1> 
</body>
</html>