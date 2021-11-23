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
	<div class="menu_left">
		<a href="home.html"><img src="img/back.png" width="80px"></a><br><br><br><br>
	</div>
	<div style="padding-top:50px;">
		<form action="http://localhost:8080/euna_free/MemberServlet?cmd=withdraw" method="post">
			<input class="inputs" type="text" name="id" value="<%=session.getAttribute("id") %>" readonly><br>
			<input class="inputs" type="password" name="passwd" placeholder="비밀번호를 입력하세요" required>
			
			<br><br><br>
			<input class="btn" type="submit" name="submit" value="탈퇴하기">
		</form>
	</div>
</body>
</html>

