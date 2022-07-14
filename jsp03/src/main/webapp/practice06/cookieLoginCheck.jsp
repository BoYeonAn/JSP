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
		1.form태그에서 넘어온 데이터받기
		2.아이디:hong 비밀번호:1234와 일치한다면 받은 아이디를 쿠키값으로 설정하고(쿠키를 생성)웹브라우저에 탑재한다.
		sendRedirect로 cookieMain.jsp로 보내기
		(일치하지않는다면)sendRedirect로  cookieLogin.html로 보내기
		
	 --%>
	
	<%
	
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	
	if(id.equals("hong")&& pw.equals("1234")){
			Cookie cookie=new Cookie("id",id);
			cookie.setMaxAge(60*60);
			response.addCookie(cookie);
			response.sendRedirect("cookieMain.jsp");
	}else{
		response.sendRedirect("cookieLogin.html");
	}
	%>
	
</body>
</html>