<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
	//center ���� �������ֱ� ���ؼ� request ��ü�� �̿��Ͽ� center ���� �޾ƿ�.
	String center = request.getParameter("center");


	//ó�� Main.jsp�� �����ϸ� null ���� ����Ǳ⿡ nulló���� ����.
	if(center == null) {
		center = "Center.jsp";
	}

%>

<center>
	<table border="1" width="800">
	<!-- Top  -->
	<tr height="150">
		<td align="center" colspan="2">
			<jsp:include page="Top.jsp" />
			<%-- <jsp:include page="Top.jsp">
				<jsp:param value="aaa" name="id"/>
				<jsp:param value="bbb" name="pass"/>
			</jsp:include>
			 --%>
		<%-- <%@ include file="Top.jsp" %> --%>
		</td>
	</tr>
	
	
	<tr height="400">
		<!-- Left  -->
		<td align="center" width="200">
			<jsp:include page="Left.jsp" />
		</td>
		<!-- Center  -->
		<td align="center" width="600">
			<%-- <jsp:include page="Center.jsp" /> --%>
			<jsp:include page="<%=center %>" />
		</td>
	</tr>
	
	<!-- Bottom  -->
	<tr height="100">
		<td align="center" colspan="2">
			<jsp:include page="Bottom.jsp" />
		</td>
	</tr>
	</table>
</center>

</body>
</html>