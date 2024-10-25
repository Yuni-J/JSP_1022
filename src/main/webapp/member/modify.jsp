<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원정보수정 Page</h1>
	
	<form action="/mem/update" method="post">
		id <br>
		<input type="hidden" name="id" value=${ses.id }> 
		${ses.id } <br>
		pwd: <br>
		<input type="text" name="pwd" value=${ses.pwd } > <br>
		email: <br>
		<input type="text" name="email" value=${ses.email }> <br>
		phone: <br>
		<input type="text" name="phone" value=${ses.phone } > <br>
		<button type="submit">정보수정</button>
	</form>
	
	<a href="/mem/delete?id=${ses.id }"><button type="button">회원탈퇴</button></a>
	

</body>
</html>