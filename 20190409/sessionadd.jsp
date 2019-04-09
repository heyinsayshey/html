<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session을 이용한 장바구니</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String product=request.getParameter("product");
	//session.getAttribute("cart") : session 객체에 등록된 속성 중 이름이 cart 인 객체 리턴.
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("cart");
	if(list == null){
		list = new ArrayList<String>();
		//session.setAttribute("cart", list) : 속성등록.
		//session 객체에 cart 이름을 가진 속성에 list 객체를 저장.
		//참조변수가 2개 생기는 것임. setAttribute로 cart를 참조, list라는 변수가 cart를 참조.
		session.setAttribute("cart", list);
	}
	list.add(product);
%>
<script type="text/javascript">
	alert("<%=product%>이(가) 추가 되었습니다.");
	//앞의 페이지로 다시 돌아감.
	history.go(-1);
</script>
</body>
</html>