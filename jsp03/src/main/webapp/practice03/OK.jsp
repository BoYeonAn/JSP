<%@page import="java.util.jar.Attributes.Name"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id=request.getParameter("name");
	%>
	
	<p>정답이 아니요</p>
	<a href="FormEx.html">처음으로 이동</a>
	<script>alert('아쉽네요')</script>
</body>
</html>