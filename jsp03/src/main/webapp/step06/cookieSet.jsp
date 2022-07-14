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
	Cookie cookie=new Cookie("cookieName", "cookieValue");
	//쿠키 생성>>new Cookie("쿠키이름","쿠키값");
	cookie.setMaxAge(60*60);
	//한시간동안 쿠키유지
	//쿠키는 보통 유효시간을 정해주지 않으면 웹브라우저를 닫음과 동시에 쿠키가 삭제된다.
	//그러나 유효시간을 정해놓으면 설정해놓은 유효시간동안 쿠키가 존재하게 되고 웹브라우저를 닫아도 유효시간이 남아있으면 쿠키는 삭제되지않고 남아있게 된다.
	response.addCookie(cookie);
	//respense객체에 addCookie메소드로 쿠키객체를 웹브라우저에 심는다.
	

%>
<p>쿠키가 탑재되었습니다</p>
<a href="cookieGet.jsp">쿠키얻기</a>

</body>
</html>