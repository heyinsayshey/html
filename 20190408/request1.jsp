<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>요청 파라미터 정보 출력하기</title>
</head>
<body>
<h2>요청 파라미터 정보</h2>
<%
	//setCharacterEncoding : 요청 파라미터의 인코딩방식을 설정
	//설정하지 않으면 기본 인코딩 방식 : iso-8859 또는 8859_1방식. 스페인어.
	//euc-kr 인코딩 방식 변경 => method=post 인 경우만 처리됨.
	request.setCharacterEncoding("euc-kr");
	//request.getParameter : <input type="text" name="name"> : name의 속성값이 파라미터 이름임.
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");
	String year = request.getParameter("year");
%>
이름 : <%=name %><br>
나이 : <%=age %><br>
성별 : <%=gender.equals("1")?"남":"여" %><br>
취미 : <%=hobby %><br>
출생연도 : <%=year %><br>
<h2>요청파라미터에 저장된 모든 값 조회하기</h2>
<h3>취미 : </h3>
<%
	String []hobbies = request.getParameterValues("hobby");
	for(String h : hobbies){%>
		<%=h %>&nbsp;&nbsp;
	<%} %>
<br>
<h2>모든 요청파라미터의 모든 값 조회하기</h2>
<table>
	<tr><th>파라미터이름</th><th>파라미터값</th></tr>
	<%  //Enumeration : Iterator 의 구버전 : 반복자.
		Enumeration e = request.getParameterNames();//Map객체로 가져옴
		while(e.hasMoreElements()){
			String paramName =(String)e.nextElement();//파라미터 이름 (키)
			String [] paramValues = request.getParameterValues(paramName);//파라미터 값(밸류)
	%>
	<tr><td><%=paramName %></td>
	<td><% for(String v : paramValues){%>
		<%=v %>&nbsp;&nbsp;&nbsp;<%} %></td>
	</tr><% } %>
</table>
</body>
</html>