<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ��Ģ����</title>
<script type="text/javascript">
	function calc(o,f){
		f.kind.value = o;
		f.submit();
	}
</script>
</head>
<body>
<form action="request3.jsp" method="post">
����1 : <input type="text" name="num1">&nbsp;
����2 : <input type="text" name="num2">&nbsp;<br>
<input type="hidden" name="kind" >
<input type="button" value="+" onclick="calc('+',this.form)">
<input type="button" value="-" onclick="calc('-',this.form)">
<input type="button" value="*" onclick="calc('*',this.form)">
<input type="button" value="/" onclick="calc('/',this.form)">
</form>
</body>
</html>