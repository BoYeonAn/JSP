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
	세션의 모든 이름을 Enumeration 타입으로 받은후
	세션이름과 세션값들을 꺼내고 세션값이 aaa라면 웹브라우저에 
	aaa님 안녕하세요 출력하기
	
	a태그 사용해서 sessionTest.jsp 와 로그아웃 sessionLogout.jsp 이동하는 태그넣기
	--%>
	<%
	Enumeration<String> enumeration=session.getAttributeNames();
	while(enumeration.hasMoreElements()){
		String sName=enumeration.nextElement();
		String sValue=session.getAttribute(sName).toString();
		if(sValue.equals("aaa")){
			out.print(sValue+"님안녕하세요");
			
		}
	}

	
	
	%>
		<a href="sessionLogout.jsp">로그아웃</a>
		<a href="sessionTest.jsp">세션 확인</a>
</body>
</html>