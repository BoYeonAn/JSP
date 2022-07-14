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
	회원의 수정폼 만들기
	수정 데이터(비밀번호, 이메일, 주소)
	
	 --%>
	 <%
	 request.setCharacterEncoding("UTF-8");
	 String id=(String)session.getAttribute("id");
	 MembersDAO dao=MembersDAO.getInstance();
	 MembersDTO dto=dao.getMember(id);
	 
	 
	 %>
	 
	 <form aciton="modifyCheck.jsp" method="post">
	 아이디:<%=dto.getId %><br>
	 비밀번호:<input type="password" name="pw"><br>
	 
	 이름:<%=dto.getName() %><br>
	 이메일:<input type="text" name="email" value="<%=dto.getEmail()%>"<br>
	 주소: <input type="text" name="address"><br>	 
	 </form>
</body>
</html>