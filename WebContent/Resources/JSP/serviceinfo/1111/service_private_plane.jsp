<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전용기</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../../HTML/not_using/main.js"></script>
<style>
hr {
	margin-bottom: 20px;
	margin:15px 0 15px 0;
	height: 1px;
	border: none;
	background-color: #aaa;
}
h4 {
	float: left;
	font-weight: bold;
	color: black;
	margin: 5px 0 30px;
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
.onContent {
	display: none;
	padding: 100px 20px;
	height: 100%;
}
#airContent{
	background:#d3d4d6;
}
.head{
	margin:15px 0 15px 15px;
}
.subContent{
	margin: -15px 0 10px 30px;
}
</style>
<script>


</script>
</head>
<body>
	<%@ include file="../../common/nav.jspf" %>
		<div id="contents">
			<section id="title">
				<h3>전용기 서비스</h3>
			</section>
			<section>
			<div>
				<div><h4 style="font-size:28px;">서비스 개요</h4></div>	
				<div><img src="../../../IMG/service/air.png" style="width:100%;"></div>

				<div id="airContent">
				<h4 class="head">고객만의 개인 일정에 맞춘 전용기 서비스를 제공합니다</h4><br/><br/><br/>
				<div class="subContent">- 고객의 일정이 정해지는 순간, 전담 서비스팀이 여정에 맞는 최적의 스케줄 설계부터 마무리까지 세심한 서비스를 제공합니다.<br/>
				- 정기편이 취항하지 않는 공항에도 출/도착이 가능하여 더욱 편리하고 신속하게 목적지까지 이동할 수 있습니다.<br/>
				 - 또한 대한항공 정기편과 연계하여 여행 내내 특별한 서비스를 제공합니다.</div>
				 <h4 class="head">간편한 탑승</h4><br/><br/><br/>
				 <div class="subContent">- 출/도착 공항에서 전담 서비스팀이 더욱 빠르고 간편한 수속을 도와 드립니다.</div>
				 <h4 class="head">전담 승무원</h4><br/><br/><br/>
				 <div class="subContent">- 세계 최고 수준의 서비스를 자랑하는 대한항공의 전담 승무원이 한 순간도 놓치지 않는 최상의 서비스를 제공합니다.</div>
				 <h4 class="head">최고 수준의 기내식</h4><br/><br/><br/>
				 <div class="subContent">- 기내식 최고의 영예, 머큐리상 수상에 빛나는 기내식 서비스, 일류 요리사가 정성껏 준비한 호텔급 기내식을 제공합니다.</div>
				 <h4 class="head">엄격한 안전 기준</h4><br/><br/><br/>
				 <div class="subContent">- 글로벌 프리미엄 항공사로서 축적된 경험과 엄격한 안전 기준을 준수하는 시스템으로 귀하의 믿음을 이어 갑니다.</div>
				 <h4 class="head">이용 안내 및 예약 문의</h4><br/><br/><br/>
				 <div class="subContent">- 이용문의 : 가자항공 전용기 전담데스크<br/>
				 - 연 락 처 : 02-0000-0000, 02-0000-0000 (평일 08:30 ~ 17:30)
				 <br/>- 이 메 일 : privateair@gajaair.com </div>
				 
				</div>
				
				<h4 style="font-size:28px;">전용기 제원</h4>
				<div><img src="../../../IMG/service/air3.png" style="width:100%;"></div>
				<hr/>			
				<div><img src="../../../IMG/service/air4.png" style="width:100%;"></div>
				
			</div>
			</section>
		</div>
 
	</div>
	<%@ include file="../../common/footer.jspf" %>
</body>
</html>