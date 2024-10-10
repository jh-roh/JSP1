<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%


	String logout = (String)request.getParameter("logout");

	if(logout != null) {
		//id에 null값을 부여
		session.setAttribute("id", null);
		//세션 유지시간을 0으로 변경
		session.setMaxInactiveInterval(0);

		response.sendRedirect("Main.jsp");
	}
	
	//세션을 통하여 id를 읽어드림
	String id = (String)session.getAttribute("id");

	//로그인이 되어 있지 않다면 session 값이 null 처리 해줌
	if(id == null) {
		id = "손님";
	}

%>

	<!-- Top  -->
	<table width="800" >
		<tr height="100">
			<!-- 로고이미지  -->
			<td colspan="2" align="center" width="200">
				<img alt="" src="../img/urbanbrush-20190320060456673857.png" width="200" height="70" />
			</td>
			<td colspan="5" align="center">
			<font size="10">낭만 캠핑</font>
			
			</td>
		 </tr>
		 <tr height="50">
		 	<td width="110" align="center"> 텐트 </td>
		 	<td width="110" align="center"> 의자 </td>
		 	<td width="110" align="center"> 식기류 </td>
		 	<td width="110" align="center"> 침낭 </td>
		 	<td width="110" align="center"> 테이블 </td>
		 	<td width="110" align="center"> 화롯대 </td>
	 		<td width="110" align="center"> 
		 	
		 	<%
		 		if(id.equals("손님")) {
 			%>
		 		<%=id %>님  <button onclick="location.href='Main.jsp?center=../CookieSession/SessionLoginForm.jsp'" >로그인</button>
	 		<%	
		 		}else {
		 	%>
		 				<%=id %>님  <button onclick="location.href='Main.jsp?logout=1'" >로그아웃</button>
		 	<%} %>
		 	
		 	</td>		
		 </tr>
	</table>
</body>
</html>