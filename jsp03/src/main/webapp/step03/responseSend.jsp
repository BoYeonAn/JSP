<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	int age;

%>
<%

	String str=request.getParameter("age");
	age=Integer.parseInt(str);
	if(age>=20){
		response.sendRedirect("responseOK.jsp?id=hong");
	}else{
		response.sendRedirect("resonseNG.jsp? id=hong");
		
	}
	//서버는 클라이언트의요청에 대해 특정 URL로 이동을 요청할 수 있다
	//이를 리다이렉트라고 한다. 데이터없이 단순이동일때 주로 사용한다.
%>
</body>
</html>