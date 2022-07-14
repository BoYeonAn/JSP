<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    if(session.getAttribute("validMem")==null){
   
    
    %>
    <jsp:forward page="login.jsp"/>
    <%
    }	
    String name=(String)session.getAttribute("name");
    String id=(String)session.getAttribute("id");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		세션확인해서 세션에유효한 멤버가 있다면 
		안녕하세요 출력하기
		
	 --%>
	 <h1><%=name %>님 안녕하세요</h1>
	 <form action="Longout.jsp" method="post">
	 <input type="submit" value="로그아웃"><br>
	 <input type="button" value="정보수정" onclick="javascript:window.location='modify.jsp'"><br>
	 
	 
	 </form>
</body>
</html>