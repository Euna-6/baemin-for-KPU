<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 민족 for 산기대</title>
<link rel="stylesheet" href="resources/baemin.css" type="text/css"></link>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="resources/menu_tap.js"></script>
</head>
<body>
	<div class="menu_left">
		<a href="home.html"><img src="img/back.png" width="80px"></a><br><br><br><br>
		<img src="img/chicken.png" width="130px">
		<p class="foodType_text2">치킨</p>
	</div>
	<div class="menu_list">
		<ul class="tabs">
    		<li class="tab-link current" data-tab="tab-1">메뉴</li>
    		<li class="tab-link" data-tab="tab-2">리뷰</li>
  		</ul>

  		<div id="tab-1" class="tab-content current">
  			<form action="order.jsp" method="post">
  					<table>
	  					<jsp:useBean id="menu" class="kpu.web.club.domain.OrderVO"></jsp:useBean>
						<c:forEach items="${menu.chickenList}" var="chicken">
							<tr>
								<td><input type="checkbox" name="menu" value="${chicken}"/></td>
								<td>${chicken }</td>
							</tr>
						</c:forEach>
					</table>
					<br><br>
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