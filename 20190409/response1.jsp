<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ü</title>
</head>
<body>
<h1>response ��ü�� �������� ���޵Ǵ� ��ü�� �����ϸ� �ȴ�. ���ο� ��¹��۸� ������ �־, �������� ���޵Ǵ� ������ �����ϰ� �ִ�. </h1>
<h2>���� response ��ü�� �̿��Ͽ� �Ƕ������ �Ͽ��� �ٸ� �������� ��û�ϵ��� �� �� �ִ�.�ٸ� �������� ��û�ϵ��� �ϴ� ���� redirect ��� �Ѵ�.</h2>
<h2>���� �������� �ִ� �������� ������ �ϳ��� ������ ���� ���̴�.</h2>
<!-- redirect ��� �ݵ�� �ܿ��. -->
<!-- sendRedirect : ���û�� �� ���̱� ������ response1.jsp�� response2.jsp�� �ٸ� request ������ ������.  -->
<% response.sendRedirect("response2.jsp"); %>
</body>
</html>