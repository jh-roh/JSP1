<%@page import="model.MemberBean"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 1.�����ͺ��̽����� ��� ȸ���� ������ ������. 2. table �±׸� �̿��Ͽ� ȭ�鿡 ȸ������ ������ ǥ��  -->

<%
	MemberDao mdao = new MemberDao();

	//ȸ������ ������ �󸶳� ����Ǿ� �ִ��� �𸣱⿡ ���������� Vecotr�� �̿��Ͽ� �����͸�
	//�������ش�.
	Vector<MemberBean> vec = mdao.getAllMember();

%>
<center>
	<table width="800" border="1">
		<tr height="50">
			<td align="center" width="150">���̵�</td>
			<td align="center" width="250">�̸���</td>
			<td align="center" width="200">��ȭ��ȣ</td>
			<td align="center" width="200">���</td>
		</tr>
		<%
			for(int i = 0; i < vec.size(); i++) {
			//���Ϳ� ��� �� Ŭ������ �ϳ��� ����
			MemberBean bean = vec.get(i);
		%>
			<tr height="50">
				<td align="center" width="150"><%=bean.getId() %></td>
				<td align="center" width="250"><%=bean.getEmail() %></td>
				<td align="center" width="200"><%=bean.getTel() %></td>
				<td align="center" width="200"><%=bean.getHobby() %></td>
			</tr>
		<%}%>
	</table>

</center>

</body>
</html>