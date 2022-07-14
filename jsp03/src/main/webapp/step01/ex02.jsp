<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Savepoint"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.zip.DataFormatException"%>
<%@page import="javafx.scene.chart.PieChart.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%--data클래스와 SimpleDataFormat클래스로 오늘의 날짜를 웹브라우저에 출력하기(스크립트릿, 표현식 --%>
<%
	Date now=new Date();
	out.print(now);
	
	SimpleDateFormat date=new SimpleDateFormat("yyyy-MM-DD");
	SimpleDateFormat time=new SimpleDateFormat("a hh:mm:ss");
	
	String strDate=date.format(now);
	String strTime=time.format(now);

%>

<br>
	<p>오늘의 날짜:<%=strDate %></p>
	<p>현재시간: <%=strTime %></p>
	
	
	</body>
</html>