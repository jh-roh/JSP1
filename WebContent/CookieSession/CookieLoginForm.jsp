<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<center>
		<h2>��Ű �α���</h2>
		<form action="CookieLoginProc.jsp" method="post">
			<table width="400" border="1">
				<tr height="50">
					<td width="150">���̵�</td>
					<td width="250"><input type="text" name="id"></td>
				</tr>
				<tr height="50">
					<td width="150">�н�����</td>
					<td width="250"><input type="password" name="pass"></td>
				</tr>
				<tr height="50">
					<td colspan="2" align="center" width="150"><input type="checkbox" name="save"> ���̵� ����</td>
				</tr>
				<tr height="50">
					<td colspan="2" align="center" width="150"><input type="submit" name="submit" value="�α���"></td>
				</tr>
			</table>
		
		</form>
	</center>
</body>
</html>