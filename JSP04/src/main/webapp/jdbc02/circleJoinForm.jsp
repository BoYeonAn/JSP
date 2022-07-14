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
	form 태그로 동아리 회원가입 양식 만들기
	이름 나이 핸드폰번호 이메일을 받은후 joinCheck.jsp로 전송하기 
	--%>
	<form action="joinCheck.jsp" method="post"><br>
 	이름:<input type="text" name="name"><br>
 	나이: <input type="number" name="age"><br>
 	휴대폰번호:<input type="text" name="phone"><br>
 	이메일:<input type="text" name="email"><br>
 	
 	<input type="submit" value="전송하기">
 
 	
 	
 	</form>

</body>
</html>