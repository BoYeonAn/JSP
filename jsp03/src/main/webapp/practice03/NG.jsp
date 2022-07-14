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
	<p>그것은 홍길동입니다. 정답입니당</p>
	<a href="FormEx.html">처음으로 이동</a>
</body>
</html>