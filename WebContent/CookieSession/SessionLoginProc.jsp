<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h2>���� �α��� ó��1</h2>
<%
	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");

	String pass = request.getParameter("pass");
%>
	<h2>����� ���̵�� <%=id %>�Դϴ�.</h2>
	<a href="SessionLoginProc2.jsp" >���� �������� �̵�</a>
</body>
</html>