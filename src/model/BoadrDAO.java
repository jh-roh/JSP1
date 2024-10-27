package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoadrDAO {
	
	
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	//������ ���̽��� Ŀ�ؼ� Ǯ�� ����ϵ��� �����ϴ� �޼ҵ�
	
	public void getCon() {
		try {
			Context initctx = new InitialContext();
			Context envctx = (Context)initctx.lookup("java:comp/env");
			
			DataSource ds = (DataSource)envctx.lookup("jdbc/pool");
			con = ds.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//�ϳ��� ���ο� �Խñ��� �Ѿ�ͼ� ����Ǵ� �޼ҵ�
	public void insertBoard(BoardBean bbean) {
		
		try {
			getCon();
			
			//�� Ŭ������ �Ѿ�� �����͸� �ʱ�ȭ ���־�� �Ѵ�.
			int ref = 0; //�� �׷��� �ǹ� = ������ ������Ѽ� ���� ū ref���� ������ �� +1�� �����ָ� ��
			int re_step = 1; //�����̱⿡ = �θ���̱⿡
			int re_level = 1;
			
			//���� ū ref���� �о���� ���� �غ�
			String refsql = "select max(ref) from board";
			//���� ���� �غ�
			
			pstmt = con.prepareStatement(refsql);
			
			//���� ���� �� ����� ����
			rs = pstmt.executeQuery();
			if(rs.next()) { //��� ���� �ִٸ�
				ref = rs.getInt(1) + 1; //�ִ밪�� +1�� ���ؼ� �� �׷��� ����
			}
			//������ �Խñ� ��ü���� ���̺� ����
			String sql = "insert into board values(?,?,?,?,getdate(),?,?,?,0,?)";
			
			pstmt = con.prepareStatement(sql);
			
			//?�� ���� ����
			pstmt.setString(1,bbean.getWriter());
			pstmt.setString(2, bbean.getEmail());
			pstmt.setString(3, bbean.getSubject());
			pstmt.setString(4, bbean.getPassword());
			pstmt.setInt(5, ref);
			pstmt.setInt(6, re_step);
			pstmt.setInt(7, re_level);
			pstmt.setString(8, bbean.getContent());
			
			//MSSQL ������ �����Ͻÿ�.
			pstmt.executeUpdate(); //insert, update,delete �� ����ϴ� �޼ҵ�
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
	        // �ڿ� �ݳ�
	        try {
	            if (rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	}
	
	//��� �Խñ��� �������ִ� �޼ҵ� 
	public Vector<BoardBean> getAllBoard() {
	
		//������ ��ü ����
		Vector<BoardBean> v = new Vector<>();
		
		getCon();
		 
		try {
			//���� �غ�
			String sql = "select * from board order by ref desc, re_step asc, re_level asc";
			
			//������ ������ ��ü ����
			pstmt = con.prepareStatement(sql);
			
			//���� ���� �� ��� ����
			rs = pstmt.executeQuery();
			
			//������ ������ ����� �𸣱⿡ �ݺ����� �̿��Ͽ� �����͸� ����
			while(rs.next()) {
				//�����͸� ��Ű¡
				BoardBean bean = new BoardBean();
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setReg_date(rs.getString(6));
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadcount(rs.getInt(10));
				bean.setContent(rs.getString(11));
				
				v.add(bean);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
	        // �ڿ� �ݳ�
	        try {
	            if (rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
		return v;
		
	}
	
	//�ϳ��� �Խñ��� �����ϴ� �޼ҵ�
	public BoardBean getOneBoard(int num) {
		
		//�� ����� ���� ������ �����ϱ⿡ ��Ŭ���� ��ü ����
		BoardBean bean = new BoardBean();
		
		try {
			//Ŀ�ؼ� ����
			getCon();
			
			//��ȸ�� ���� ����
			String readsql = "update board set readcount = readcount + 1 where num=?";
			pstmt = con.prepareStatement(readsql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
			String sql = "select * from board where num = ?";
			
			//���� ���� ��ü
			pstmt = con.prepareStatement(sql);
			
			//?�� ���� ����
			pstmt.setInt(1, num);
			
			
			//���� ���� �� ����� ����
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //���ڵ尡 �ִٸ�
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setReg_date(rs.getString(6));
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadcount(rs.getInt(10));
				bean.setContent(rs.getString(11));
			}
			
		}catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        // �ڿ� �ݳ�
	        try {
	            if (rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
		
		return bean;
	}
}
