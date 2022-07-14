<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--JSP페이지의 전체적인 속성을 지정할때 사용한다.
    	page, include, taglib가 있다.
    	page는 현재 페이지의 전체적인 속성지정
    	include: 별도의 페이지를 현재 페이지에 삽입 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	int[]array = {1,2,3,4,5};

	out.println(Arrays.toString(array));


	%>
	<h3>JSPTAG04.jsp페이지입니다.</h3>
	<%@include file ="include.jsp"%>
	<%--현재의 문서에 다른문서, 즉 다른 파일의 내용을 포함시켜출력하는것을 말합니다. --%>
	<h1>다시 JSPTAG04.jsp페이지입니다.</h1>
</body>
</html>