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
	어플리케이션 객체를 사용해서 웹브라우저가 방문시 방문자수 출력하기
 --%>
 <%!
 	int count=0;
 
 %>
 <%
 	if(application.getAttribute("visit")!=null){
 		count= (Integer)application.getAttribute("visit");
 		
 	}
 	count++;
 	application.setAttribute("visit", count);
 	out.print("<h3>현재 방문자수:"+count+"명 입니다</h3>");
 	
 %>
 <script >
 var i=<%=count%>
 if(i==20){
	 alert('20번째 방문에 진심으로 감사드립니다.');
	 
 }
 </script>
</body>
</html>