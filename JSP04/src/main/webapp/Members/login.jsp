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
	로그인 폼 만들기
	loginCheck.jsp로 전송하기
	
 --%>
 	<form action="loginCheck.jsp" method="post" ><br>
 	이름:<input type="text" name="name"><br>
 	비밀번호: <input type="password" name="pw"><br>
 	
 	
 	<input type="button" value="로그인" >
 	
 	
 	
 	</form>
 
</body>
</html>