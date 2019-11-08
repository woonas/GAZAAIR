<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>s"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../../HTML/not_using/main.js"></script>
<style>
.faqName{
	border:1px solid gray;
	width:100%;
	height:60px;
	background:#e6e2df;
	text-align:center;	
	line-height:60px;
	font-size:28px;
	font-weight:bold;
}
.faqContent{
	border:1px solid gray;
	width:100%;
	height:200px;
	margin-bottom:20px;
	text-align:center;
	font-size:20px;
	line-height:180px;
}
.faqContent a:link{
	color:black;
}
.faqContent a:visited{
	color:black;
}
.faqContent a:hover{
	color:#ab7d55;
	text-decoration:none; 
	border-bottom:1px solid #ab7d55; 
	padding-bottom:1px;	
}
hr{
	margin:15px 0 15px 0;
	height: 1px;
	border: none;
	background-color: #aaa;
}
h4 {
	float: left;
	text-weight: bold;
	color: black;
	font-size:25px;
	
}
nav {
	width: 100%;
	height: 70px;
	background-color: gray;
}

#warp {
	width: 100%;
}

#contents {
	max-width: 1200px;
	margin: 0px auto;
}

#title {
	height: 200px;
	text-align: center;
}

#title h1 {
	margin: 55px 0;
}

.checkBtn {
	background-color: #777;
	color: white;
	float: left;
	border: 1px solid gray;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 17px;
	font-weight: bold;
	width: 50%;
}

.checkBtn>img {
	width: 20px;
	height: 20px;
}

.checkBtn:hover {
	background-color: #555;
}

.onContent {
	display: none;
	padding: 100px 20px;
	height: 100%;
}
.name{
	float:left;
	font-size:20px;
	
}
.write{
	float:right;
	margin-bottom:10px;
}
.lis{
	list-style-type:none;
	margin-left:10px;
	margin-bottom:10px;
}
</style>
<script>
</script>
</head>
<body>
<%@ include file="../../common/nav.jspf" %>
		<div id="contents">
			<section id="title">
				<h3>FAQ</h3>
			</section>
			<section>
			<h4>자주 찾는 안내사항</h4><br><br/>
				<div class="faqName">항공권 예매 </div>
				<div class="faqContent"><a href="#">최저가 항공권</a> │
									  <a href="#">가격으로 조회</a> │
									  <a href="#">정기 운항 스케쥴</a> │
									  <a href="#">실시간 운항</a> │ 
									  <a href="#">실시간 스케쥴</a>│ 
									  <a href="#">출도착운항노선도</a></div>
				
				<div class="faqName">마이 페이지 </div>
				<div class="faqContent"><a href="#">회원정보</a> │
										<a href="#">회원등급</a> │
										<a href="#">항공권 예약 현황</a> │ 
										<a href="#">마일리지</a> │ 
										<a href="#">관심노선</a></div>
				
				<div class="faqName">상품 페이지 </div>
				<div class="faqContent"><a href="prd_SpecialPrice.html">특가할인</a> │ 
										<a href="prd_alliance_event.html">제휴이벤트</a> │ 
										<a href="prd_BestProduct.html">베스트 상품</a> │ 
										<a href="#">추천상품</a> │ 
										<a href="#">고객의 말씀</a></div>
				
				<div class="faqName">서비스 안내 </div>
				<div class="faqContent"><a href="service_checkIn.html">체크인</a> │ 
										<a href="service_baggage.html">수하물 서비스</a> │ 
										<a href="service_pet.html">반려동물동반</a> │ 
										<a href="service_airline_food.html">기내식안내</a>│ 
										<a href="service_class.html">클래스안내</a>│ 
										<a href="service_wifi.html">유료부가 서비스</a>│ 
										<a href="service_private_plane.html">전용기</a> 
										</div>
				
			</section>
		</div>
	</div>
	<%@ include file="../../common/footer.jspf" %>
</body>
			