<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--쿠키삭제하기
		삭제후 리다이렉트로 cookieTest.jsp로 보내기
	 --%>
	 
	 <%
	 	Cookie[] cookies=request.getCookies();
	 for(int i=0; i<cookies.length; i++){
		 String str=cookies[i].getValue();
		 if(str.equals("hong")){
			 cookies[i].setMaxAge(0);
			 response.addCookie(cookies[i]);
		 }
	 }
	 response.sendRedirect("cookieTest.jsp");
	 
	 
	 %>
</body>
</html>