<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>���� ���� ������ �Դϴ�.</h2>

<%
	/* String name = request.getParameter("name"); */
	
	String name = (String)session.getAttribute("name1");
%>

	<%=name %> �� �ݰ����ϴ�.
	
</body>	
</html>