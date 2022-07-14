<%@page import="com.jsp.members.MembersDAO"%>
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
	넘어온 데이터 받기
	DAO객체 생성하기
	체크해주는 메소드 호출하여 아이디 비밀번호맞다면
	아이디로 session값으로 설정하기 
	sendRedirect로 main.jsp로 보내기
	
 --%>
 
 	<%
 		request.setCharacterEncoding("UTF-8");
 	
 		String id=request.getParameter("id");
 		String pw=request.getParameter("pw");
 		
 		MembersDAO dao=MembersDAO.getInstance();
 		int result=dao.userCheck(id,pw);
 		if(result==-1){
 			out.print("<script>alert('아이디가 존재하지않습니다');history.back();</script>");
 		}else if(result==0){
 			out.print("<script>alert('비밀번호가 일치하지 않습니다.');history.back();</script>");
 		}else if(result==1){
 			MembersDTO dto=dao.getMember(id);
 			String name=dto.getName();
 			session.setAttribute("id", id);
 			session.setAttribute("name", name);
 			session.setAttribute("validMem", "yes");
 			response.sendRedirect("main.jsp");
 			
 		}
 	
 	%>
 	
</body>
</html>