<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ���� ����</title>
</head>
<body>
<%
	//post ������� �����Ͱ� �Ѿ�ö� �ѱ��� ������ �ֱ� ������
	request.setCharacterEncoding("EUC-KR");
	
	//���� ����ڷκ��� �Ѿ�� �����͸� ����
	String id = request.getParameter("id");
	String pass1 = request.getParameter("pass1");
	String pass2 = request.getParameter("pass2");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	
	//[]�� Ÿ������ ����
	String[] hobby = request.getParameterValues("hobby");
	
	String job = request.getParameter("job");
	String age = request.getParameter("age");
	
	String info = request.getParameter("info");

	if(!pass1.equals(pass2)){
%>	
	<script type="text/javascript">
		alert("��й�ȣ�� Ʋ���ϴ�."); //���â
		hisotry.go(-1); //���� �������� �̵�
	</script>
<%
	}
%>
<center>
<table width=500 " border="1">
	<tr height="50">
		<td width="150" align="center">���̵�</td>
		<td width="350"><%=id %></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">�̸���</td>
		<td width="350"><%=email %></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">��ȭ��ȣ</td>
		<td width="350"><%=tel %></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">����� ���� �о�</td>
		<td width="350" align="center">
		<%
			for(int i=0; i < hobby.length; i++) {
				out.write(hobby[i] + " ");
			}
		%>
		</td>
	</tr>
	<tr height="50">
		<td width="150" align="center">����� ������</td>
		<td width="350"><%=job %></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">����� ������</td>
		<td width="350"><%=age %></td>
	</tr>
</table>
</center>

</body>
</html>