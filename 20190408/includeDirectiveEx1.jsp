<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include ���þ� ����</title>
</head>
<body>
<%--
	jsp ���þ�
	- page ���þ� : ���� �������� Ư¡�� �Ӽ��� ���ؼ� ����.
					<%@ page �Ӽ�1=�Ӽ���1....%>
	- include ���þ� : �ٸ� �������� ������ �����ϴ� ���. => �������κп��� ������ ���Ͽ� ����Ѵ�.(���� ���� ����)
					<%@ include file="��������" %>
	- taglib ���þ� : Ŀ���� �±׸� ����. EL, JSTL �κп��� ����.
					<%@ taglib prefix="..." url="..."%>
 --%>
<%
	String msg = "includeDirectiveEx1.jsp �������� msg �����Դϴ�.";
%>
<h1>includeDirectiveEx1.jsp�������Դϴ�.</h1>
<%@ include file = "includeDirectiveEx2.jsp" %>
<h2>include Directive(���þ�)�� includeDirectiveEx1.jsp ���������� includeDirectiveEx2.jsp ��������
������ ���Ͽ� ����� ����մϴ�.<br>
includeDirectiveEx1.jsp�� includeDirectiveEx2.jsp �������� �ϳ��� ���������� ��ȯ�˴ϴ�.
��, �ϳ��� �ڹ� ���Ϸ� ��������Ƿ� ���� ������ �����մϴ�.
</h2>
</body>
</html>