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
	<%
	Object obj1=session.getAttribute("sessionName");
	//getAttribute의 반환타입은 object이다.
	String sessionValue=(String)obj1;
	out.print("sessionName의 값:"+sessionValue+"<br>");
	Object obj2=session.getAttribute("sessionNumber");
	int sessionNumberValue=(Integer)obj2;
	out.print("sessionValue의 값:"+sessionValue+"<br>");
	out.print("-------------------<br>");
	
	String sName;
	String sValue;
	
	Enumeration<String> enumeration=session.getAttributeNames();
	while(enumeration.hasMoreElements()){
		sName=enumeration.nextElement();
		sValue=session.getAttribute(sName).toString();
		out.print("세션이름:"+sName+"<br>");
		out.print("세션값:"+sValue+"<br>");
	}
	out.print("-------------------<br>");

	
	session.invalidate();
	//세션의 모든 데이터를 삭제한다.
	if(request.isRequestedSessionIdValid()){
		//유효한 세션이 있으면  true를 리턴, 없으면 false
		out.print("유효한 세션이 있음");
	}else{
		out.print("유효한 세션이 없음");
	}
	
	
	String sesseionID=session.getId();
	//한 브라우저당 고유한 아이디가 생성이된다
	//브라우저별로 생성되어진 세션을 구분할 수 있따.
	int sessionInter=session.getMaxInactiveInterval();
	//세션의 유효시간얻기(기본 30분)
	out.print("-------------------<br>");
	//session.removeAttribute("sessionName");	
	
	%>
</body>
</html>