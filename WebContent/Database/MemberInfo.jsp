<%@page import="java.net.URLDecoder"%>
<%@page import="model.MemberBean"%>
<%@page import="model.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 1.데이터 베이스에서 한 회원의 정보를 가져옴. 
		 2.talbe 태그를 이용하여 화면에 회원의 정보를 표출
	
	  -->
	  
 <%
	 request.setCharacterEncoding("UTF-8");

 
 	String id = request.getParameter("id");
 	System.out.println(id);
 	id = URLDecoder.decode(id, "UTF-8");
 	System.out.println(id);
 	MemberDao mdao = new MemberDao();
 	MemberBean mbean = mdao.getOneMember(id);
 %>
 
 <center>
 	<table width="400" border="1" >
 		<tr height="50">
 			<td align="center" width="150">아이디</td>
 			<td width="250"><%=mbean.getId() %> </td>
 		</tr>
 		<tr height="50">
 			<td align="center" width="150">이메일</td>
 			<td width="250"><%=mbean.getEmail() %> </td>
 		</tr>
 		<tr height="50">
 			<td align="center" width="150">전화번호</td>
 			<td width="250"><%=mbean.getTel() %> </td>
 		</tr>
 		<tr height="50">
 			<td align="center" width="150">취미</td>
 			<td width="250"><%=mbean.getHobby()%> </td>
 		</tr>
 		<tr height="50">
 			<td align="center" width="150">직업</td>
 			<td width="250"><%=mbean.getJob() %> </td>
 		</tr>
 		<tr height="50">
 			<td align="center" width="150">나이</td>
 			<td width="250"><%=mbean.getAge() %> </td>
 		</tr>
 		<tr height="50">
 			<td align="center" width="150">정보</td>
 			<td width="250"><%=mbean.getInfo() %> </td>
 		</tr>
 	</table>
 </center>
</body>
</html>