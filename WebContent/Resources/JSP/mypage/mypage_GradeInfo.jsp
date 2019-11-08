<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../CSS/navNfooter.css" type="text/css"/>
<link rel="stylesheet" href="../../CSS/mypage_GradeInfo.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="not_using/main.js"></script>

</head>
<body>
<div id="all">
	<div><h3>회원 안내</h3></div>
	<div id="vipEligibility" onclick="eligibilityNoneBlock()"><img src="../../IMG/icon/check.png" id="check1"/>우수회원 승급/자격<br/>유지 기준</div>
	<div id="vipGrade" onclick="benefitNoneBlock()"><img src="../../IMG/icon/check.png" id="check2"/>우수회원 등급별 혜택</div><div id="bar"></div>
	<div id="gradePage">
		<ul class="list-type2 last-note bg-gray6">
					<li>GAZA 클럽 우수회원이란 실버등급을 제외한 골드 이상 회원을 뜻합니다.</li>
					<li>2018년 10월 1일부터는 ‘기준일’로부터 매 24개월간의 자격 조건 및 자격 유지 조건에 아시아나 제휴카드 이용 실적이 반영되어 우수회원 자격을 보다 쉽게 획득하실 수 있도록 하였습니다.</li>
		</ul>
		<div class="h2Text"><h2>승급 기준</h2></div>
		<div id="SIMDiv">
			<div id="separation"><div class="separationTitle">구분</div>
				<div id="platinumImg"><div><img src="../../IMG/mypage_Img/platinum.jpg"/></div><div>플래티늄</div></div>
				<div id="diamondPlusImg"><div><img src="../../IMG/mypage_Img/diamondplus.jpg"/></div><div>다이아몬드플러스</div></div>
				<div class="diamondImg"><div><img src="../../IMG/mypage_Img/diamond.jpg"/></div><div>다이아몬드</div></div>
				<div class="goldImg"><div><img src="../../IMG/mypage_Img/gold.jpg"/></div><div>골드</div></div>			
			</div>
			<div id="inquiryCondition"><div class="inquiryConditionTitle">자격조건</div>
				<div id="plaText">가입일로부터 다음의 어느 한 조건을 충족할 경우<br/>
								1) 100만 탑승 마일 적립<br/>
								2) 아시아나항공 1,000회 탑승
				</div>
				<div id="diaplusText1">가입일로부터 다음의 어느 한 조건을 충족할 경우<br/>
								1) 50만 탑승 마일 적립<br/>
								2) 아시아나항공 500회 탑승
				</div>
				<div id="diaplusText2">‘기준일*’로부터 매 24개월간 다음의 어느 한 조건을 충족할 경우<br/>
								1) 10만 탑승 마일 적립<br/>
								2) 아시아나항공 100회 탑승<br/>
								3) 탑승 마일이 7만 5천 마일 이상이면서 아시아나 제휴카드 이용 실적과 합하여 10만 마일 적립
				</div>
				<div class="diaText">‘기준일*’로부터 매 24개월간 다음의 어느 한 조건을 충족할 경우<br/>
								1) 4만 탑승 마일 적립<br/>
								2) 아시아나항공 50회 탑승<br/>
								3) 탑승 마일이 3만 마일 이상이면서 아시아나 제휴카드 이용 실적과 합하여 4만 마일 적립
				</div>
				<div class="goldText">‘기준일*’로부터 매 24개월간 다음의 어느 한 조건을 충족할 경우<br/>
								1) 2만 탑승 마일 적립<br/>
								2) 아시아나항공 30회 탑승<br/>
								3) 탑승 마일이 1만 5천 마일 이상이면서 아시아나 제휴카드 이용 실적과 합하여 2만 마일 적립
				</div>
			</div>
			<div id="maintenancePeriod"><div class="maintenancePeriodTitle">자격 유지 기간</div>
				<div id="lifetime">평생</div>
				<div id="year2">조기 승급 기간<br/>+ 24개월</div>
			</div>
		</div>
		<!-- 자격 유지 기준 -->
		<div id="inquiryh2Text"><h2>자격 유지 기준</h2></div>
		<div id="inquirySIMDiv">
			<div id="inquiryseparation"><div class="separationTitle">구분</div>
				<div id="inquirydiamondPlusImg"><div><img src="../../IMG/mypage_Img/diamondplus.jpg"/></div><div>다이아몬드플러스</div></div>
				<div class="diamondImg"><div><img src="../../IMG/mypage_Img/diamond.jpg"/></div><div>다이아몬드</div></div>
				<div class="goldImg"><div><img src="../../IMG/mypage_Img/gold.jpg"/></div><div>골드</div></div>
			</div>
			<div id="iinquiryCondition"><div class="inquiryConditionTitle">자격조건</div>
				<div id="inquirydiaplusText">‘기준일*’로부터 매 24개월간 다음의 어느 한 조건을 충족할 경우<br/>
								1) 7만 5천 탑승 마일 적립<br/>
								2) 아시아나항공편 60회 탑승<br/>
								3) 탑승 마일이 5만 마일 이상이면서 아시아나 제휴카드 이용 실적과 합하여 7만 5천 마일 적립
				</div>
				<div class="diaText">‘기준일*’로부터 매 24개월간 다음의 어느 한 조건을 충족할 경우<br/>
								1) 3만 탑승 마일 적립<br/>
								2) 아시아나항공 30회 탑승<br/>
								3) 탑승 마일이 2만 마일 이상이면서 아시아나 제휴카드 이용 실적과 합하여 3만 마일 적립
				</div>
				<div class="goldText">‘기준일*’로부터 매 24개월간 다음의 어느 한 조건을 충족할 경우<br/>
								1) 1만 5천 탑승 마일 적립<br/>
								2) 아시아나항공편 20회 탑승<br/>
								3) 탑승 마일이 1만 마일 이상 이면서 아시아나 제휴카드 이용 실적과 합하여 1만 5천 마일 적립
				</div>
			</div>
			<div id="inquirymaintenancePeriod"><div class="maintenancePeriodTitle">자격 유지 기간</div>
				<div id="inquiryyear2">조기 승급 기간<br/>+ 24개월</div>
			</div>
		</div>
	</div>
	<!-- 우수회원 등급별 혜택 -->
	<div id="benefitPage">
		<ul class="list-type2 last-note bg-gray6">
					<li>GAZA클럽 우수회원에게 제공되는 다양한 우대서비스를 확인하세요.</li>
		</ul>
		<div class="h2Text"><h2>우수 회원 공동 혜택</h2></div>
		<div class="row clearfix">
			<div class="col-sixth"><div id="beneSeparation">구분</div></div>
			<div class="col-sixth"><div id="gold">골드</div></div>
			<div class="col-sixth"><div id="dia">다이아몬드</div></div>
			<div class="col-two-sixth"><div id="diaplus">다이아몬드 플러스</div></div>
			<div class="col-sixth"><div id="pla">플레티늄</div></div>
			
			<div class="col-sixth"><div class="duration">구분</div></div>
			<div class="col-sixth"><div class="duration">구분</div></div>
			<div class="col-sixth"><div class="duration">구분</div></div>
			<div class="col-one-sixth"><div class="duration">구분</div></div>
			<div class="col-one-sixth"><div class="duration">구분</div></div>
			<div class="col-sixth"><div class="duration">구분</div></div>
			
			
		</div>
		
	
	
	
	</div>
	
