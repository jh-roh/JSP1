<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>세션 연습</h2>
<%
	String name = "roh";
	
	//세션을 이용하여 데이터를 유지
	session.setAttribute("name1", name);
	//세션유지시간
	session.setMaxInactiveInterval(10); //10초가 세션을 유지
	
	
	try {
		
		int a = 10/0;
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
%>

<%-- <a href="SessionName.jsp?name=<%=name%>"> 세션네임페이지로 이동</a>
 --%>
	<a href="SessionName.jsp"> 세션네임페이지로 이동</a>
</body>
</html>