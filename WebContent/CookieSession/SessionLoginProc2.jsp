<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h2>���� �α��� ó��2</h2>
<%
	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");

	String pass = request.getParameter("pass");
%>
	<h2>����� ���̵�� <%=id %>�Դϴ�.</h2>
	<h2>����� �н������ <%=pass %>�Դϴ�.</h2>
</body>
</html>