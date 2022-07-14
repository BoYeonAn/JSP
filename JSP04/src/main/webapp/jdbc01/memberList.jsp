<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
		Connection conn;
	//connection:db와 연결성을 갖는 인터페이스
	Statement stmt;
	//statement:SQL문을 실행하는 인터페이스
	ResultSet rs;
	//조회결과 데이터를 갖는 인터페이스
	
	String driver="oracle.jdbc.OracleDrvier";
	//oracleDriver:Oracle JDBC드라이버 클래스이다.
	String url="jdbc:oracle:thin:@localhost12:xe";
	String uid="C##JSPUSER";
	String upw="jsp123";
	String query="select*from KGMember";
	
	%>
	<%
		try{
			Class.forName(driver);
			conn=DriverManager.getConnection(url,uid,upw);
			stmt=conn.createStatement();
			
			rs=stmt.executeQuery(query);
			while(rs.next()){
				//다음레코드가 있는지 판단하여 없으면 false리턴
				//있으면 true 반환한 다음에 커서를 다음 레코드로 이동시킨다.
				String id=rs.getString("id");
				String pw=rs.getString("pw");
				String name=rs.getString("name");
				int age=rs.getInt("age");
				String phone=rs.getString("phone");
				
				out.print("아이디:"+id+",비밀번호:"+pw+",이름"+name+",나이"+age+",전화번호"+phone+"<br>");
			
			}
			
		}catch(Exception e){
			e.printStackTrace();
			
		}finally{
			try{
			if(rs !=null)rs.close();
			if(stmt !=null)stmt.close();
			if(conn!=null)conn.close();
			}catch(Exception e2){}
		}
		
	%>
	
</body>
</html>