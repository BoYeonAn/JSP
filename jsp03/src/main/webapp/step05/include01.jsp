<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>include01페이지입니다.</h1>
<%@ include file="include02.jsp" %>
<%-- 주로 조각난 코드르 삽입하고자 할 때 사용된다
	요청한 소스코드를 텍스트에 포함해서 하나로 인식해서 컴파일한다. --%>
<h3>다시 include01페이지입니다.</h3>

</body>
</html>