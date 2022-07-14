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
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String food=request.getParameter("food");
	
	String foodName=null;
	if(food.equals("jajang")){
			foodName="자장면";
	}else if(food.equals("jamppong")){
		foodName="짬뽕";
	}

%>
	<jsp:forward page="food.jsp">
	<jsp:param value="<%=name %>" name="userName"/>
	<jsp:param value="<%=foodName %>" name="foodName"/>
	</jsp:forward>	
<%-- 하나의 jsp페이지에서 다른 jsp 페이지로 요청처리를 전달할때 사용한다. 
	웹브라우저의 주소는 그대로 요청받은 JSP주소로 유지된다
	요청흐름이 이동할떄 request, response 기본객체가 전달된다. --%>

</body>
</html>