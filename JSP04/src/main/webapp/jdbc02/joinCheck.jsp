<%@page import="com.jsp.circle.CircleMemberDAO"%>
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
	1.넘어온 데이터 받기
	2.입력받은 데이터를 DTO객체에 넣기
	3.DAO객체 생성후 메소드(insertCircle) 호출하여 데이터베이스에 데이터넣기
	4.회원가입(데이터가 정상적으로 잘 들어갔다면)이 이루어졌다면
		회원가입 축하한다고 웹브라우저에 출력하기
	5. a태그 사용해서 회원목록보기 추가(circleMemberList.jsp)로 이동시키기
		
	 --%>
	<% 
	request.setCharacterEncoding("UTF-8");
	
	String name=request.getParameter("name");
	String strAge=request.getParameter("age");
	int age=Integer.parseInt(strAge);
	String phone=request.getParameter("phone");
	String email=request.getParameter("email");
	
	
	
	%>
	 <jsp:useBean id="dto"class="com.jsp.circle.CircleMemberDTO"/>
	 <jsp:setProperty property="name" name="dto"value="<%=name %>"/>
	 <jsp:setProperty property="age" name="dto"value="<%=age %>"/>
	 <jsp:setProperty property="phone" name="dto"value="<%=phone %>"/>
	 <jsp:setProperty property="email" name="dto"value="<%=email %>"/>
	 <%
	 CircleMemberDAO dao= CircleMemberDAO.getInstance();
	 int result= dao.insertCricle(dto);
	 if(result==1){
		 out.print("<p>회원가입을 축하합니다</p>");
		 out.print("<a href=\"circleMemberList.jsp\">회원목록보기</a>");
	 }else{
		 out.print("<p>회원가입이 정상적으로 이루어지지 않았습니다.</p>");
		 out.print("<a href=\"circleJoinForm.jsp\">회원목록보기</a>");
	 }
	 
	 
	 %>
</body>
</html>