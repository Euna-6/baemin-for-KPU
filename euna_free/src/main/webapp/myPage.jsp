<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보</title>
</head>
<body>
	<div style="float:left; width:300px; height:900px;">
		홈으로 돌아가기 아이콘
	</div>
	<div>
		<form>
			<ul style="list-style:none;">
				<li>아이디 : <input type="text" name="id" value="아이디내용" readonly></li>
				<li>비밀번호 : <input type="password" name="passwd" value="비밀번호내용"></li>
				<li>닉네임 : <input type="text" name="nickname" value="닉네임내용"></li>
				<li>핸드폰번호 : <input type="text" name="mobile" value="핸드폰번호내용"></li>
			</ul>
			<input type="submit" name="submit" value="수정">
			<input type="reset" name="reset" value="원래대로">
	</div>
</body>
</html>