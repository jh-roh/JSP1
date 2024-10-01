<%@page import="model.MemberDao"%>
<%@page import="model.MemberBean"%>
<%@page import="java.net.URLDecoder"%>
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
 	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	System.out.println(id);
	id = URLDecoder.decode(id, "UTF-8");
	System.out.println(id);
	MemberDao mdao = new MemberDao();
	MemberBean mbean = mdao.getOneMember(id);
 %>
 
 
 <center>
 
 <h2>회원 정보 삭제 하기</h2>
 	<table width="400" border="1" >
 	
 	<form action="MemberDeleteProc.jsp" method="post">
 		<tr height="50">
 			<td align="center" width="150">아이디</td>
 			<td width="250"><%=mbean.getId() %> </td>
 		</tr>
 		<tr height="50">
 			<td align="center" width="150">이메일</td>
 			<td width="250">
 				<input type="email" name="email" value="<%=mbean.getEmail() %>">
 			</td>
 		</tr>
 		<tr height="50">
 			<td align="center" width="150">전화번호</td>
 			<td width="250">
 				<input type="tel" name="tel" value="<%=mbean.getTel() %>">
 			 </td>
 		</tr>
 		<tr height="50">
 			<td align="center" width="150">패스워드</td>
 			<td width="250">
 				<input type="password" name="pass1" >
 			 </td>
 		</tr>
 		<tr height="50">
 			<td align="center" colspan="2"  >
 				<input type="hidden" name="id" value="<%=mbean.getId() %>" >
 				<input type="submit" value="회원 삭제하기" > &nbsp; &nbsp;</form>
 				<button onclick="location.href='MemberList.jsp'" >회원 전체 보기</button>
 			</td>
 		</tr>
 	</table>
 </center>
</body>
</html>