<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수하물</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../../HTML/not_using/main.js"></script>
<style>
.img{
	width:100%;
}
li{
	list-style-type:none;
	margin-bottom:5px;
}
h4 {
	float: left;
	font-weight: bold;
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
#section{
	border:1px solid white;
	height:500px;
}
#caution{
	background:#f7f7f7;
	height:760px;
}
#ulClass>li{
	margin-bottom:10px;

}
</style>
<script>
	function start() {
		//탭메뉴
		var btnIdList = [ 'cosAll', 'carryAll' ];
		var paneIdList = [ 'cos', 'carry' ];
		var btnList = [ '위탁 수하물', '휴대 수하물' ];
		var i;
		var checkBtnHTML = "";
		var tabPanelHTML = "";
		for (i = 0; i < paneIdList.length; i++) {
			checkBtnHTML += "<button class='checkBtn' id='" + btnIdList[i]
					+ "' onclick='openPage(\"" + paneIdList[i] + "\", this, \""
					+ btnIdList[i] + "\")'><img src='../../../IMG/icon/check.png'/>"
					+ btnList[i] + "</button> ";
		}
		document.getElementById("checkBtn").innerHTML = checkBtnHTML;

		// 기본값 선택
		document.getElementById("cosAll").click();
		
	}
	function openPage(pageName, elmnt, btnId) {
		var i, onContent, checkBtns;

		// 전체 숨김
		onContent = document.getElementsByClassName("onContent");
		for (i = 0; i < onContent.length; i++) {
			onContent[i].style.display = "none";
		}

		// 배경색 삭제
		checkBtns = document.getElementsByClassName("checkBtn");
		for (i = 0; i < checkBtns.length; i++) {
			checkBtns[i].style.backgroundColor = "";
			checkBtns[i].style.color = "";
			var imgTag = checkBtns[i].firstChild;
			imgTag.style.display = "none";
		}

		// 클릭된 컨텐츠 보이기
		document.getElementById(pageName).style.display = "block";

		// 클릭된 버튼 색상 변경
		elmnt.style.backgroundColor = "#fff";
		elmnt.style.color = "#555";

	}
