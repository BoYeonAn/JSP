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
	String name=(String)application.getAttribute("name");
	int age=(Integer)application.getAttribute("age");
	
	out.print("어플리케이션에 저장된 이름:"+name+"<br>");
	out.print("어플리케이션에 저장된 나이:"+age+"<br>");


%>
</body>
</html>

