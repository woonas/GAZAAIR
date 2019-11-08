<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 안내</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../../HTML/not_using/main.js"></script>
<style>
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
	width: 33.3%;
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
.imgli{
	list-style-type:none;
	float:left;
	margin-right:20px;
}
.atag{
	color:#ab7d55;
}
.foodHeight{
	margin-top:15px;
	height:200px;
}
#foodTop>ul>li{
	list-style-type:none;
}
.airlineFood{
	width:50%;
	list-style-type:none;
	margin-bottom:10px;
	float:left;
}
#caution{
	background:#f7f7f7;
	height:150px;
}
.caution{
	list-style-type:none;
	margin-left:15px;
	margin-top:5px;
	font-size:18px;
}
.service{
	list-style-type:none;
	margin:10px 0 10px 0;
}
h5{
	font-size:15px;
}
</style>
<script>
	function start() {
		//탭메뉴
		var btnIdList = [ 'firstAll', 'businessAll','economyAll' ];
		var paneIdList = [ 'first', 'business','economy' ];
		var btnList = [ '퍼스트', '비즈니스','이코노미'];
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
		document.getElementById("firstAll").click();
		
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
				<h3>클래스별 안내</h3>
			</section>
			<section id="online">
				<div id="checkBtn"></div>
				<div id="tabPanel" >
				<!-- 퍼스트 클래스  -->
					<div id="first" class='onContent'>
					<h4>기내 서비스</h4><br/><br/>기내식
					<div>
						<ul>
							<li class="imgli"><img src="../../../IMG/service/ffood.jpg"/></li>
							<li class="imgli"><img src="../../../IMG/service/ffood2.jpg"/></li>
						</ul><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>				
					</div>
					<div style="margin:15px 0 15px 0;">한식 서비스를 위해 국내 및 해외 출발편에서도 비빔밥 등의 한식 메뉴를 서비스 하고 있습니다.<a href="service_airline_food.html" class="atag">기내식 서비스</a></div>
					<div>
						<ul>
							<li class="imgli"><img src="../../../IMG/service/wine.jpg"/></li>
							<li class="imgli"><img src="../../../IMG/service/coffee.jpg"/></li>
						</ul><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>				
					</div>
					<div style="margin:15px 0 15px 0;">세계 Top 소믈리에가 직접 선정한 기내식에 어울리는 와인을 서비스 하고 있습니다. 식사 후 디저트, 고품격 게이샤 커피를 즐기실 수 있습니다.</div><br/><br/><br/>
					
					
					<h4>서비스 용품</h4><br/><br/>
					<hr/>
					<div class="foodHeight">
								<ul>
									<li class="airlineFood"><img src="../../../IMG/service/bed.png"/></li>
									<li class="airlineFood">가자항공이 고객님만을 위해 특별히 준비한 최고의 서비스를 통해 편안하고 품격 높은 <br/>항공 여행을 즐기시기 바랍니다</li>
									<li class="airlineFood">- Duck Down 을 넣어 만든 가볍고 따듯한 침구세트</li>
									<li class="airlineFood">- 명품브랜드 코스메틱과 다양한 편의용품으로 구성된 Traveler's Kit </li>
									<li class="airlineFood">- 화장실 내 고급 코스메틱 구비 </li>
									<li class="airlineFood">- 최고 품질의 Noise Canceling 헤드폰 </li>
									<li class="airlineFood">- 슬리퍼, 필기도구, 편지지 세트, 간단한 의약품 구비 </li>									
								</ul>
							</div><br/><br/><br/><br/><br/><br/><br/><br/>
							
					<h4>엔터테인먼트</h4><br/><br/>
					<hr/>
					<div class="foodHeight">
								<ul>
									<li class="airlineFood"><img src="../../../IMG/service/ent.png"/></li>
									<li class="airlineFood">지상에서는 누릴 수 없었던 여유를 여행을 통해 즐기시기 바랍니다.</li>
									<li class="airlineFood">- 최신영화, 음악, 게임, 다큐멘터리 등 콘텐츠 제공 </li>									
								</ul>
							</div><br/><br/><br/><br/><br/><br/><br/><br/>
							<hr/>
							
					<h4>지상 서비스</h4><br/><br/>예약 서비스
					<div class="foodHeight">
								<ul>
									<li class="airlineFood"><img src="../../../IMG/service/res.png"/></li>
									<li class="airlineFood"><h4 style="color:#ab7d55">사전 좌석 배정 서비스</h4></li>
									<li class="airlineFood">고객님의 전담 예약을 도우며, 원하시는 좌석으로 우선 배정해드립니다. </li>									
								</ul>
							</div><br/><br/><br/><br/><br/><br/><br/><br/>
							<hr/>
							
							<div class="foodHeight">
								<ul>
									<li class="airlineFood"><img src="../../../IMG/service/info.png"/></li>
									<li class="airlineFood"><h4 style="color:#ab7d55">다양한 항공여행 정보 안내</h4></li>
									<li class="airlineFood">항공기 기종이나 좌석, 기내서비스 등 항공 여행 관련 문의사항에 대해 상세히 안내해 드리며, 고객님이 원하실 경우 도착지 및 공항정보가 담긴 여행안내서를 이메일로 보내드립니다.</li>									
								</ul>
							</div><br/><br/><br/><br/><br/><br/><br/><br/>
							
							<h4>Premium Service Center (비즈니스 스위트 전담 예약)</h4><br/><br/>
							<div id="caution">
								<ul>
									<li class="caution">· 한국지역 : 02-0000-0000</li>
									<li class="caution">· 한국지역 운영시간 : 월~목 8:00~18:00, 금요일 8:00~17:00, (토/일 휴무)</li>
									<li class="caution">· 미주 : (1)-000-000-0000</li>
									<li class="caution">· 중국 : (86)-000-000-0000</li>
									<li class="caution">· 일본 : (81)-0-0000-0000</li>
								</ul>
							</div>
				</div>

				<!-- 비즈니스 클래스 -->
				<div id="business" class='onContent'>
					<h4>기내 서비스</h4><br/><br/>기내식
					<div>
						<ul>
							<li class="imgli"><img src="../../../IMG/service/ffood.jpg"/></li>
							<li class="imgli"><img src="../../../IMG/service/ffood2.jpg"/></li>
						</ul><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>				
					</div>
					<div style="margin:15px 0 15px 0;">한식 서비스를 위해 국내 및 해외 출발편에서도 비빔밥 등의 한식 메뉴를 서비스 하고 있습니다.<a href="service_airline_food.html" class="atag">기내식 서비스</a></div>
					<div>
						<ul>
							<li class="imgli"><img src="../../../IMG/service/wine.jpg"/></li>
							<li class="imgli"><img src="../../../IMG/service/coffee.jpg"/></li>
						</ul><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>				
					</div>
					<div style="margin:15px 0 15px 0;">세계 Top 소믈리에가 직접 선정한 기내식에 어울리는 와인을 서비스 하고 있습니다. 식사 후 디저트, 고품격 게이샤 커피를 즐기실 수 있습니다.</div><br/><br/><br/>
					<h4>서비스 용품</h4><br/><br/>
					<h5>미국, 유럽, 호주 노선</h5>
					<ul>
						<li class="service">- 가볍고 따뜻한 침구세트</li>
						<li class="service">-명품브랜드 코스메틱과 다양한 편의용품으로 구성된 Traveler'kit</li>
					</ul>
					<h5>모든노선</h5>
					<ul>
						<li class="service">-화장실 내 고급 코스메틱 구비</li>
						<li class="service">-슬리퍼, 필기도구, 편지지 세트, 간단한 의약품 구비</li>
					</ul><br/>
					
					<h4>엔터테인먼트</h4><br/><br/>
					지상에서는 누릴 수 없었던 여유를 여행을 통해 즐기시기 바랍니다. <br/>
					<ul>
						<li class="service">- 최신영화, 음악, 게임, 다큐멘터리 등 콘텐츠 제공</li>
					</ul>
				</div>
			
				<!-- 이코노미 클래스 -->
				<div id="economy" class='onContent'>
					<h4>기내식</h4><br/><br/><hr/><br/><br/>
					<div>
					<ul>
						<li class="airlineFood"><img src="../../../IMG/service/efood.png"></li>

						<li class="airlineFood">당사 일반석 기내식은 차별된 맛과 우수한 품질을 인정받았습니다.<br/>한식 메뉴로는 &lt;영양쌈밥&gt;과&lt;비빔밥&gt;이있으며 그
												 외 다양한 한식을 구간에 따라 즐기실 수 있습니다. <a href="service_airline_food.html" class="atag">기내식 서비스</a></li>

					</ul><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
					</div>
					
					
					<h4>엔터테인먼트</h4><br/><br/><hr/><br/><br/>
					<div>
					<ul>
						<li class="airlineFood"><img src="../../../IMG/service/ent2.png"></li>
						<li class="airlineFood">지상에서는 누릴 수 없었던 여유를 여행을 통해 즐기시기 바랍니다.</li>
						<li class="airlineFood">- 최신영화, 음악, 게임, 다큐멘터리 등 콘텐츠 제공</li>
					</ul><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
					</div>
					
					<h4>서비스 용품</h4><br/><br/>
					<h5>국제선</h5>
					<ul>
						<li class="service">- 미주, 유럽, 호주 노선에는 슬리퍼와 칫솔세트로 구성된 파우치를 제공해 드립니다.</li>
						<li class="service">- 안대, 귀마개, 필기도구, 편지지 세트, 간단한 의약품이 상시 준비되어 있습니다.</li>
					</ul>
					<h5>국내선</h5>
					<ul>
						<li class="service">- 필기도구, 엽서, 간단한 의약품이 준비되어 있습니다.</li>
					</ul><br/>
					
					<h4>유료부가 서비스</h4><br/><br/>
					<div><img src="../../../IMG/service/tel.png" style="width:100%;"/></div>

					
				</div>
				
				</div>
			</section>
		</div>
 		
	</div>
	<%@ include file="../../common/footer.jspf" %>
</body>
</html>