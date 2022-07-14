<%@page import="java.util.ArrayList"%>
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
		서블릿 보관소에 저장된 데이터를 사용할 수 있다.
		
	 --%>
	 <%
	 	request.setAttribute("id", "hong");
	 	session.setAttribute("pw", "1234");
	 	
	 %>
	 request의 아이디:${requestScope.id }<br>
	 session의 비밀번호:${sessionScope.pw }<br>
	 
	 <%
	 	ArrayList<String> list= new ArrayList<>();
	 	list.add("홍길동");
	 	list.add("성춘향");
	 	list.add("이몽룡");
	 	
	 	request.setAttribute("list", list);
	 	//request 영역에 올린다.(바인딩한다.)
	 	
	 %>
	 list의 인뎃스 첫번째 데이터:${list[1]}
	 
</body>
</html>