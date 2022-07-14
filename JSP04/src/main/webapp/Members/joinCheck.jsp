<%@page import="java.sql.Timestamp"%>
<%@page import="com.jsp.members.MembersDTO"%>
<%@page import="java.util.ArrayList"%>
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
	현재시간으로 Timestamp객체 생성후
	DTO객체 생성후 데이터 셋팅하기
	DAO객체 생성후 아이디 체크하기
	같은 아이디 없다면 회원가입시켜주기
	
 --%>
	<% 
	request.setCharacterEncoding("UTF-8");
	
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	
	%>
	 <jsp:useBean id="dto"class="com.jsp.members.MembersDTO"/>
	 <jsp:setProperty property="id" name="dto"value="<%=id %>"/>
	 <jsp:setProperty property="pw" name="dto"value="<%=pw %>"/>
	 <jsp:setProperty property="name" name="dto"value="<%=name %>"/>
	 <jsp:setProperty property="email" name="dto"value="<%=email %>"/>
	 <%--
	 	프로퍼티가 많을 경우에는 프로퍼티 속성값을 *로주면 폼으로부터 넘어온 값이 셋팅된다.
	 	주의할 점은 폼으로부터 넘어오는 파라미터의 이름이 프로퍼티의 이름과 일치해야한다.
	  --%>
	<%
		dto.setRegDate(new Timestamp(System.currentTimeMillis()));
		//regDate까지 DTO에 셋팅해주기
		MembersDAO dao=MembersDAO.getInstance();
		if(dao.confirmId(dto.getId())==1){
			out.print("<script>alert('아이디가 이미 존재합니다');history.back();</script>");
			
		}else{
			int result=dao.insertMember(dto);
			if(result==1){
				out.print("<script>alert('회원가입에 축하!');window.location='login.jsp';</script>");
			}else{
				out.print("<script>alert('회원가입에 실패!');history.back();</script>");
			}
		}
	//
	%>
	
 
</body>
</html>