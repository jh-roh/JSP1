<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- RequestLogin �Ѿ�� ���̵�� �н����带 �о�� ��.  -->

<%
	//������� ������ ����Ǿ��ִ� ��ü request�� getParameter() ������� ������ ����
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");


%>
	<h2>
	RequestForward ������ �Դϴ�.
	����� ���̵�� <%=id%>, �н������ <%=pass%> �Դϴ�.
	</h2>
	


</body>
</html>