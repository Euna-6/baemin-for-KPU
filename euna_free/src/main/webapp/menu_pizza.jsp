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
		<ul class="tabs">
    		<li class="tab-link current" data-tab="tab-1">메뉴</li>
    		<li class="tab-link" data-tab="tab-2">리뷰</li>
  		</ul>

  		<div id="tab-1" class="tab-content current">
  			<form action="http://localhost:8080/euna_mvcdb/StudentServlet?cmd=join" method="post">
					<input type="checkbox" name="menu" value="치즈피자">치즈피자 <br>
					<input type="checkbox" name="menu" value="불고기피자">불고기피자 <br>
					<input type="checkbox" name="menu" value="포테이토피자">포테이토피자 <br>
					<input type="checkbox" name="menu" value="쉬림프피자">쉬림프피자 <br>
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
  		</div>
  		<div id="tab-2" class="tab-content">
			이름 평점
			<br>리뷰 내용
		</div>
	

	</div>
</body>
</html>