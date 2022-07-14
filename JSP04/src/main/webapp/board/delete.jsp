<%@page import="com.jsp.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String bId = request.getParameter("bId");
	BoardDAO dao = BoardDAO.getInstance();
	dao.delete(bId);
	response.sendRedirect("boardList.jsp");
%>
</body>
</html>