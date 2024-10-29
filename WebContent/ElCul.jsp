<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<center>
		<h2>계산기</h2>
		<form action="ELCulProc.do" method="post">
			<table width="450">
				<tr height="40">
					<td align="center" width="100"><input type="text" name="exp1" value="${param.exp1}"></td>
					<td align="center" width="100">
						<select name="exp2">
							<option value="+"> + </option>
							<option value="-"> - </option>
							<option value="*"> * </option>
							<option value="/"> / </option>
						</select>
					</td>
					<td align="center" width="100"><input type="text" name="exp3" value="${param.exp3}"></td>
					<td align="center" width="30"> = </td>
					<td align="center" width="100"><input type="text" name="exp4" value="${requestScope.exp4}"></td>
					<td align="center" width="100"><input type="submit" value="결과보기"></td>
				</tr>
			</table>
		</form>
	</center>

</body>
</html>