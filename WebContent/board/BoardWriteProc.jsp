<%@page import="model.BoadrDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
	request.setCharacterEncoding("euc-kr");

%>

<!-- �Խñ� �ۼ��� �����͸� �ѹ��� �о�帲 -->

<jsp:useBean id="boardbean" class="model.BoardBean">
	<jsp:setProperty name="boardbean" property="*" />
</jsp:useBean>

<%

	//������ ���̽� ������ �� Ŭ������ �Ѱ���
	BoadrDAO bdao = new BoadrDAO();

	//������ ���� �޼ҵ带 ȣ��
	bdao.insertBoard(boardbean);
	
	//�Խñ� ������ ��ü �Խñ� ����
	response.sendRedirect("BoardList.jsp");
	
	
	
	

%>



</body>
</html>