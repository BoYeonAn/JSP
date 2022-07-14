package com.jsp.board;

import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;



public class BoardDAO {
	
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	
	private BoardDAO() {
		
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	// 게시판 목록
	public ArrayList<BoardDTO> boardList() {
		
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();

		String query = "select * from board order by bId DESC";
		// order by bId DESC >> id 를 내림차순으로 정렬
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int bId = rs.getInt("bId");
				String bName = rs.getString("bName");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				Timestamp bDate = rs.getTimestamp("bDate");
				int bHit = rs.getInt("bHit");
				
				BoardDTO dto = new BoardDTO(bId, bName, bTitle, bContent, bDate, bHit);
				list.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}
	
	// 글작성하기 (이름 제목 내용을 매개값으로 받는다.) 
	public int write(String bName, String bTitle, String bContent) {
		
		int result = 0;
		
		try {
			conn = ds.getConnection();
			String query = "insert into board (bId, bName, bTitle, bContent, bHit) values (board_seq.nextval, ?, ?, ?, 0)";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bName);
			pstmt.setString(2, bTitle);
			pstmt.setString(3, bContent);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return result;
		
	}
	
	
	
	// 리스트에 게시판 제목 클릭시 내용보기 
	public BoardDTO contentView(String strID) {
		
		upHit(strID);
		
		BoardDTO dto = null;
		
		String query = "select * from board where bId = ?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(strID));
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int bId = rs.getInt("bId");
				String bName = rs.getString("bName");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				Timestamp bDate = rs.getTimestamp("bDate");
				int bHit = rs.getInt("bHit");
				
				dto = new BoardDTO(bId, bName, bTitle, bContent, bDate, bHit);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return dto;
	}
	
	
	
	
	// 조회수 증가 (글번호를 매개값으로 받는다)
	private void upHit(String bId) {
		
		
		try {
			
			conn = ds.getConnection();
			String query = "update board set bHit = bHit + 1 where bId = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bId);
			
			pstmt.executeUpdate();
					
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	// 글 수정 (번호, 이름, 제목, 내용을 매개값으로 받는다)
	public int modify(String bId, String bName, String bTitle, String bContent) {
		
		int result = 0;
		
		try {
			conn = ds.getConnection();
			
			String query = "update board set bName = ?, bTitle = ?, bContent = ? where bId = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bName);
			pstmt.setString(2, bTitle);
			pstmt.setString(3, bContent);
			pstmt.setInt(4, Integer.parseInt(bId));
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return result;
		
	}
	
	// 글 삭제 (글번호를 매개값으로 받는다)
	public void delete(String bId) {
		try {
			
			conn = ds.getConnection();
			String query = "delete from board where bId = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(bId));
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	
	

}

