<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �۾���</title>
<style type="text/css">
	#submit{
		text-align:center;
	}
	
</style>
</head>
<body>
<form name="f" action="book2.jsp" method="post">
<table name="t">
	<tr><td>�湮��</td><td><input type="text" name="visitor"></td></tr>
	<tr><td>����</td><td><input type="text" name="title"></td></tr>
	<tr><td style='vertical-align:top;'>����</td><td><textarea rows="10" cols="100" name="intext">�ȳ��ϼ���. ȫ�浿�Դϴ�.</textarea></td></tr>
	<tr><td></td><td id="submit"><input type="submit" value="�۾���"></td></tr>
</table>
</form>
</body>
</html>