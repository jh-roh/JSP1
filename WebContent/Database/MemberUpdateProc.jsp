<%@page import="model.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

	<jsp:useBean id="mbean" class="model.MemberBean">
		<jsp:setProperty name="mbean" property="*" />
	</jsp:useBean>

<%
	String id = request.getParameter("id");
	
	MemberDao mdao = new MemberDao();

	String pass = mdao.getPass(id);
	
	
	//기존 패스와 데이터베이스 패스가 같다면 member 테이블을 수정
	if(mbean.getPass1().equals(pass)) {
		//MemberDao 클래스의 회원 수정 메소드를 호출
		mdao.updateMember(mbean);
		
		response.sendRedirect("MemberList.jsp");
		
	}else{
%>
	<script type="text/javascript">
		alert("패스워드가 맞지 않습니다. 다시 확인해 주세요.");
		history.go(-1);
	</script>
	
<%
	}
%>


</body>
</html>