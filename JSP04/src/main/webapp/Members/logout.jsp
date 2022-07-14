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
	세션에 있는 데잍 모두 삭제
 --%>
	<%
		session.invalidate();
		response.sendRedirect("login.jsp");
	%>
	
</body>
</html>