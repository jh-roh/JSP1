package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//MSSQL 데이터베이스에 연결하고 select, insert, update, delete 작업을 실행해주는 클래스
public class MemberDao {

	String id = "sa";
	String pass = "JVM";
	
	//접속 url
	String connectionUrl = "jdbc:sqlserver://localhost\\sqlexpress:50678;databaseName=JSPTest;user=sa;password=JVM;trustServerCertificate=true;";

	
	Connection con; //데이터베이스에 접근할 수 있도록 설정
	PreparedStatement pstmt; //데이터베이스에서 쿼리를 실행시켜주는 객체
	ResultSet rs; //데이터베이스의 테이블의 결과를 리턴받아 자바에 저장해주는 객체
	
	
	//데이터베이스 접근할 수 있또록 도와주는 메소드
	public void getCon() {
		
		try{
			con = DriverManager.getConnection(connectionUrl);
			
		} catch(Exception e) {
			// TODO : handle exception
		}
		
		
	}
	
	public void insertMethod(MemberBean mbean) {
		
		getCon();
		//접속 후 쿼리 준비하여 쿼리를 사용하록 설정
		String sql = "insert into member values(?,?,?,?,?,?,?,?)";
		
		try {
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
	           
		}catch(Exception e) {
			// TODO : handle exception
		}
		
	}
	
	
	
	
	
}
