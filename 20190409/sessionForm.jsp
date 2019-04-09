<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션을 이용한 장바구니 예제</title>
</head>
<body>
<h2>상품 선택</h2>
<form name="f" method="post" action="sessionadd.jsp">
<!-- product : 전달되는 파라미터. -->
	<select name="product">
		<option>사과</option><option>배</option><option>귤</option>
		<option>자몽</option><option>감</option><option>딸기</option>
	</select>
	<input type="submit" value="장바구니추가">
</form>
<!-- 파라미터 없음. 전달할 선택값이 없기 때문. -->
<a href="sessionview.jsp">장바구니 보기</a>
</body>
</html>