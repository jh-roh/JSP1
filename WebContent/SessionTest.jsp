<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>���� ����</h2>
<%
	String name = "roh";
	
	//������ �̿��Ͽ� �����͸� ����
	session.setAttribute("name1", name);
	//���������ð�
	session.setMaxInactiveInterval(10); //10�ʰ� ������ ����
	
	
	try {
		
		int a = 10/0;
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
%>

<%-- <a href="SessionName.jsp?name=<%=name%>"> ���ǳ����������� �̵�</a>
 --%>
	<a href="SessionName.jsp"> ���ǳ����������� �̵�</a>
</body>
</html>