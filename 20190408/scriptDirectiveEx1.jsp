<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP Script(��ũ��Ʈ)</title>
</head>
<body>
<h1>Script�� ����</h1>
<ol>
	<li>��ũ��Ʈ��(Scriptlet) : &lt;%...%&gt;<br>
	�ڹټҽ��� ����. ������ _jspService() �޼��忡 �����Ǵ� ����
	<li>ǥ����(Expression) : &lt;%=...%&gt;<br>
	�ڹټҽ��� ����. ������ �������� ȭ�鿡 ��µ�. �ݵ�� ���� �ʿ���.<br>
	�������� ;�� ���� ����. �ּ��� ������ �ּ��� ������.
	<li>����(Declaration) : &lt;%!...%&gt;<br>
	�ڹټҽ��� ����. ������ ��� ������, ��� �޼���� �����. ���� ������.
</ol>
<%-- out.println(100;//) : �ȵ�. ��ȣ �ȿ� ���� ���̹Ƿ� ;�� //�� ����� �� ����. --%>
<%=100 %>
<% String msg = "��ũ��Ʈ ����;";
   for(int i=1;i<=10;i++){%>
  		<%= i + ":" + msg +"<br>"/*������ �ּ��� ������. �������� ;ǥ�� ����*/ %> 
<% } %>
<%!
	String msg = "���𹮿��� ����� msg";
	String getMsg() {
		return msg;
	}
%>
</body>
</html>