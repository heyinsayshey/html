<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%-- ���⼭ �������� url���ٰ� ~jsp?num=10&kind=2 �̷������� ��������� �Ķ���͸� ������ �� �ִ�. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�հ� ��� ����</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));//�Էµ� ����
	String kind = request.getParameter("kind");//0:��ü��, 1:Ȧ����, 2:¦����
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
<h2><%=num %>������ <%=(kind.equals("0")?"��ü":(kind.equals("1")?"Ȧ��":"¦��")) %> �� : 
<%=sum %></h2>
</body>
</html>