<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>방명록 글쓰기</title>
<style type="text/css">
	#submit{
		text-align:center;
	}
	
</style>
</head>
<body>
<form name="f" action="book2.jsp" method="post">
<table name="t">
	<tr><td>방문자</td><td><input type="text" name="visitor"></td></tr>
	<tr><td>제목</td><td><input type="text" name="title"></td></tr>
	<tr><td style='vertical-align:top;'>내용</td><td><textarea rows="10" cols="100" name="intext">안녕하세요. 홍길동입니다.</textarea></td></tr>
	<tr><td></td><td id="submit"><input type="submit" value="글쓰기"></td></tr>
</table>
</form>
</body>
</html>