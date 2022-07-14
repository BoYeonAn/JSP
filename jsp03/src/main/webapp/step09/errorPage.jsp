<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>

<%--
	isErrorPage:속성값이 true이면 현재 jsp페이지가 
	예외처리 페이지라는 것을 명시하며 exception객체를 
	사용할 수 있게 되어 예외에 대한 정보를 얻을수있다.
	--%>
	<%response.setStatus(200); %>
	<%--
	현재 에러페이지가 정상적으로 호출이 되려면 http상태코드가 정상값인 200이 되야 한다.
	에러페이지가 호출되기 위해서는 response 객체 상태값 200을 셋팅해야 한다 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	에러 발생!!<br>
	<%=exception.getMessage() %>
	
</body>
</html>