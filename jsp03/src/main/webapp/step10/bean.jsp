<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="student" class="com.java.jsp.Student" scope="page"></jsp:useBean>
    
    <%--
    	id:Jsp페이지에서 자바빈 객체에 접근할 때 사용하는 이름
    	class:페이지 이름을 포함한 자바빈 클래스의 완전한 이름을 입력
    	scope:자바빈 객체가 저장될 영역을 지정
     --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty property="studentID" name="student" value="202201"/>
	<jsp:setProperty property="name" name="student" value="홍길동"/>
	<jsp:setProperty property="age" name="student" value="20"/>
	<jsp:setProperty property="grade" name="student" value="1"/>
	
	<%--
	name:자바빈이름
	property:속성이름
	value:값
	 --%>
	 학번:<jsp:getProperty property="studentID" name="student"/><br>
	 이름:<jsp:getProperty property="name" name="student"/><br>
	 나이:<jsp:getProperty property="age" name="student"/><br>
	 학년:<jsp:getProperty property="grade" name="student"/><br>
	 
</body>
</html>