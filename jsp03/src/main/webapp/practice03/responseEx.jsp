<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%--FORM에서 넘어온 데이터를 받고 sendRedirect를 사용해서 이름이 
	홍길동과 같다면 ok.jsp로 다르다면 ng.jsp로 보내기 --%>
<%!
	String name;

%>
<%
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	
	if(name.equals("홍길동")){
		response.sendRedirect("NG.jsp");
	}else{
		response.sendRedirect("OK.jsp");
		
	}
%>
</body>
</html>