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
	<%--선언문으로 form태그에서 넘어온 데이터를 받을 변수선언
		스크립트릿으로 넘어온 데이터받기
		표현식으로 웹브라우저에 출력하기
	 --%>
	 
	 <%!
	 String name, age,tel,number,area;
	 String[]hobby;
	 
	 %>
	 <%
	 request.setCharacterEncoding("UTF-8");
	 name=request.getParameter("name");
	 age=request.getParameter("age");
	 tel=request.getParameter("tel");
	 number=request.getParameter("number");
	 area=request.getParameter("area");
	 hobby=request.getParameterValues("hobby");
	 
	 %>
	 
	 이름:<%=name %><br>
	 나이:<%=age %><br>
	 전화번호:<%=tel %><br>
	 주민번호:<%=number %><br>
	 사는지역:<%=area %><br>
	 취미:<%=Arrays.toString(hobby) %>
</body>
</html>