<%@page import="java.util.Enumeration"%>
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
	세션에 있는 이름과 값을 모두 꺼내서 웹브라우저에 출력하기
	만약에 없다면 세션이 삭제되었다고 웹브라우저에 출력하기

 --%>
 <%
 	Enumeration<String>e=session.getAttributeNames();
 	int i=0;
 	while(e.hasMoreElements()){
 		i++;
 		String sName=e.nextElement();
 		String sValue=session.getAttribute(sName).toString();
 		
 		out.print("sName:"+sName+"<br>");
 		out.print("sValue:"+sValue+"<br>");
 	}
 	if(i==0){
 		out.print("해당세션이 삭제되었습니다");
 	}
 %>
 
</body>
</html>