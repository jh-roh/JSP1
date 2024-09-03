package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//MSSQL �����ͺ��̽��� �����ϰ� select, insert, update, delete �۾��� �������ִ� Ŭ����
public class MemberDao {

	String id = "sa";
	String pass = "JVM";
	
	//���� url
	String connectionUrl = "jdbc:sqlserver://localhost\\sqlexpress:50678;databaseName=JSPTest;user=sa;password=JVM;trustServerCertificate=true;";

	
	Connection con; //�����ͺ��̽��� ������ �� �ֵ��� ����
	PreparedStatement pstmt; //�����ͺ��̽����� ������ ��������ִ� ��ü
	ResultSet rs; //�����ͺ��̽��� ���̺��� ����� ���Ϲ޾� �ڹٿ� �������ִ� ��ü
	
	
	//�����ͺ��̽� ������ �� �ֶǷ� �����ִ� �޼ҵ�
	public void getCon() {
		
		try{
			con = DriverManager.getConnection(connectionUrl);
			
		} catch(Exception e) {
			// TODO : handle exception
		}
		
		
	}
	
	public void insertMethod(MemberBean mbean) {
		
		getCon();
		//���� �� ���� �غ��Ͽ� ������ ����Ϸ� ����
		String sql = "insert into member values(?,?,?,?,?,?,?,?)";
		
		try {
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
	           
		}catch(Exception e) {
			// TODO : handle exception
		}
		
	}
	
	
	
	
	
}
