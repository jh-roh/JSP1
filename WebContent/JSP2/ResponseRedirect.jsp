<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h2>ResponseRedirect.jsp ������ �Դϴ�.</h2>
	<%
		request.setCharacterEncoding("EUC-KR");//post ��� �ѱ� ó��
		
		//request ��ü�� ����� ����� ���� id, pass ������ ����
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");

		String phone = request.getParameter("phone");
	
	%>
	
	<h3><%=id %></h3>
	<h3><%=pass %></h3>
	<h3><%=phone %></h3>
</body>
</html>