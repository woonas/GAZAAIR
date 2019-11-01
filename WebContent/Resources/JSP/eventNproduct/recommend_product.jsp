<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제휴이벤트</title>
<link rel="stylesheet" href="../../CSS/eventNproduct.css">
<script>window.onbeforeunload=() => window.scrollTo(0, 0)</script>
</head>
<body>

	<section class="content best-product">
		<h3>추천상품</h3>
		<div class="tab-menu1">
			<ul class="clearfix">
				<li class="col-fourth on" id='tab-1'><a href="#none">한국</a></li>
				<li class="col-fourth" id='tab-2'><a href="#none">아시아</a></li>
				<li class="col-fourth" id='tab-3'><a href="#none">유럽</a></li>
				<li class="col-fourth" id='tab-4'><a href="#none">미주</a></li>
			</ul>
		</div>

	<c:forEach var="j" begin="${1 }" end="${4 }" step="${1 }"  >
		<c:if test="${j == 1 }">
			<div id="tab-${j }-container" class="tab-content-container">
		</c:if>
		<c:if test="${j != 1 }">
			<div id="tab-${j }-container" class="tab-content-container hidden">
		</c:if>
			<c:set var="i" value="${1}" />
			<c:forEach var="vo" items="${lst }">
				<c:if test="${i%2 == 1 }">
				<div id="tab-${j }-product-${i }" class="row product-wrapper">
				</c:if>

				<c:if test="${i%2 == 0 }">
				<div id="tab-${j }-product-${i }" class="row product-wrapper change-order">
				</c:if>
					<div class="col-three-fourth img-wrapper">
						<img src="<%=request.getContextPath()%>${vo.cityImg}">
					</div>
					<div class="col-fourth product-info-wrapper">
						<p>0${i }</p>
						<p>${vo.city}</p>
						<p>
							GAZA AIR만의<br />특별한 혜택!<br />지금바로 만나보세요
						</p>
						<a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
					</div>
				</div>

			<c:set var="i" value="${i+1}" />
			</c:forEach>
		</div>
	</c:forEach>
		
	</section>

	<script src="../../JS/common.js"></script>

	<script>
        tabEvent('.tab-menu1');
    </script>
</body>
</html>