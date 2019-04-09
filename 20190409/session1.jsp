<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session 객체</title>
</head>
<body>
<h1>session 객체 : 브라우저의 상태 정보를 저장하는 객체</h1>
<%
	//session 이 새로 만들어지는 것이 10초마다.
	session.setMaxInactiveInterval(10);//session 유지시간. 10초
%>
<h3>session 테스트</h3>
isNew() : <%=session.isNew() %><br>
생성시간 : <%=session.getCreationTime() %><br>
최종접속시간 : <%=session.getLastAccessedTime() %><br>
sessionID : <%=session.getId() %><br>
</body>
</html>