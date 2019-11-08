<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운임안내</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
.caution{
	background:#f7f7f7;
	height:300px;
}
.caution ul li{
	margin:15px 0 15px 25px;
}
.contentTable{
	border:1px solid black;
	text-align:center;
	width:1200px;
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

#ulClass>li{
	margin-bottom:10px;
}
</style>
<script>
	function start() {
		//탭메뉴
		var btnIdList = [ 'inAll', 'outAll' ];
		var paneIdList = [ 'in', 'out' ];
		var btnList = [ '국내선', '국제선' ];
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
		document.getElementById("inAll").click();
		
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
				<h3>운임 안내</h3>
			</section>
				<div id="checkBtn"></div>
				<div id="tabPanel" >
				<!-- 국내선  -->
					<div id="in" class='onContent'	>
						<h4>일반운임</h4><br/><br/>
						이미지 추가</br>
						국내선 일반운임
						운임표 금액은 성인 기준의 편도 운임이며 사전 고지 없이 변동될 수 있습니다.<br/>
						할인운임 및 초특가운임은 예매단계에서 확인하실 수 있습니다. <br/><br/>
						
						<h4>할인대상</h4><br/><br/>
						소아/경로우대/군인<br/><br/>
						<table class="contentTable">
							<tr>
								<td>대상</td>
								<td>조건</td>
								<td>정상운임 할인률</td>
								<td>증빙 서류</td>
								<td>비고</td>							
							</tr>
							<tr>
								<td>소아</td>
								<td>만 2세 이상 ~ 만 13세 미만</td>
								<td>25%</td>
								<td>생년원일 확인 가능한 서류<br/>(주민등록등본, 건강보험증 등)</td>
								<td>공항이용료 50%할인</td>
							</tr>
							
							<tr>
								<td>경로우대</td>
								<td>만 65세 이상</td>
								<td>10%</td>
								<td>연령 확인 가능한 서류<br/>(주민등록증,운전면허증,여권 등)</td>
								<td style="color:red">에어부산(BX) 공동운항편<br/>미적용
							</tr>
							
							<tr>
								<td>군인</td>
								<td>단기하사 이하 의무 복무사병<br/>(휴가여행에 한함)</td>
								<td>10%</td>
								<td>1.휴가증/외박증/외출증/전역증<br/>2.일일복무상황부(공익요원)<br/>3.입영통지서(입영일3일이내)</td>
								<td>전역증은 전역 당일에 한함</td>
							</tr>
						</table>
						
						<h4>장애인</h4><br/><br/>
						<table class="contentTable">
							<tr>
								<td>대상</td>
								<td>조건</td>
								<td>정상운임 할인률</td>
								<td>증빙 서류</td>
								<td>비고</td>							
							</tr>
							<tr>
								<td rowspan=2>장애인<br/>(성인/소아/유아)</td>
								<td>중증(혹은 1~3급)<br/>복지카드 소지자</td>
								<td>50%</td>
								<td rowspan=2>시/군/구청 발행 복지카드<br/>(보건복지부장관명의)</td>
								<td rowspan=2>공항이용료 50%할인</td>
							</tr>
							
							<tr>
								
								<td>경증(혹은 4~6급)<br/>복지카드 소지자</td>
								<td>30%</td>
								
								
							</tr>
							
							<tr>
								<td>장애인 동반자</td>
								<td>중증 (혹은 1~3급) 승객과<br/>동반하는 보호자 1인</td>
								<td>50%</td>
								<td>신분증</td>
								<td>공항이용료 50% 할인</td>
							</tr>
						</table><br/>
						장애인 소아의 경우 일반 장애인의 경우와 동일한 기준으로 단순 중증/경증 등급에 따라 할인율 적용<br/>
						(예:  중증 장애인 소아일 경우 정상 운임의  50%  할인율 적용 / 경증 장애인 소아는 정상 운임의 30% 할인율 적용)<br/><br/>
						
						<h4>보훈대상자</h4><br/><br/>
						<table class="contentTable">
							<tr>
								<td>대상</td>
								<td>조건</td>
								<td>정상운임 할인률</td>
								<td>증빙 서류</td>
								<td>비고</td>							
							</tr>
							
							<tr>
								<td>국가유공자</td>
								<td>국가유공자 및 유족<br/>5.18 민주유공자 유족</td>
								<td>30%</td>
								<td>국가보훈처 발행 유공자증 또는 유족증<br/>(유족의 경우 소지수권 유족 1인,<br/>유족원증 증빙불가) </td>
								<td>-</td>
							</tr>
							
							<tr>
								<td>고엽제 후유증 환자</td>
								<td>고엽제 후유증 환자</td>
								<td>30%</td>
								<td>고엽제 유공자증</td>
								<td rowspan=2>공항이용료 50% 할인</td>
							</tr>
							
							<tr>
								<td>국가유공상이자</td>
								<td>국가유공 상이자<br/>5.18민주유공부상자</td>
								<td>50%</td>
								<td>국가보훈처 발행 상이군경 회원증 및<br/>상이등급이 명기된 국가유공자.<br/>국가보훈처 발행 상이군경 회원증 및 <br/>상이등급이 명기된 국가유공자 또는<br/>5.18민주유공자증 </td>
								
							</tr>
							
							<tr>
								<td rowspan=4>국가유공상이자 동반자</td>
								<td >국가유공상이자 1~3급<br/>동반 보호자 1인</td>
								<td rowspan=4>50%</td>
								<td rowspan=4>신분증</td>
								<td>공항이용료 50% 할인</td>	
							</tr>
							<tr>
								<td>국가유공상이자 4급 동반 보호자 1인<br/></td>
								<td>-</td>
							</tr>
							<tr>
								<td>5.18민주유공부상자 1~4급<br/>동반 보호자 1인</td>
								<td>-</td>
							</tr>
							<tr>
								<td>동반 소아 1인<td/>
							</tr>
							
							<tr>
								<td>독립유공자</td>
								<td>독립 유공자</td>
								<td>50%</td>
								<td>독립유공자증</td>
								<td>-</td>
							</tr>
							<tr>
								<td>독립유공자 유족</td>
								<td>독립유공자 유족  수권자</td>
								<td>30%</td>
								<td>독립유공자증</td>
								<td>-</td>
							</tr>
							
						</table>
						
						<h4>제주도민</h4><br/><br/>
						<table class="contentTable">
							<tr>
								<td>대상</td>
								<td>조건</td>
								<td>정상운임 할인률</td>
								<td>증빙 서류</td>
								<td>비고</td>							
							</tr>
								
							<tr>
								<td>제주도민<br/>(재외 제주도민 포함)</td>
								<td>제주도민<br/>(제주도 거주자)
								<td>10%</td>
								<td>주민등록증, 운전면허증 등<br/>(현 주소가 제주도로 명시)</td>
								<td>제주 출/도착 노선에 한정</td>	
							</tr>
							
							<tr>
								<td>제주명예도민</td>
								<td>제주명예도민,<br/>제주명예도민 배우자</td>
								<td>10%</td>
								<td>제주도지사가 발급한 명예도민증<br/>소지자<br/>제주 명예도민 배우자증 소지자</td>
								<td>제주 출/도착 노선에 한정<br/>주중운임만 적용<br/>(주말,성수기 불가)</td>
							</tr>						
							
						</table><br/>
						
						<div class="caution">
						<h4>안내사항</h4><br/><br/>
						<ul>
							<li>서울 ↔왕복 부산, 대구, 울산 노선은 에어부산 공동운항편이며, 제주 ↔왕복 부산, 대구, 서울 노선은 에어부산 공동운항편과 가자항공 단독운항편이 있습니다.</li>
							<li>에어부산(BX) 공동운항에 대한 상세내용 및 할인율은 에어부산 홈페이지에서 확인하십시오.</li>
							<li>인천 ↔왕복 부산 노선은 국제선 환승 전용 내항기로 국제선으로 24시간 이내 국내선으로 환승하는 고객에 한해 이용가능합니다.</li>
							<li>상세 할인율은 항공권 예매 시 확인하십시오. <a href="#">국내선 예매</a></li>
							<li>유류할증료는 항공권 구매 시점에 따라 변경될 수 있으며, 할인운임 및 초특가운임은 예매 단계에서 확인하실 수 있습니다. <a href="#">유류할증료 안내</a></li>
						</ul>
					</div>
					
					</div>
					
					
					
				<!-- 국제선 -->
				<div id="out" class="onContent">
					이미지 추가<br/>
					<h4>국제선 일반운임</h4><br/><br/>
					국제선 일반 운임표 금액은 고객 참고용으로 사전 고지 없이 변동될 수 있습니다.<br/>
					여행 시 부과될 수 있는 초과 수하물 요금에 대해 참고하시기 바랍니다.
				
					<div class="caution">
					<h4>안내사항</h4><br/><br/>
					<ul>
						<li>유류할증료 변경 또는 환율의 영향으로 항공권 금액은 출발 및 발권일에 따라 변동 가능하오니 예매 시 확인하여 주시기 바랍니다.</li>
						<li>운임표 금액은 사전고지 없이 변경될 수 있습니다.</li>
						<li>항공권의 운임 및 규정, 기타 자세한 내용은 항공권 구입처 또는 아시아나항공(1588-8000/02-2669-8000)에 문의하여 주시기 바랍니다.</li>
						
					</ul>
						
					</div>
				
				
				
				</div>
						
			
		</div>
	<%@ include file="../../common/footer.jspf" %>
</body>
</html>