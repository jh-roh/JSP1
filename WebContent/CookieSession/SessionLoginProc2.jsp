<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<center>
	<h2>세션 로그인 처리2</h2>
<%

	//세션을 이용하여 데이터를 불러옴
	String id = (String)session.getAttribute("id");
	String pass = (String)session.getAttribute("pass");
%>
	<h2>당신의 아이디는 <%=id %>입니다.</h2>
	<h2>당신의 패스워드는 <%=pass %>입니다.</h2>
</center>
</body>
</html>