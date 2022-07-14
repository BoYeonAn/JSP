<%@page import="java.util.Arrays"%>
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
		String name, studentID, number, major, area;
		String[] circles;
	%>
<%
	request.setCharacterEncoding("UTF-8");
	name=request.getParameter("name");
	studentID=request.getParameter("studentID");
	major=request.getParameter("major");
	number=request.getParameter("number");
	area=request.getParameter("area");
	
	circles=request.getParameterValues("circle");
	
	
	
%>
<h2>학생정보</h2>
이름:<%=name %><br>
학번:<%=studentID %><br>
전화번호:<%=number %><br>
전공:<%=major %><br>
사는지역:<%=area %><br>
동아리:<%=Arrays.toString(circles) %>


</body>
</html>