<%@page import="java.util.ArrayList"%>
<%@page import="com.jsp.circle.CircleMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	1.DAO객체를 얻고 circleList 메소드 호출하여
	ArrayList 객체 얻기
	2.list안에 있는 circelMemberDTO 객체에 데이터를 하나씩
	얻고 웹브라우저에 이름 나이 전화번호 이메일 출력하기
	
 --%>
 	
 	<%
 	CricleMemberDAO dao= CircleMemberDAO.getInstance();
 	
 	ArrayList<CircleMemberDTO> list=dao.circleList();
 	out.print("<h>동아리 회원목록</h2>");
 	for(int i=0; i<list.size(); i++){
 		CircleMemberDTO dto=list.get(i);
 		
 		out.print("이름:"+dto.getName()+"나이:"+dto.getAge()+"전화번호:"+dto.getPhone()+"이메일은:"+dto.getEmail()+"<br>");
 		
 	}
 	
 	%>
 	
</body>
</html>