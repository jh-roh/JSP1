<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h2>�� �������� �α��� ������ �Ѿ���� ������ �Դϴ�.</h2>
	<%
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		//�帧����
		//response.sendRedirect("ResponseRedirect.jsp");
		/* response.sendRedirect("ResponseRedirect.jsp?id=" + id); */
	%>
	
	<jsp:forward page="ResponseRedirect.jsp">
		<jsp:param value="mmmm" name="id"/>
		<jsp:param value="cccccc" name="phone"/>
	</jsp:forward>
	
	<h3><%=id %></h3>
	<h3><%=pass %></h3>
	

</body>
</html>