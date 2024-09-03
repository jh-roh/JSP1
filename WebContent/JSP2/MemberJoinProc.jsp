<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<center>
		<h2>회원 정보 보기</h2>
		<%
			request.setCharacterEncoding("EUC-KR");
		%>
		<!-- request로 넘어온 데이터를 자바 빈즈랑 맵핑 시켜주는 useBeans -->
		<!-- 객체생성 MemberBean mbean MemberBean mbean = new MemberBean()  -->
		<!-- Jsp 내용을 자바빈 클래스(MeberBean의)에 데이터를 맵핑(넣어줌)  -->
		<jsp:useBean id="mbean" class="bean.MemberBean">
			<%-- <jsp:setProperty name="mbean" property="id" /> --%>
			<jsp:setProperty name="mbean" property="*" />
		</jsp:useBean>
		
	
	<h2>당신의 아이디는 <jsp:getProperty property="id" name="mbean" /> </h2>	
	<h2>당신의 아이디는 <jsp:getProperty property="pass1" name="mbean" /> </h2>	
	<h2>당신의 아이디는 <jsp:getProperty property="email" name="mbean" /> </h2>	
	
	
	<h2>당신의 이메일 
	<%=mbean.getTel() %>
	</h2>
	
	
	
	</center>

</body>
</html>