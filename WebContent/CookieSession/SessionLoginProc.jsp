<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<center>
	<h2>���� �α��� ó��1</h2>
<%
	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");

	String pass = request.getParameter("pass");

	//���̵�� �н����带 ����
	session.setAttribute("id", id);
	session.setAttribute("pass", pass);
	
	//������ �����ð� ����
	session.setMaxInactiveInterval(60 * 2);
	response.sendRedirect("../JSP2/Main.jsp");
%>
	<%-- <h2>����� ���̵�� <%=id %>�Դϴ�.</h2>
	<a href="SessionLoginProc2.jsp" >���� �������� �̵�</a> --%>
</center>
</body>
</html>