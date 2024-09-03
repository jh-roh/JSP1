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

	//��� �κ��� ������ �о��� �ٽ� ��Ŭ������ ����
	String[] hobby = request.getParameterValues("hobby");
	
	//�迭�� �ִ� ������ �ϳ��� ��Ʈ������ ����
	String texthobby = "";
	
	for(int i = 0; i < hobby.length; i++) {
		texthobby += hobby[i] + " ";
	}
		
	
%>
	<!-- useBean�� �̿��Ͽ� �Ѳ����� �����͸� �޾ƿ� -->

	<jsp:useBean id="mbean" class="model.MemberBean">
		<!-- ���� -->
		<jsp:setProperty name="mbean" property="*" />
	</jsp:useBean>


<%
	//���� ��̴� �ּҹ����� ����Ǳ⿡ ���� �迭�� ������ �ϳ��� ��Ʈ������ ������ ������ �ٽ� �Է�
	mbean.setHobby(texthobby);  


	MemberDao mdao = new MemberDao();
	mdao.insertMethod(mbean);
	
	
/*
	String id = "sa";
	String pass = "JVM";
	
	//���� url
	String connectionUrl = "jdbc:sqlserver://localhost\\sqlexpress:50678;databaseName=JSPTest;user=sa;password=JVM;trustServerCertificate=true;";

	
	try (Connection con = DriverManager.getConnection(connectionUrl)) {
		
		//�ش� ������ ���̽� ����
		System.out.println("Connected to SQL Server successfully.");
           
		
		//���� �� ���� �غ��Ͽ� ������ ����Ϸ� ����
		String sql = "insert into member values(?,?,?,?,?,?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		//?�� �°� �����͸� ����
				
		pstmt.setString(1, mbean.getId());
		pstmt.setString(2, mbean.getPass1());
		pstmt.setString(3, mbean.getEmail());
		pstmt.setString(4, mbean.getTel());
		pstmt.setString(5, mbean.getHobby());
		pstmt.setString(6, mbean.getJob());
		pstmt.setString(7, mbean.getAge());
		pstmt.setString(8, mbean.getInfo());
		
		//MSSQL ������ �����Ͻÿ�.
		pstmt.executeUpdate(); //insert, update,delete �� ����ϴ� �޼ҵ�
		
		//�ڿ� �ݳ�
		
        con.close();
           
           
       } catch (SQLException e) {
           e.printStackTrace();
       }
		
*/

%>

	<h2>����� ���̵� = <%=mbean.getId() %></h2>
	
	<h2>����� ���̵� = <%=mbean.getHobby() %></h2>

</body>
</html>

<!-- 
USE [JSPTest]
GO

/****** Object:  Table [dbo].[MEMBER]    Script Date: 2024-09-03 ���� 9:40:00 ******/
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