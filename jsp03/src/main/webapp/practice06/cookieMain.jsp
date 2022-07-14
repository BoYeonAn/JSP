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
	쿠키를 꺼낸다(배열로 받기)
	반복문을 통해 쿠키값을 얻기.
	쿠키값이 hong과 일치한다면 웹브라우저에 홍길동님 안녕하세요 출력하기
	a태그 사용해서 cookieLogout.jsp로 이동하기
	
 --%>
 	<%
 		Cookie[] cookies=request.getCookies();
 		for(int i=0;i<cookies.length; i++){
 			String id=cookies[i].getValue();
 			if(id.equals("hong")){
 				out.print("홍길동님 안녕하세요");
 				
 			}
 		}
 	
 	
 	%>
 	<a href="cookieLogout.jsp">로그아웃</a>
 	
 
</body>
</html>