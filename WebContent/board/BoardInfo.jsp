<%@page import="model.BoardBean"%>
<%@page import="model.BoadrDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>

<%
	int num = Integer.parseInt(request.getParameter("num").trim());

	//������ ���̽� ����
	BoadrDAO bdao = new BoadrDAO();
	
	//boardbean Ÿ������ �ϳ��� �Խñ��� ����
	
	BoardBean bean = bdao.getOneBoard(num);

%>



</body>
</html>