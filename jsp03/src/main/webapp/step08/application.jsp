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
	application객체는 JSP기본객체로 JSP페이지에서 따로 선언하지 않아도 사용가능하다.
	application 내장객체는 자신이 속한 웹 어플리케이션 범위안의 모든 JSP범위에서 공유된다.
 --%>
 	<%
 		application.setAttribute("name", "홍길동");
 		application.setAttribute("age", 20);
 		
 		String name=(String)application.getAttribute("name");
 		int age=(Integer)application.getAttribute("age");
 		
 		out.print("어플리케이션에 저장된 이름:"+name+"<br>");
 		out.print("어플리케이션에 저장된 나이:"+age+"<br>");
 	%>
</body>
</html>