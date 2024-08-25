<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>구구단 출력</h2>


<%
	for(int i = 1; i<=9; i++)
	{
		for(int j = 1; j<=9; j++)
		{
			
			out.write(i + " * " + j + " = " + i*j);
%>
			<%-- <%=i%>X<%=j%>=<%=i*j%> &nbsp;&nbsp; --%>				
 		
<% 
		}
		
%>
		<br/> 	
<%
	}
%>

</body>
</html>