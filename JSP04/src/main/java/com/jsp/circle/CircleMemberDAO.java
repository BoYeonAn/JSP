package com.jsp.circle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CircleMemberDAO {
	// 싱글톤:단 하나의 객체만 생성하는것
	//싱글톤을 만들려면 클래스 외부에서  new연산자로 생성자를 호출할 수 없도록 해야한다.
	//외부에서 생성자호출을 막기위해 생성자에 접근제한자는 private으로한다.
	//외부에서 객체를 얻는 방법은 getInstance()메소드를 호출하는 방법이다.
	//getInstance 메소드는 단 하나의 객체만 리턴한다.
	
	//싱글톤을 쓰는 이유
	//고정된 메모리 영역을 얻음ㄴ서 한번의 new 인스턴스를 사용하기 때문에 메모리 낭비를 방지할 수 있다.
	//싱글톤으로 만들어진 클래스의 인스턴스는 전역이기 떄문에 
	//다른 클래스의 인스턴스들이 데이터를 공유하기 쉽다.
	private CircleMemberDAO() {}
		private static CircleMemberDAO instance= new CircleMemberDAO();
		public static CircleMemberDAO getInstance() {
			return instance;
		}
	public int insertCricle(CircleMemberDTO dto) {
		int result=0;
		Connection conn=null;
		PreparedStatement pstmt=null;
		return result;
		//자바에서 데이터베이스로 쿼리문을 전송할때 사용할 수 있는 인터페이스는
		//Statement와 preparedStatement 2가지 있다.
		//preparedStatement는 statement를 상속받은 인터페이스로
		//statement클래스의 기능향상과 코드의 안정성및 가독성이높다.
		String driver="oracle.jdbc.OracleDrvier";
		//oracleDriver:Oracle JDBC드라이버 클래스이다.
		String url="jdbc:oracle:thin:@localhost12:xe";
		String uid="C##JSPUSER";
		String upw="jsp123";
		String query="insert into circleMemer values(?,?,?,?)";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(2, dto.getAge());
			pstmt.setString(1, dto.getName());
			pstmt.setString(3,  dto.getPhone());
			result=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
			if(pstmt !=null)pstmt.close();
			if(conn!=null)conn.close();
			
		}catch(Exception e) {}
	}
	}
	

	public ArrayList<CircleMemberDTO>circleList(){
		ArrayList<CircleMemberDTO>list=new ArrayList<CircleMemberDTO>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String driver="oracle.jdbc.OracleDrvier";
		String url="jdbc:oracle:thin:@localhost12:xe";
		String uid="C##JSPUSER";
		String upw="jsp123";
		String query="select*from KGMember";
		try {
			
		}catch(Exception e) {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,uid,upw);
			pstmt=conn.prepareStatement(query);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				String name=rs.getString("name");
				int age=rs.getInt("age");
				String phone=rs.getString("phone");
				String email=rs.getString("email");
				list.add(new CircleMemberDTO(name,age,phone,email));
				}
				
	
		catch(Exception e){
		    e.printStackTrace();
		}finally {
			try {
			if(rs!=null)rs.close();
			if(pstmt !=null)pstmt.close();
			if(conn!=null)conn.close();
			
		}catch(Exception e){}
			e.printStackTrace();
		}
		return list;
	
	}

