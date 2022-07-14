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
	integer타입의 ArrayList를 생성한 후 ArrayList의 각 요소에 넣는다. 중복엑스
	로또 번호 웹브라우저에 출력하기
	
	 --%>
	<%!
		List<Integer> = new ArrayList<Integer>();
		while(lotto.size()<6){
			int number=(int)(Math.random()*45)+1;
			//contains: 리스트 내부에 해당객체가 존재한다면  true.
			if(!lotto.contains(number)){
				lotto.add(number);
				
			}
		}
	//리스트의 오름차순
		Colloctions.sort(lotto);
	%>
	<h2>로또 추점결과</h2>
	<%
	for(int num:lotto){
		out.println("<b>"+num+"</b>&nbsp;");
	}
	%>
	

</body>
</html>