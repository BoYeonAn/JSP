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
	선언문으로 이름 나이 전화번호의 변수를 선언하기
	스크립트릿으로 변수초기화하기
	표현식으로 웹브라우저에 출력하기
 --%>
	<%!
		String name;
		int age;
		String number;
	
	%>
	
	<%
 	String name="안보연";
 	int age=23;
 	String number="010-1234-5678";
 	
	%>
	
	
		보연 프로필 <br>
		이름: <%=name%>
		나이:<%=age %>
		전화번호:<%=number %>
	

 	<%
 	out.print("이름:"+name+"<br>");
	out.print("나이:"+age+"<br>");
	out.print("전화번호:"+number+"<br>");
	
 
 	%>
</body>
</html>