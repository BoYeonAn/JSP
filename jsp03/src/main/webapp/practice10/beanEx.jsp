<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
    	useBean 액션태그로 Member객체 생성하기
    
     --%>
     <jsp:useBean id="heim" class="com.java.jsp.Member" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	액션태그로 Member 객체에 데이터 넣고 출력하기
 --%>
 	<jsp:setProperty property="id" name="member"value="heim"/>
 	<jsp:setProperty property="pw" name="member"value="1234"/>
 	<jsp:setProperty property="name" name="member"value="boyeon"/>
 	<jsp:setProperty property="age" name="member"value="22"/>
 	
 	아이디:<jsp:getProperty property="id" name="member"/><br>
 	비밀번호:<jsp:getProperty property="id" name="member"/><br>
 	이름:<jsp:getProperty property="id" name="member"/><br>
 	나이<jsp:getProperty property="id" name="member"/><br>
 	
 
</body>
</html>