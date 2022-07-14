<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>중국음식 중 좋아하는 음식은?</p>
	<form action="forward.jsp" method="post">
	이름: <input type="text" name="name">
	<select name="food">
	<option value="jajang">짜장면</option>
	<option value="jamppog">짬뽕</option>
	
	<input type="submit" value="클릭">
	
	</select>
	
	</form>
</body>
</html>