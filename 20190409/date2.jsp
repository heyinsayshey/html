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
		alert("������ �����Ǿ����ϴ�. ���ο� ������ ����ϼ���.");
		history.go(-1);
		//location.href = "date1.jsp";
		</script>
<%	} else {%>
		<h4>��ϵ� ��¥ : <%=date %></h4>
<%	}
	session.removeAttribute("date");
	//session.invalidate();�� ���ֹ���.
%>

</body>
</html>