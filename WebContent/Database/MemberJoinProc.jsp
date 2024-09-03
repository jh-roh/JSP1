<%@page import="model.MemberDao"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<%@page import="model.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>

<%
	request.setCharacterEncoding("EUC-KR");

	//취미 부분은 별도로 읽어드려 다시 빈클래스에 저장
	String[] hobby = request.getParameterValues("hobby");
	
	//배열의 있는 내용을 하나의 스트링으로 저장
	String texthobby = "";
	
	for(int i = 0; i < hobby.length; i++) {
		texthobby += hobby[i] + " ";
	}
		
	
%>
	<!-- useBean을 이용하여 한꺼번에 데이터를 받아옴 -->

	<jsp:useBean id="mbean" class="model.MemberBean">
		<!-- 맵핑 -->
		<jsp:setProperty name="mbean" property="*" />
	</jsp:useBean>


<%
	//기존 취미는 주소번지가 저장되기에 위에 배열의 내용을 하나의 스트링으로 저장한 변수르 다시 입력
	mbean.setHobby(texthobby);  


	MemberDao mdao = new MemberDao();
	mdao.insertMethod(mbean);
	
	
/*
	String id = "sa";
	String pass = "JVM";
	
	//접속 url
	String connectionUrl = "jdbc:sqlserver://localhost\\sqlexpress:50678;databaseName=JSPTest;user=sa;password=JVM;trustServerCertificate=true;";

	
	try (Connection con = DriverManager.getConnection(connectionUrl)) {
		
		//해당 데이터 베이스 접속
		System.out.println("Connected to SQL Server successfully.");
           
		
		//접속 후 쿼리 준비하여 쿼리를 사용하록 설정
		String sql = "insert into member values(?,?,?,?,?,?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		//?에 맞게 데이터를 맵핑
				
		pstmt.setString(1, mbean.getId());
		pstmt.setString(2, mbean.getPass1());
		pstmt.setString(3, mbean.getEmail());
		pstmt.setString(4, mbean.getTel());
		pstmt.setString(5, mbean.getHobby());
		pstmt.setString(6, mbean.getJob());
		pstmt.setString(7, mbean.getAge());
		pstmt.setString(8, mbean.getInfo());
		
		//MSSQL 쿼리를 실행하시오.
		pstmt.executeUpdate(); //insert, update,delete 시 사용하는 메소드
		
		//자원 반납
		
        con.close();
           
           
       } catch (SQLException e) {
           e.printStackTrace();
       }
		
*/

%>

	<h2>당신의 아이디 = <%=mbean.getId() %></h2>
	
	<h2>당신의 아이디 = <%=mbean.getHobby() %></h2>

</body>
</html>

<!-- 
USE [JSPTest]
GO

/****** Object:  Table [dbo].[MEMBER]    Script Date: 2024-09-03 오후 9:40:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MEMBER](
	[ID] [nvarchar](20) NOT NULL,
	[PASS1] [nvarchar](20) NOT NULL,
	[EMAIL] [nvarchar](50) NOT NULL,
	[TEL] [nvarchar](20) NOT NULL,
	[HOBBY] [nvarchar](60) NOT NULL,
	[JBO] [nvarchar](15) NOT NULL,
	[AGE] [nvarchar](10) NOT NULL,
	[INFO] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_MEMBER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


 -->