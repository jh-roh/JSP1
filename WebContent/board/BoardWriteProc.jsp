<%@page import="model.BoadrDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
	request.setCharacterEncoding("euc-kr");

%>

<!-- 게시글 작성한 데이터를 한번에 읽어드림 -->

<jsp:useBean id="boardbean" class="model.BoardBean">
	<jsp:setProperty name="boardbean" property="*" />
</jsp:useBean>

<%

	//데이터 베이스 쪽으로 빈 클래스를 넘겨줌
	BoadrDAO bdao = new BoadrDAO();

	//데이터 저장 메소드를 호출
	bdao.insertBoard(boardbean);
	
	//게시글 저장후 전체 게시글 보기
	response.sendRedirect("BoardList.jsp");
	
	
	
	

%>



</body>
</html>