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
		Cookie[] cookies=request.getCookies();
		for(int i=0; i<cookies.length;i++){
			
			String str=cookies[i].getName();
			//쿠키이름을 얻는 메소드
			if(str.equals("cookieName")){
				out.print("cookies["+i+"]name:"+cookies[i].getName()+"<br>");
				out.print("cookies["+i+"]vaule:"+cookies[i].getValue()+"<br>");
				out.print("-------------------");
			}
		}
	%>
	<a href="cookieDelete.jsp">쿠키삭제</a>
	
</body>
</html>