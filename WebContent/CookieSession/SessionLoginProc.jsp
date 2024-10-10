<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<center>
	<h2>세션 로그인 처리1</h2>
<%
	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");

	String pass = request.getParameter("pass");

	//아이디와 패스워드를 저장
	session.setAttribute("id", id);
	session.setAttribute("pass", pass);
	
	//세셔읜 유지시간 설정
	session.setMaxInactiveInterval(60 * 2);
	response.sendRedirect("../JSP2/Main.jsp");
%>
	<%-- <h2>당신의 아이디는 <%=id %>입니다.</h2>
	<a href="SessionLoginProc2.jsp" >다음 페이지로 이동</a> --%>
</center>
</body>
</html>