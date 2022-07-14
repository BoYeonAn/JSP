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
	넘어온 데이터를 받고 3차까지 맞았다면 여행가능하다고 웹브라우저에 출력하기
	 --%>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String name=request.getParameter("name");
	String nation=request.getParameter("nation");
	String coronaCheck=request.getParameter("coronaCheck");
	if(coronaCheck.equals("corona3")){
		out.print(name+"님 축하드립니다<br>");
		out.print(nation+"에 여행이가능합니다.<br>");
		out.print("<a href=\"#\">여행예약하기</a>");
		
	}else{
		out.print(name+"님은 아쉽지만"+nation+"여행은 3차까지 맞으셔야합니다.");
		out.print("다음번에 예약해주십시오");
	}
	%>
	
</body>
</html>