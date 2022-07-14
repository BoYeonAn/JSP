<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function joinFormCheck(){
		var id=document.joinForm.id.value;
		var pw=document.joinForm.pw.value;
		var pwCheck=document.joinForm.pwCheck.value;
		var name=document.joinForm.name.value;
		
		if(id==null||id==""){
			alert("아이디는 필수사항입니다.");
			document.joinForm.id.focus();
			return;
		}
		if(id==null||pw==""){
			alert("비밀번호는 필수사항입니다.");
			document.joinForm.pw.focus();
			return;
		}
		if(pw!=pwCheck){
			alert("비밀번호가 일치하지않습니다.");
			document.joinForm.pwCheck.focus();
			return;
		}
		if(id==null||name==""){
			alert("이름는 필수사항입니다.");
			document.joinForm.name.focus();
			return;
		}
		
	}

</script>
</head>
<body>
	<%--
		회원가입 폼 만들기(아이디 비번 비번확인 이름 이메일주소)
		joinCheck.jsp로 전송하기
		
	 --%>
	<form action="joinCheck.jsp" method="post" name="joinForm"><br>
 	이름:<input type="text" name="name"><br>
 	비번: <input type="password" name="pw"><br>
 	비번확인:<input type="password" name="pwCheck"><br>
 	이메일:<input type="text" name="email"><br>
 	
 	<input type="button" value="회원가입" onlick="">
 	
 	
 	
 	</form>
	 
</body>
</html>