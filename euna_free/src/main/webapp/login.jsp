<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 민족 for 산기대</title>
<link rel="stylesheet" href="resources/baemin.css" type="text/css"></link>
</head>
<body>
	<div style="padding-top:100px">
		<img src="img/baemin_logo.png" width="200px">
		<br>for 한국산업기술대학교
	</div>
	<br><br><br>
	<div id="login">
		<form action="http://localhost:8080/euna_free/MemberServlet?cmd=login" method="post">
			<input class="inputs" type="text" name="id" placeholder="아이디" required><br>
			<input class="inputs" type="password" name="passwd" placeholder="비밀번호" required>
			
			<br><br><br>
			<input class="btn" type="submit" name="submit" value="로그인"><br><br>
		</form>
		
		아이디가 없다면? > <a href="http://localhost:8080/euna_free/MemberServlet?cmd=join" target="_self">회원가입</a>
	</div>
</body>
</html>