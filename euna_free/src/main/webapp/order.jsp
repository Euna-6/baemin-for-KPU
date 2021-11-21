<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/baemin.css" type="text/css"></link>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>배달의 민족 for 산기대</title>
</head>
<body>
	<div class="menu_left">
		<a href="home.html"><img src="img/back.png" width="80px"></a><br><br><br><br>
	</div>
	<div align="center" style="padding-top:50px;">	
		<c:forEach items="${paramValues.menu }" var="item">
					${item }<br>
		</c:forEach>
		
		<br><br>
		<form action="complete.jsp" method="post">
			원하는 배달 장소<br><br>
			<jsp:useBean id="destination" class="kpu.web.club.domain.OrderVO"></jsp:useBean>
			<select name="des">
				<c:forEach items="${destination.desList }" var="item">
					<option>${item }</option>
				</c:forEach>
			</select>
			<br><br>
			<input type="submit" name="submit" value="주문하기">
		</form>
	</div>
</body>
</html>