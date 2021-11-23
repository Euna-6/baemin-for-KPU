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
	<div style="padding-top:50px;">
		<form action="http://localhost:8080/euna_free/MemberServlet?cmd=update" method="post">
			<table>
				<tr>
					<td class="update">아이디 </td>
					<td><input class="update" type="text" name="id" value="<%=session.getAttribute("id") %>" readonly></td>
				</tr>
				<tr>
					<td class="update">비밀번호 </td>
					<td><input class="update" type="password" name="passwd" value="<%=session.getAttribute("passwd") %>"></td>
				</tr>
				<tr>
					<td class="update">닉네임 </td>
					<td><input class="update" type="text" name="nickname" value="<%=session.getAttribute("nickname") %>"></td>
				</tr>
				<tr>
					<td class="update">핸드폰번호 </td>
					<td><input class="update" type="text" name="mobile" value="<%=session.getAttribute("mobile") %>"></td>
				</tr>
			</table>
			<input class="btn" type="submit" name="submit" value="수정">
			<input class="btn" type="reset" name="reset" value="원래대로">
		</form>
		<br>
		<a style="font-size:13px;" href="withdraw.jsp" target="_self">회원탈퇴</a>
	</div>
</body>
</html>