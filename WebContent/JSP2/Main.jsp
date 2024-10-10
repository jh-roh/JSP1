<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
	//center 값을 변경해주기 위해서 request 객체를 이용하여 center 값을 받아옴.
	String center = request.getParameter("center");


	//처음 Main.jsp를 실행하면 null 값이 실행되기에 null처리를 해줌.
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