</script>
</head>
<body onload="start()">
	<%@ include file="../../common/nav.jspf" %>
		<div id="contents">
			<section id="title">
				<h3>수하물</h3>
			</section>
			<section id="online">
				<div id="checkBtn"></div>
				<div id="tabPanel" >
				<!-- 위탁 수하물  -->
					<div id="cos" class='onContent'	>
					<h4>국제선 이용 시 <font style="color:red">무료수하물</font> 허용기준</h4><br/><br/>
					타 항공사로 연결시 해당 항공사의  무료수하물 허용량 기준이 당사와 상이 할수 있습니다.<br/>	
					수하물 위탁은 출국장 입장 전 체크인(수속) 카운터 또는 자동 수하물 위탁 기기에서만 가능합니다.
					<div><img src="../../../IMG/service/carrybag.png" class="img"/></div>
					<h4 style="margin-bottom:10px;">구간별 무료수하물 허용량</h4>
					<div id="section"><img src="../../../IMG/service/carry2.png" class="img"/><br/>
						<ul>
						<li>· 소아의 경우,휴대용 유모차,보행기,카시트,운반용 요람 중1개 추가 가능</li>
						<li>· 비즈니스 스위트 탑승시 비즈니스 클래스 규정 적용</li>	
						<li>· 미주 외 구간인 경우 이코노미 클래스 허용 개수1개</li>
					</ul>
					</div>
					<hr style="margin:10px 0 10px 0"/>
					<h4>국제선 초과수하물 안내</h4><br/><br/>
					<ul>
						<li>· 삼삼변의 합이 292cm 이내일 경우라도, 운항 당일 항공기 적재 공간에 따라 운송이 거절될 수 있습니다.</li>
						<li>· 무료로 부치실 수 있는 수하물 허용량을 초과할 경우 초과 수하물 요금이 부과됩니다.</li>
						<li>· 초과 수하물 요금은 수하물의 개수, 무게 및 부피에 따라 부과되며, 노선별 비행시간에 따라 차이가 있습니다.</li>
						<li>· 현지 통화 사정에 따라, 해외 출발편의 초과 수하물 요금이 달라질 수 있습니다.</li>
						<li>· 위탁 가능한 수하물 최대 무게 및 부피는 출/도착지 국가에 따라 제한될 수 있습니다.</li>
						<li>· 작업자의 안전사고 예방을 위하여, 개당 최대 무게는 32kg 이내로 준비해 주시기 바라며, 초과할 경우, 운송이 거절될수 있습니다.</li>
						<li>· 초과 수하물 요금 적용 기준<br/>
							  &nbsp;&nbsp;&nbsp;* 한국 출발 : 원화(KRW)<br/>
							  &nbsp;&nbsp;&nbsp;* 미국 출발 : 미국 달러 (USD)<br/>
							  &nbsp;&nbsp;&nbsp;* 그외 국가 출발 : USD 기준 금액을 당일 은행 대고객 매도율 적용한 현지 통화로 환산 적용<br/></li>					
					</ul>
				</div>
				<!-- 휴대 수하물 -->
				<div id="carry" class="onContent">
					<h4>휴대 수하물 이용 기준</h4>
					<div><img src="../../../IMG/service/carry3.png" class="img"/></div>
					<h4>휴대 수하물 규격 및 개수</h4><br/><br/>
					기내로 가져갈 수 있는 휴대 수하물의 규격 및 개수를 다음과 같이 제한하고 있습니다.
					<div><img src="../../../IMG/service/carry4.png" class="img"></div>
					<ul>
						<li>· 수하물은 반드시 머리 위 선반이나 앞 좌석 밑에 안전하게 수납할 수 있어야 합니다.</li>
						<li>· 비즈니스 스위트 탑승 시 비즈니스 클래스 규정 적용</li>
					</ul>
					<div id="caution">
						<div><h4 style="margin:20px 0 0 20px;">유의사항</h4></div><br/><br/><br/><br/>
						<div style="margin-left:20px;">
							<ul id="ulClass">
								<li>· 수하물을 분실하지 않도록 주의하시기 바랍니다.<br/>
									&nbsp;&nbsp;&nbsp;-기내 휴대수하물 및 기내 휴대 물품의 경우 손님께서 기내에 휴대하여 전적으로 보관하고 책임진다는 조건 하에 허용됩니다.<br/>
									&nbsp;&nbsp;&nbsp;-비행 중 손님의 물품에 대해서 철저히 관리하시어 두고 내리시거나 분실되지 않도록 주의하여 주십시오.
								</li>
								
								<li>· 탑승구(Gate)에서는 수하물 위탁이 불가하오니, 기내 반입 휴대 수하물 규정을 반드시 준수하여 주십시오.<br/> 
									&nbsp;&nbsp;&nbsp;-<font style="color:brown">공항에서 인도받은 면세품</font>을 포함하여, 휴대하는 수하물의 크기와 무게가 기내 반입 규격을 초과하지 않도록 주의하여 주십시오.
								</li>
								
								<li>· 아래의 물품 중 1개를 기내 반입 휴대수하물 외에 추가로 가져가실 수 있습니다.<br/>
									&nbsp;&nbsp;&nbsp;-소형서류가방<br/>
									&nbsp;&nbsp;&nbsp;-핸드북<br/>
									&nbsp;&nbsp;&nbsp;-노트북컴퓨터<br/>
									&nbsp;&nbsp;&nbsp;-독서물<br/>
									&nbsp;&nbsp;&nbsp;-작은크기 면세품<br/>
									&nbsp;&nbsp;&nbsp;-비행 중 사용하는 유아용 음식<br/>
									&nbsp;&nbsp;&nbsp;-몸이 불편한 손님의 지팡이,목발<br/>
									&nbsp;&nbsp;&nbsp;-시각장애인의 안내견<br/>
									&nbsp;&nbsp;&nbsp;-일자형으로 접히는 소형 유모차<br/>
									&nbsp;&nbsp;&nbsp;<font style="color:brown">* 단, 휴대 가능한 수하물의 경우라도 기내 공간 부족, 항공사 사정 등에 따라 위탁수하물로 처리 될 수 있습니다.</font>
								</li>
								
								<li>· 별도의 좌석을 구매해야 운송이 가능한 물품 <br/>
									&nbsp;&nbsp;&nbsp;-삼변의 합이 115 cm를 초과하는 첼로, 가야금, 거문고, 기타(Guitar) 등과 같은 대형 악기는 별도의 좌석을 구입하여 기내로 안전하게 운송이 가능합니다.<br/>
									&nbsp;&nbsp;&nbsp;-별도의 좌석을 구입하는 악기는 최대 높이 155cm까지 기내로 반입이 가능합니다.<br/>
									&nbsp;&nbsp;&nbsp;-의료용 산소통을 사용하는 경우 별도 좌석 구매가 필요할 수 있습니다. (일부 비즈니스석 해당)
								</li>
								
								<li>· 기내 안전 및 승객 편의를 위해 비상구 또는 통로의 접근을 방해하거나 주변 승객에게 불편을 줄 수 있는 여행편의 용품은 <font style="color:red">기내 사용이 불가합니다.</font> <br/>
									다만, 기내 휴대 수하물 허용 규격인 경우 <font style="color:red">기내 반입은 가능합니다.</font><br/>
									&nbsp;&nbsp;&nbsp;-(예 : Bed Box, Inflatable Foot Leg Rest, Fly Legs Up, Inflatable Air Pillow 등)
								</li>
								
								<li>· 예외 사항 <br/>
								&nbsp;&nbsp;&nbsp;-운항 항공기의 제약 및 운항 국가별 공항 규정 및 절차에 따라 기내 반입이 변경/제한되는 경우도 있습니다.
								</li>
								
							</ul>
						</div>
						
					</div>
					
				</div>
				
				</div>
			</section>
		</div>

	</div>
	<%@ include file="../../common/footer.jspf" %>
</body>
</html>