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
	선언문으로 1-10까지 중 하나의 숫자를 반환해주는 randomSu()메소드 만들기
	스크립트릿으로 메소드 호출하여 웹브라우저에 출력하기
	
	--%>
	<%!
		public int randomSu(){
			int randomSu;
	
			(int)(Math.random()*10)+1;
			//0.0부터 1.0사이의 double타입의 수 하나를 반환
			//0.0>포함 1.0> 미포함
			return randomSu;
	}
	%>
	<%
		int myNumber=randomSu();
		out.print("<p>오늘의 나의 번호는:" myNumber+"입니다.</p>");
		
	%>


</body>
</html>