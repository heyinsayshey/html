<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��û �Ķ���� ���� ����ϱ�</title>
</head>
<body>
<h2>��û �Ķ���� ����</h2>
<%
	//setCharacterEncoding : ��û �Ķ������ ���ڵ������ ����
	//�������� ������ �⺻ ���ڵ� ��� : iso-8859 �Ǵ� 8859_1���. �����ξ�.
	//euc-kr ���ڵ� ��� ���� => method=post �� ��츸 ó����.
	request.setCharacterEncoding("euc-kr");
	//request.getParameter : <input type="text" name="name"> : name�� �Ӽ����� �Ķ���� �̸���.
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");
	String year = request.getParameter("year");
%>
�̸� : <%=name %><br>
���� : <%=age %><br>
���� : <%=gender.equals("1")?"��":"��" %><br>
��� : <%=hobby %><br>
������� : <%=year %><br>
<h2>��û�Ķ���Ϳ� ����� ��� �� ��ȸ�ϱ�</h2>
<h3>��� : </h3>
<%
	String []hobbies = request.getParameterValues("hobby");
	for(String h : hobbies){%>
		<%=h %>&nbsp;&nbsp;
	<%} %>
<br>
<h2>��� ��û�Ķ������ ��� �� ��ȸ�ϱ�</h2>
<table>
	<tr><th>�Ķ�����̸�</th><th>�Ķ���Ͱ�</th></tr>
	<%  //Enumeration : Iterator �� ������ : �ݺ���.
		Enumeration e = request.getParameterNames();//Map��ü�� ������
		while(e.hasMoreElements()){
			String paramName =(String)e.nextElement();//�Ķ���� �̸� (Ű)
			String [] paramValues = request.getParameterValues(paramName);//�Ķ���� ��(���)
	%>
	<tr><td><%=paramName %></td>
	<td><% for(String v : paramValues){%>
		<%=v %>&nbsp;&nbsp;&nbsp;<%} %></td>
	</tr><% } %>
</table>
</body>
</html>