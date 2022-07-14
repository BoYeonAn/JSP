package com.jsp.members;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MembersDAO {
		
		private static MembersDAO instance = new MembersDAO();
		
		private MembersDAO() {}
		
		public static MembersDAO getInstance(){
			return instance;
		}
		
		
		private Connection getConnection() { // Connection 객체얻기
			
			Context context = null;
			DataSource dataSource = null;
			Connection connection = null;
			try {
				context = new InitialContext();
				dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
				connection = dataSource.getConnection();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return connection;
		}
		
		// MembersDTO 객체이용해서 DB에 데이터 넣기
		public int insertMember(MembersDTO dto) {
			int result = 0;
			
			Connection connection = null;
			PreparedStatement pstmt = null;
			String query = "insert into members values (?,?,?,?,?,?)";
			
			try {
				connection = getConnection();
				pstmt = connection.prepareStatement(query);
				pstmt.setString(1, dto.getId());
				pstmt.setString(2, dto.getPw());
				pstmt.setString(3, dto.getName());
				pstmt.setString(4, dto.getEmail());
				pstmt.setTimestamp(5, dto.getRegDate());
				pstmt.setString(6, dto.getAddress());
				result = pstmt.executeUpdate();
				//결과가 잘 들어갔으면 1리턴
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(pstmt != null) pstmt.close();
					if(connection != null) connection.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			
			return result;
		}
		
		// members 테이블에 같은 아이디가 있는지 확인하기
		public int confirmId(String id) { // confirm > 확인하다
			int result = 0;
			
			Connection connection = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String query = "select id from members where id = ?";
			
			try {
				connection = getConnection();
				pstmt = connection.prepareStatement(query);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				// executeQuery : 반환값이 resultSet 이다.
				if(rs.next()){
					result = 1;
					// 멤버가 존재할때 
				} else {
					result = 0;
					// 멤버가 존재하지 않을때
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					rs.close();
					pstmt.close();
					connection.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			
			return result;
		}
		
		
		// id와 pw의 매개값을 받아서 DB 연결후 id로 pw 데이터 얻어오기
		// 아이디가 존재하지 않는다면 -1, 존재한다면 1, 비밀번호가 틀리다면 0  
		public int userCheck(String id, String pw) {
			int result = 0;
			String dbPw;
			
			Connection connection = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String query = "select pw from members where id = ?";
			
			try {
				connection = getConnection();
				pstmt = connection.prepareStatement(query);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					
					dbPw = rs.getString("pw");
					if(dbPw.equals(pw)) {
						result = 1; // 로그인 Ok >> 1
					} else {
						result = 0;	// 비번 X >> 0
					}
				} else {
					result = -1;	// 회원 X >> -1
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					rs.close();
					pstmt.close();
					connection.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			return result;
		}
		
		// DB에서 id로 모든 컬럼 얻은 후 DTO 객체에 넣고 DTO 객체 리턴하기 
		public MembersDTO getMember(String id) {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String query = "select * from members where id = ?";
			MembersDTO dto = null;
			
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					dto = new MembersDTO();
					dto.setId(rs.getString("id"));
					dto.setPw(rs.getString("pw"));
					dto.setName(rs.getString("name"));
					dto.setEmail(rs.getString("email"));
					dto.setRegDate(rs.getTimestamp("regDate"));
					dto.setAddress(rs.getString("address"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(rs != null)rs.close();
					if(pstmt != null)pstmt.close();
					if(conn != null)conn.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			
			return dto;
			
		}
		// DB의 update로 비밀번호 이메일 주소 수정하기 
		public int updateMember(MembersDTO dto) {
			int result = 0;
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			String query = "update members set pw=?, email=?, address=? where id=?";
			
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, dto.getPw());
				pstmt.setString(2, dto.getEmail());
				pstmt.setString(3, dto.getAddress());
				pstmt.setString(4, dto.getId());
				result = pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(pstmt != null)pstmt.close();
					if(conn != null)conn.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			
			return result;
		}
		
		
	}