</div>
<footer>
	<div id="footContainer">
		<a href="index.html" title="홈페이지로 이동"><img src="../../IMG/logo/logo_white2.png" width="170"/></a>
		<div class="snsPane">
			<div class="snsBtn">
				<img src="../../IMG/icon/facebook_white.png"/>
				<img src="../../IMG/icon/facebook.png"/>
			</div>
			<div class="snsBtn">
				<img src="../../IMG/icon/instagram_white.png"/>
				<img src="../../IMG/icon/instagram.png"/>
			</div>
			<div class="snsBtn">
				<img src="../../IMG/icon/twitter_white.png"/>
				<img src="../../IMG/icon/twitter.png"/>
			</div>
			<div class="snsBtn">
				<img src="../../IMG/icon/youtube_white.png"/>
				<img src="../../IMG/icon/youtube.png"/>
			</div>
		</div>
		<hr/>
		<div class="footContent">
			<div class="footCall">
				
				<b>고객센터</b><br/>080-0000-0000<br/>운영시간 | 오전 9시~오후 6시<br/>점심시간 | 오후 12시~오후 1시
			</div>
			
			<div class="footInfo">
				<b>가자에어</b> | 사업자번호 : 203-87-00612<br/>통신판매업신고번호 : 제 2012-서울구로-1560호<br/>
				서울시 구로구 시흥대로 163길 33 주호타워 2층 가자항공(구로동 1129-1)<br/>
				대표전화 : 02-837-9922<br/>
				Copyright&copy; 주식회사가자에어. ALL RIGHTS RESERVED | 개인정보책임자 : 정운하
			</div>
		</div>
	</div>
</footer>
<script src="../../JS/mypage_GradeInfo.js"></script>
</body>
</html>