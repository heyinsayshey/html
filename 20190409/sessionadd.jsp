<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session�� �̿��� ��ٱ���</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String product=request.getParameter("product");
	//session.getAttribute("cart") : session ��ü�� ��ϵ� �Ӽ� �� �̸��� cart �� ��ü ����.
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("cart");
	if(list == null){
		list = new ArrayList<String>();
		//session.setAttribute("cart", list) : �Ӽ����.
		//session ��ü�� cart �̸��� ���� �Ӽ��� list ��ü�� ����.
		//���������� 2�� ����� ����. setAttribute�� cart�� ����, list��� ������ cart�� ����.
		session.setAttribute("cart", list);
	}
	list.add(product);
%>
<script type="text/javascript">
	alert("<%=product%>��(��) �߰� �Ǿ����ϴ�.");
	//���� �������� �ٽ� ���ư�.
	history.go(-1);
</script>
</body>
</html>