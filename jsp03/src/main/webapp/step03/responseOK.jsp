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
		String id=request.getParameter("id");
	%>
	<p><%=id %>님 안녕하세요</p>
	<p>성인입니다. 주류구매가 가능합니다</p>
	<a href="responseForm.html">처음으로 이동</a>
	


</body>
</html>