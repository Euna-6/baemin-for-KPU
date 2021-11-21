<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/baemin.css" type="text/css"></link>
<meta charset="UTF-8">
<title>배달의 민족 for 산기대</title>
</head>
<body>
	<div id="home_top">
		<img src="img/baemin_logo1.png" height="70px;">
	</div>
	<div align="center" style="padding-top:100px">
		<img src="img/baemin_logo.png" width="200px">
		<br> for 한국산업기술대학교<br><br>
		주문 완료되었습니다!<br><br>
		도착지 : ${param.des}<br><br>
		<a href="home.html">홈으로 돌아가기</a>
	</div>
</body>
</html>