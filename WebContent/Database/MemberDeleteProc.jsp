<%@page import="model.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
	
	<jsp:useBean id="mbean" class="model.MemberBean">
		<jsp:setProperty name="mbean" property="*" />
	</jsp:useBean>


	<h1><%=mbean.getId() %></h1>
	<h1><%=mbean.getEmail() %></h1>
	<h1><%=mbean.getTel() %></h1>
	
<%
	MemberDao mdao = new MemberDao();

	mdao.deleteMember(mbean);
	
	response.sendRedirect("MemberList.jsp");
%>

</body>
</html>