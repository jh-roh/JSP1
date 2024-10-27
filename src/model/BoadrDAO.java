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

	//데이터 베이스의 커넥셜 풀을 사용하도록 설정하는 메소드
	
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
	
	//하나의 새로운 게시글이 넘어와서 저장되는 메소드
	public void insertBoard(BoardBean bbean) {
		
		try {
			getCon();
			
			//빈 클래스에 넘어온 데이터를 초기화 해주어야 한다.
			int ref = 0; //글 그룹을 의미 = 쿼리를 실행시켜서 가장 큰 ref값을 가져온 후 +1을 더해주면 됨
			int re_step = 1; //새글이기에 = 부모글이기에
			int re_level = 1;
			
			//가장 큰 ref값을 읽어오는 쿼리 준비
			String refsql = "select max(ref) from board";
			//쿼리 실행 준비
			
			pstmt = con.prepareStatement(refsql);
			
			//쿼리 실행 후 결과를 리턴
			rs = pstmt.executeQuery();
			if(rs.next()) { //결과 값이 있다면
				ref = rs.getInt(1) + 1; //최대값에 +1을 더해서 글 그룹을 설정
			}
			//실제로 게시글 전체값을 데이블에 저장
			String sql = "insert into board values(?,?,?,?,getdate(),?,?,?,0,?)";
			
			pstmt = con.prepareStatement(sql);
			
			//?에 값을 맵핑
			pstmt.setString(1,bbean.getWriter());
			pstmt.setString(2, bbean.getEmail());
			pstmt.setString(3, bbean.getSubject());
			pstmt.setString(4, bbean.getPassword());
			pstmt.setInt(5, ref);
			pstmt.setInt(6, re_step);
			pstmt.setInt(7, re_level);
			pstmt.setString(8, bbean.getContent());
			
			//MSSQL 쿼리를 실행하시오.
			pstmt.executeUpdate(); //insert, update,delete 시 사용하는 메소드
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
	        // 자원 반납
	        try {
	            if (rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	}
	
	//모든 게시글을 리턴해주는 메소드 
	public Vector<BoardBean> getAllBoard() {
	
		//리턴할 객체 선언
		Vector<BoardBean> v = new Vector<>();
		
		getCon();
		 
		try {
			//쿼리 준비
			String sql = "select * from board order by ref desc, re_step asc, re_level asc";
			
			//쿼리를 실행할 객체 선언
			pstmt = con.prepareStatement(sql);
			
			//쿼리 실행 후 결과 저장
			rs = pstmt.executeQuery();
			
			//데이터 개수가 몇개인지 모르기에 반복문을 이용하여 데이터를 추출
			while(rs.next()) {
				//데이터를 패키징
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
	        // 자원 반납
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
	
	//하나의 게시글을 리턴하는 메소드
	public BoardBean getOneBoard(int num) {
		
		//한 사람데 대한 정보만 리턴하기에 빈클래스 객체 생성
		BoardBean bean = new BoardBean();
		
		try {
			//커넥션 연결
			getCon();
			
			//조회수 증가 쿼리
			String readsql = "update board set readcount = readcount + 1 where num=?";
			pstmt = con.prepareStatement(readsql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
			String sql = "select * from board where num = ?";
			
			//쿼리 실행 객체
			pstmt = con.prepareStatement(sql);
			
			//?에 값을 맵핑
			pstmt.setInt(1, num);
			
			
			//쿼리 실행 후 결과를 리턴
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //레코드가 있다면
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
	        // 자원 반납
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
