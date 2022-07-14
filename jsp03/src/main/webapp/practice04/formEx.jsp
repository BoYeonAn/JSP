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
	form 태그로 이름 여행할나라 코로나 예방접종 유무확인(radio)
	을 한 다음 forwardEx.jsp로 전송하기
	 --%>

	<h2>여행사: 고객정보입력</h2>
	
	<form action="forwardEx.jsp" method="post">
	이름: <input type="text" name="name">
	여행할나라:<input type="text" name="nation">
	코로나 예방접종 유무확인<br>
	1차 <input type="radio" name="coronaCheck" value="corona1"><br>
	2차 <input type="radio" name="coronaCheck" value="corona2"><br>
	3차 <input type="radio" name="coronaCheck" value="corona3"><br>
	
	<input type="submit" value="클릭!!">
	

	
	</form>
</body>
</html>