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
		 DAO객체 생성후 해당 메소드 호출하여
		 수정이 정상적으로 되었다면 main.jsp로 보내기
	 --%>
	 <%
	 	request.setCharacterEncoding("UTF-8");
	 	
	 %>
	 <jsp:useBean id="dto"class="com.jsp.members.MembersDTO"/>
	 <jsp:useBean property="*" name="dto"/>
	 
	 
	 <%
	 	String id=(String)session.getAttribute("id");
	 	dto.setId(id);
	 	
	 	MembersDAO dao=MembersDAO.getInstance();
	 	
	 	int result=dao.updateMember(dto);
	 	if(result==1){
	 %>
	 <script>
	 	alert('정보수정 되었습니다.');
	 	window.location="main.jsp";
	  </script>
	  
	  <%
	 	}else{
	  %>
	  <script>
	    alert('정보수정 실패하였습니다.');
	 	history.back();
	  </script>
	  <%
	 	}
	  %>
</body>
</html>