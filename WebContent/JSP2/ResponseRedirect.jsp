<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h2>ResponseRedirect.jsp 페이지 입니다.</h2>
	<%
		request.setCharacterEncoding("EUC-KR");//post 방식 한글 처리
		
		//request 객체에 담겨진 사용자 정보 id, pass 추출한 정보
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");

		String phone = request.getParameter("phone");
	
	%>
	
	<h3><%=id %></h3>
	<h3><%=pass %></h3>
	<h3><%=phone %></h3>
</body>
</html>