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
		<h2>ȸ�� ���� ����</h2>
		<%
			request.setCharacterEncoding("EUC-KR");
		%>
		<!-- request�� �Ѿ�� �����͸� �ڹ� ����� ���� �����ִ� useBeans -->
		<!-- ��ü���� MemberBean mbean MemberBean mbean = new MemberBean()  -->
		<!-- Jsp ������ �ڹٺ� Ŭ����(MeberBean��)�� �����͸� ����(�־���)  -->
		<jsp:useBean id="mbean" class="bean.MemberBean">
			<%-- <jsp:setProperty name="mbean" property="id" /> --%>
			<jsp:setProperty name="mbean" property="*" />
		</jsp:useBean>
		
	
	<h2>����� ���̵�� <jsp:getProperty property="id" name="mbean" /> </h2>	
	<h2>����� ���̵�� <jsp:getProperty property="pass1" name="mbean" /> </h2>	
	<h2>����� ���̵�� <jsp:getProperty property="email" name="mbean" /> </h2>	
	
	
	<h2>����� �̸��� 
	<%=mbean.getTel() %>
	</h2>
	
	
	
	</center>

</body>
</html>