<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h2>세션 로그인 처리1</h2>
<%
	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");

	String pass = request.getParameter("pass");
%>
	<h2>당신의 아이디는 <%=id %>입니다.</h2>
	<a href="SessionLoginProc2.jsp" >다음 페이지로 이동</a>
</body>
</html>