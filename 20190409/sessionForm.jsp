<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ �̿��� ��ٱ��� ����</title>
</head>
<body>
<h2>��ǰ ����</h2>
<form name="f" method="post" action="sessionadd.jsp">
<!-- product : ���޵Ǵ� �Ķ����. -->
	<select name="product">
		<option>���</option><option>��</option><option>��</option>
		<option>�ڸ�</option><option>��</option><option>����</option>
	</select>
	<input type="submit" value="��ٱ����߰�">
</form>
<!-- �Ķ���� ����. ������ ���ð��� ���� ����. -->
<a href="sessionview.jsp">��ٱ��� ����</a>
</body>
</html>