<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
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
		<img src="img/burger.png" width="130px">
		<p class="foodType_text2">햄버거</p>
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
						<c:forEach items="${menu.burgerList}" var="burger">
							<tr>
								<td><input type="checkbox" name="menu" value="${burger}"/></td>
								<td>${burger }</td>
							</tr>
						</c:forEach>
					</table>
					<br><br>
					<input type="submit" name="submit" value="주문하기">
					<input type="reset" name="reset" value="다시 선택하기">
				</form>
  		</div>
  		<div id="tab-2" class="tab-content" style="text-align:left;">
  			<form action="http://localhost:8080/euna_free/ReviewServlet?cmd=reviewAdd&foodType=burger" method="post">
				<input class="inputNick" type="text" name="nickname" value="<%=session.getAttribute("nickname")%>" readonly><br>
				<input class="inputContent" type="text" name="content" placeholder="리뷰내용"><br>
				<input class="btn" type="submit" name="submit" value="리뷰등록"><br>
			</form>
			<br><br><br>
			<div class="reviewTab">
				<sql:query var="rs" dataSource="jdbc/mysql">
					select nickname, content from review where foodType="burger"
				</sql:query>
				<c:forEach var="row" items="${rs.rows}">
					<p class="reviewNick">${row.nickname}</p>
					<p class="reviewContent">${row.content }</p><br><hr><br>
				</c:forEach>
			</div>
		</div>
		
	

	</div>
</body>
</html>