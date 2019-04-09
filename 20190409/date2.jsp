<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Date today = new Date();
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E");
	Object date = session.getAttribute("date");
	if(date==null){%>
		<script type="text/javascript">
		alert("세션이 삭제되었습니다. 새로운 세션을 등록하세요.");
		history.go(-1);
		//location.href = "date1.jsp";
		</script>
<%	} else {%>
		<h4>등록된 날짜 : <%=date %></h4>
<%	}
	session.removeAttribute("date");
	//session.invalidate();다 없애버림.
%>

</body>
</html>