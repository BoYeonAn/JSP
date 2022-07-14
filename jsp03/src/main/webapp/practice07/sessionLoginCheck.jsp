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
		아이디 비밀번호 데이터받기
		아이디 aaa이고 비밀번호가 111이라면 session객체에
		세션값으로 아이디를 저장하고 리다이렉트사용해서 sessionMain.jsp로 보내기
		
		아이디 비밀번호가 틀리다면 리다이렉트로 sessionLogin.html로 보내기
	 --%>
	<% 
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	
	if(id.equals("aaa")&& pw.equals("111")){
			session.setAttribute("id", id);
			response.sendRedirect("sessionMain.jsp");
	}else{
		response.sendRedirect("sessionLogin.html");
	}
	%>
</body>
</html>