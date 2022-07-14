<%@page import="java.util.Enumeration"%>
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
		세션에 있는 값들을 모두 꺼내서 value가 aaa라면 
		removeAttribute()사용해서 세션 삭제하기
		a태그로 sessionTest.jsp 이동하는 태그넣기
	
	 --%>
	 <%
		Enumeration<String>e=session.getAttributeNames();
	 	while(e.hasMoreElements()){
	 		String sName=e.nextElement();
	 		String sValue=session.getAttribute(sName).toString();
	 		if(sValue.equals("aaa")){
	 			session.removeAttribute(sName);
	 		}
	 	}
	 		
	 
	 %>
	<p>로그아웃되었습니다</p>
	<a href="sessionTest.jsp">세션 확인</a>
	 
</body>
</html>