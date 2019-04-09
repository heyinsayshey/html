<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니 목록 삭제하기</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("cart");
	int count = Integer.parseInt(request.getParameter("cnt"));
	list.remove(count);
%>
<script type="text/javascript">
 location.href="sessionview.jsp";
</script>
</body>
</html>