<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 민족 for 산기대</title>
<link rel="stylesheet" href="resources/member.css" type="text/css"></link>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="resources/menu_tap.js"></script>
</head>
<body>
	<div class="menu_left">
		<a href="home.html"><img src="img/back.png" width="80px"></a><br><br><br><br>
		<img src="img/pizza.png" width="130px">
		<p class="foodType_text2">피자</p>
		<br><br>
		평점<br>
		평점 rate
	</div>
	<div class="menu_list">
		<dl>
			<dt>메뉴선택</dt>
			<dd>
				<form action="http://localhost:8080/euna_mvcdb/StudentServlet?cmd=join" method="post">
					메뉴이름1 <input type="checkbox" name="menu"><br>
					메뉴이름2 <input type="checkbox" name="menu"><br>
					메뉴이름3 <input type="checkbox" name="menu"><br>
					메뉴이름4 <input type="checkbox" name="menu"><br>
					메뉴이름5 <input type="checkbox" name="menu"><br>
					<br><br>
					원하는 배달 장소<br>
					<input type="radio" name="destination">A동<br>
					<input type="radio" name="destination">B동<br>
					<input type="radio" name="destination">C동<br>
					<input type="radio" name="destination">D동<br>
					<input type="radio" name="destination">E동<br>
					
					<br>
					<input type="submit" name="submit" value="주문하기">
					<input type="reset" name="reset" value="다시 선택하기">
				</form>
			</dd>
			
			<dt>리뷰</dt>
			<dd class="hidden">
				이름 평점
				<br>리뷰 내용
			</dd>
		</dl>
	</div>
</body>
</html>