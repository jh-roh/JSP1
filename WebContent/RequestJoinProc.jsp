<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 정보 보기</title>
</head>
<body>
<%
	//post 방식으로 데이터가 넘어올때 한글이 깨질수 있기 때문에
	request.setCharacterEncoding("EUC-KR");
	
	//각종 사용자로부터 넘어온 데이터를 저장
	String id = request.getParameter("id");
	String pass1 = request.getParameter("pass1");
	String pass2 = request.getParameter("pass2");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	
	//[]열 타입으로 리턴
	String[] hobby = request.getParameterValues("hobby");
	
	String job = request.getParameter("job");
	String age = request.getParameter("age");
	
	String info = request.getParameter("info");

	if(!pass1.equals(pass2)){
%>	
	<script type="text/javascript">
		alert("비밀번호가 틀립니다."); //경고창
		hisotry.go(-1); //이전 페이지로 이동
	</script>
<%
	}
%>
<center>
<table width=500 " border="1">
	<tr height="50">
		<td width="150" align="center">아이디</td>
		<td width="350"><%=id %></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">이메일</td>
		<td width="350"><%=email %></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">전화번호</td>
		<td width="350"><%=tel %></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">당신의 관심 분야</td>
		<td width="350" align="center">
		<%
			for(int i=0; i < hobby.length; i++) {
				out.write(hobby[i] + " ");
			}
		%>
		</td>
	</tr>
	<tr height="50">
		<td width="150" align="center">당신의 직업은</td>
		<td width="350"><%=job %></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">당신의 연령은</td>
		<td width="350"><%=age %></td>
	</tr>
</table>
</center>

</body>
</html>