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
		//id�� null���� �ο�
		session.setAttribute("id", null);
		//���� �����ð��� 0���� ����
		session.setMaxInactiveInterval(0);

		response.sendRedirect("Main.jsp");
	}
	
	//������ ���Ͽ� id�� �о�帲
	String id = (String)session.getAttribute("id");

	//�α����� �Ǿ� ���� �ʴٸ� session ���� null ó�� ����
	if(id == null) {
		id = "�մ�";
	}

%>

	<!-- Top  -->
	<table width="800" >
		<tr height="100">
			<!-- �ΰ��̹���  -->
			<td colspan="2" align="center" width="200">
				<img alt="" src="../img/urbanbrush-20190320060456673857.png" width="200" height="70" />
			</td>
			<td colspan="5" align="center">
			<font size="10">���� ķ��</font>
			
			</td>
		 </tr>
		 <tr height="50">
		 	<td width="110" align="center"> ��Ʈ </td>
		 	<td width="110" align="center"> ���� </td>
		 	<td width="110" align="center"> �ı�� </td>
		 	<td width="110" align="center"> ħ�� </td>
		 	<td width="110" align="center"> ���̺� </td>
		 	<td width="110" align="center"> ȭ�Դ� </td>
	 		<td width="110" align="center"> 
		 	
		 	<%
		 		if(id.equals("�մ�")) {
 			%>
		 		<%=id %>��  <button onclick="location.href='Main.jsp?center=../CookieSession/SessionLoginForm.jsp'" >�α���</button>
	 		<%	
		 		}else {
		 	%>
		 				<%=id %>��  <button onclick="location.href='Main.jsp?logout=1'" >�α׾ƿ�</button>
		 	<%} %>
		 	
		 	</td>		
		 </tr>
	</table>
</body>
</html>