<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/baemin.css" type="text/css"></link>
<title>내 정보</title>
</head>
<body>
	<div class="menu_left">
		<a href="home.html"><img src="img/back.png" width="80px"></a><br><br><br><br>
	</div>
	<div>
		<form action="http://localhost:8080/euna_free/MemberServlet?cmd=update" method="post">
			<ul style="list-style:none;">
				<li>아이디 : <input type="text" name="id" value="<%=session.getAttribute("id") %>" readonly></li>
				<li>비밀번호 : <input type="password" name="passwd" value="<%=session.getAttribute("passwd") %>"></li>
				<li>닉네임 : <input type="text" name="nickname" value="<%=session.getAttribute("nickname") %>"></li>
				<li>핸드폰번호 : <input type="text" name="mobile" value="<%=session.getAttribute("mobile") %>"></li>
			</ul>
			<input type="submit" name="submit" value="수정">
			<input type="reset" name="reset" value="원래대로">
		</form>
	</div>
</body>
</html>