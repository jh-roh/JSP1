<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>1-10까지의 숫자를 화면에 표시</h2>
<%
	//1-10까지의 숫자를 화면에 출력하시오
	for(int i = 1; i <= 10; i++){
		//브라우저에 데이터 출력을 할 때 Expression(표현식) 사용	
%>
		<%=i%><br/>
<%
	}
%>

</body>
</html>