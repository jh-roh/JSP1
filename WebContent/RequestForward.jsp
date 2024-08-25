<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- RequestLogin 넘어온 아이디와 패스워드를 읽어야 함.  -->

<%
	//사용자의 정보가 저장되어있는 객체 request의 getParameter() 사용자의 정보를 추출
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");


%>
	<h2>
	RequestForward 페이지 입니다.
	당신의 아이디는 <%=id%>, 패스워드는 <%=pass%> 입니다.
	</h2>
	


</body>
</html>