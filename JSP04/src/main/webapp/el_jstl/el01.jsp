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
	EL은 정수, 실수, 논리 문자열, null을 표현할 수 있다.
	EL에서(산술연산자,논리,조건연산자)가 있다.
	 --%>
	 정수:${100 }<br>
	 실수:${3.14}<br> 
	 논리:${true }<br>
	 문자열:${"ABC"}<br>
	 널:${null}<br>
	 
	 <p>--------------------</p>
	 <form action="el01.jsp" method="post">
	 	아이디:<input type="text" name="id"><br>
	 	<input type="submit" value="아이디">
	 </form>
	 <%--
	  EL내장객체의 param객체로 넘어온 파라미터 값을 사용할 수있다.
	  --%>
	  
	  아이디:${param.id }<br>
	  <p>-------------------------</p>
</body>
</html>