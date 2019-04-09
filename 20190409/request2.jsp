<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%-- 여기서 돌릴려면 url에다가 ~jsp?num=10&kind=2 이런식으로 집어넣으면 파라미터를 전달할 수 있다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>합계 결과 보기</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));//입력된 숫자
	String kind = request.getParameter("kind");//0:전체합, 1:홀수합, 2:짝수합
	int sum = 0;
	
	if(kind.equals("0")){
		for(int i=1;i<=num;i++){
			sum += i;
		}
	}
	if(kind.equals("1")){
		for(int i=1;i<=num;i++){
			if(i%2==1){
				sum += i;
			}
		}
	}
	if(kind.equals("2")){
		for(int i=1;i<=num;i++){
			if(i%2==0){
				sum += i;
			}
		}
	}
%>
<h2><%=num %>까지의 <%=(kind.equals("0")?"전체":(kind.equals("1")?"홀수":"짝수")) %> 합 : 
<%=sum %></h2>
</body>
</html>