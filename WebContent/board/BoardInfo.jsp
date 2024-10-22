<%@page import="model.BoardBean"%>
<%@page import="model.BoadrDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>

<%
	int num = Integer.parseInt(request.getParameter("num").trim());

	//데이터 베이스 접근
	BoadrDAO bdao = new BoadrDAO();
	
	//boardbean 타입으로 하나의 게시글을 리턴
	
	BoardBean bean = bdao.getOneBoard(num);

%>



</body>
</html>