<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>pageContext ��ü�� �̿��Ͽ�  forward �����ϱ�</title>
<script type="text/javascript">
	function city_select(c){
		location.href = 'city.jsp?c='+c;
	}
</script>
</head>
<body>
<select id="city">
	<option>seoul</option>
	<option>busan</option>	
</select>
<input type="button" value="������ȸ" onclick="city_select(city.value)">
<input type="button" value="��ü ������ȸ" onclick="location.href='cityAll.jsp'">
</body>
</html>