<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기내식</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../../HTML/not_using/main.js"></script>
<style>
.line{
	border:1px solid black;
	margin:15px 0 15px 0;
	border:none;
	height:1px;
}
table {
	width: 100%;
	height: 100px;
	text-align: center;
	color: black;
	font-size: 17px;
	border-collapse: collapse;
}

table td {
	border: 1px solid black;
}
hr {
	margin:15px 0 15px 0;
	height: 1px;
	border: none;
	background-color: #aaa;
	margin-bottom: 20px;
	border:none;
	height:1px;
}

h4 {
	float: left;
	font-weight: bold;
	color: black;
	margin: 5px 0 30px;
	font-size:28px;
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
.foodHeight{
	height:200px;
}
.foodTop>ul>li{
	list-style-type:none;
}
.airlineFood{
	width:50%;
	list-style-type:none;
	margin-bottom:10px;
	float:left;
}
.foodContent{
	width:50%;
}
#caution{
	background:#f7f7f7;
	height:200px;
}
.subTitle{
	font-size:20px;
	margin-bottom:5px;
}
li{
	margin-bottom:10px;
}

</style>
<script>

	function start() {
		//탭메뉴
		var btnIdList = [ 'businessAll', 'economyAll','specialAll' ];
		var paneIdList = [ 'business', 'economy','special' ];
		var btnList = [ '비즈니스', '이코노미','특별 기내식' ];
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
		document.getElementById("businessAll").click();
		
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
				<h3>기내식 / 음료</h3>
			</section>
			<section id="online">
				<div id="checkBtn"></div>
				<div id="tabPanel" >
					<div id="business" class='onContent'>
						<!-- 비즈니스 클래스 기내식 -->
						<div class="foodTop" style="height:150px;">
							<ul>
								<li>· 한국 전통 음식의 맥을 이어가고 있는 궁중음식 연구원과 국내 이탈리아 음식의 선두 주자 라쿠치나와 제휴를 통해 격조 높은 기내식 메뉴를 준비하였으며<br/>엄선된 최상급 와인과 친환경 커피, 에스프레소 등 다양한 음료를 즐기실 수 있습니다. 
							</ul><br/>
							<h4>기내식 서비스</h4>
						</div><br/><br/>
						<hr/>
						<div>
							<div class="foodHeight">
								<ul>
									<li class="airlineFood"><img src="../../../IMG/service/food.jpg"></li>
									<li class="airlineFood"><h4><font style="color:#ab7d55"/>최상급 재료와 고급스러운  식사 서비스</font></h4></li>
									<li class="airlineFood">한식 메뉴 뿐만 아니라 고품격 서양식 메뉴로 격조 높은 서비스를 받으실 수 있습니다.<br/> 계절별 신선한 소재의 풍미를 한껏 발휘한 특선 요리를 장거리구간에서<br/>즐기시기 바랍니다.</li>
								</ul>
							</div><br/><br/><br/><br/><br/><br/><br/><br/>
							
							<div>
							<hr/>
							<h4>음료 서비스</h4><br/><br/><br/><br/>
							<div class="foodHeight">
								<ul>
									<li class="airlineFood"><img src="../../../IMG/service/wine.jpg"/></li>
									<li class="airlineFood"><h4><font style="color:#ab7d55"/>와인</font></h4></li>
									<li class="airlineFood">세계 Top 소믈리에(Sommelier)들이 직접 선정한 기내식에 어울리는 와인들을 서비스하고 있습니다. 최고급 샴페인을 포함한 다양한 레드, 화이트 와인, 각종 디저트와인까지 기내식 코스별 다양한 와인을 선택하여 드실 수 있습니다.와인 외에도 위스키, 진,<br/> 보드카, 꼬냑 등의 다양한 주류와 칵테일이 준비되어있습니다. </li>
								</ul>
							</div><br/><br/><br/><br/><br/><br/><br/><br/>
							</div>
							
							<div>
							<hr/>
							<div class="foodHeight">
								<ul>
									<li class="airlineFood"><img src="../../../IMG/service/coffee.jpg"/></li>
									<li class="airlineFood"><h4><font style="color:#ab7d55"/>고급 커피</font></h4></li>
									<li class="airlineFood">세계적으로 인정받은 바리스타 조현준이 선별한 2019 최고의 품종 게이샤 커피를 제공합니다.</li>
								</ul>
							</div><br/><br/><br/><br/><br/><br/><br/><br/>
							</div>
							
							<div>
							<hr/>
							<div class="foodHeight">
								<ul>
									<li class="airlineFood"><img src="../../../IMG/service/tea.jpg"/></li>
									<li class="airlineFood"><h4><font style="color:#ab7d55"/>고품격 차</font></h4></li>
									<li class="airlineFood">고급스러운 Wooden Tea Box에 각종 Tea를 구성하여 품격 높은 Tea 서비스를 제공해 드리고 있습니다. 녹차와 홍차 및 허브차를 즐기시면서 편안하고여유로운 항공 여행을<br/> 즐기시기 바랍니다. </li>
								</ul>
							</div><br/><br/><br/><br/><br/><br/><br/><br/>
							</div>
						</div>			
					</div>	
						<!-- 이코노미 클래스 기내식 -->
					<div id="economy" class='onContent'>
						<div class="foodTop" style="height:150px;">
							<ul>
								<li>· 이코노미 클래스에서는 ITCA (국제기내식협회) 주관 '2006 머큐리상' 최우수상 금상에 빛나는 &lt;영양쌈밥&gt;을 비롯하여 다양한 한식
									메뉴 뿐
									아니라 취항지의 특성을 살린 <br/>다채로운 기내식 메뉴를 해당 구간에 따라 즐기실 수 있습니다.</li>
							</ul><br/>
							<h4>기내식 서비스</h4>
						</div><br/><br/>
						<hr/>
						<div>
							<div class="foodHeight">
								<ul>
									<li class="airlineFood"><img src="../../../IMG/service/efood.png"></li>
									<li class="airlineFood"><h4><font style="color:#ab7d55"/>ITCA(국제기내식협회)주관 ‘머큐리 상’<br/> 수상한 [영양쌈밥]</font></h4></li>
									<li class="airlineFood">맛과 건강을 동시에 충족시키는 전통 음식이자 건강식(Well-Being Food)으로신선하고 다양한 쌈용 야채와 여러가지 견과류로 맛을 낸 쌈장을 곁들인 한상 차림으로<br/> 서울 출발 장거리 노선에서 제공하고 있습니다. </li>
								</ul>
							</div><br/><br/><br/><br/><br/><br/><br/><br/>
							<div>
								<ul>
									<li class="airlineFood"><img src="../../../IMG/service/efood2.png"></li>
									<li class="airlineFood"><h4><font style="color:#ab7d55"/>따뜻하고 트렌디한 기내식 [트래블 밀 : Travel meal]</font></h4></li>
									<li class="airlineFood">중국, 일본, 아시아 일부 노선에서는 트렌드에 맞춰 다양한 메뉴의 따뜻한간편식 메뉴인 트래블 밀을 제공하고 있습니다.(2016년 7월부) 해당 구간에서는음료 및 주류 서비스가 제한될 수 있습니다.  </li>
								</ul>
							</div><br/><br/><br/><br/><br/><br/><br/><br/><br/>
							
							<div><br/><br/><br/><br/><br/><br/><br/><br/>
							<hr/>
							<h4>음료 서비스</h4><br/><br/><br/><br/>
							<div class="foodHeight">
								<ul>
									<li class="airlineFood"><img src="../../../IMG/service/wine.jpg"/></li>
									<li class="airlineFood"><h4><font style="color:#ab7d55"/>와인</font></h4></li>
									<li class="airlineFood">이코노미 클래스의 와인은 가장 많은 고객이 시음하시는 만큼 대중적으로 선호하는 맛의 와인을 소믈리에가 선정하여 서비스하고 있습니다.프랑스, 칠레, 스페인, 남아공 등<br/> 다양한 산지의 와인이 구간에 따라 제공됩니다. </li>
								</ul>
							</div><br/><br/><br/><br/><br/><br/><br/><br/>
							</div>
							
							<div id="caution">
								<div><h4 style="margin:20px 0 0 20px;">개인 휴대 음식 취식 안내</h4></div><br/><br/><br/><br/>
								<div style="margin-left:20px;">
								<ul style="list-style-type:none;">
								<li>· 반찬류, 일부 간식류를 비롯한 개인 휴대 음식 취식 시 냄새, 소음 등으로 인하여 주변 손님에게 불편을 끼칠 수 있는 경우, 승무원의 안내에 따라 기내 취식이 <br/>&nbsp;제한 될 수 있습니다. 쾌적한 항공 여행을 위해 손님 여러분의 협조를 부탁드립니다</li>
								<li>· 유아용 분유를 위한 뜨거운 물은 요청 시 기내에서 서비스됩니다.
								</ul>
							</div>	
						</div>
					</div>						
				</div> 
				<!-- 특별기내식 안내 -->
							<div id="special" class='onContent'>
							<div>
								<div><h4>신청방법</h4><br/><br/><br/><br/>
								<ul style="list-style-type:none;">
									<li>· 특별 기내식 예약주문 : 가자항공 예약센터 </li>
									<li>· 특별 기내식은 기내식 제공 구간만 가능하며, 항공기 출발 24시간 전까지 주문 가능합니다.</li>
									<li>· 해외 출발편의 경우 현지 사정에 따라 주문이 가능하오니 양해 바랍니다.</li>
									<li>· 특별기내식 신청 고객은 업그레이드 스텐바이 신청 대상에서 제외됩니다.</li>
								</ul>
								</div>
							</div>
							
							<div>
							<div><h4>땅콩 알레르기</h4></div><br/><br/><br/><br/>
							<div><h5 class="subTitle">기내식 및 기내환경</h5></div>
							<ul style="list-style-type:none;">
									<li>· 기내식에 땅콩을 사용하지 않더라도 식품조리 시 땅콩기름이나 그 유사 성분이 함유된 식재료가 사용될 수 있습니다.</li>
									<li>· 기내 환경의 특수성으로 인하여 비행 시 다른 손님의 땅콩 소지 및 취식을 금지하기 어렵습니다. </li>
									<li>· 땅콩 성분이 항공기 통로나 좌석 또는 기내에 남아 있을 가능성도 있음을 양해하여 주시기 바랍니다..</li>
								</ul>
								<div><h5 class="subTitle">여행 시 주의사항</h5></div>
									<ul style="list-style-type:none; margin-bottom:5px;">
									<li>· 여행이 적합한지 의사와 충분히 상의해 주시기 바랍니다. </li>
									<li>· 여행 동반자는 유사 시 응급처치법을 실시하실 수 있어야 하며,동반자 없이 여행하신 경우 의사가 처방한 응급처치법을 직접 실시하실 수 있도록 준비해 주시기 바랍니다. </li>
									<li>· 항공편 예약하실 때는 직원에게 땅콩 알레르기가 있음을 알려 주시고, 탑승 수속 시 소정의 양식을 작성해 주시기 바랍니다.</li>
								</ul>
							</div>
							<div>
							<h4>특별 기내식 종류</h4>
							<!-- 종교식 -->
							<div>
							<table>
							<thead>
								<tr>
									<td style="background-color:#f0f0f0; font-weight:bold;">구분</td>
									<td style="background-color:#f0f0f0; font-weight:bold;" colspan="4">종교식</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>회교도식<br/>(Moslem Meal)</td>
									<td>회교율법에 따라 준비되는 음식으로 돼지고기 및 알콜류를 사용하지 않습니다.</td>	
								</tr>
								<tr>
									<td>힌두식<br/>(Hindu Meal)</td>
									<td>쇠고기와 돼지고기를 사용하지 않은 힌두교의 관례, 힌두의 식사법, 믿음에 따라 준비된 요리입니다.</td>
								</tr>
								<tr>
									<td>유대교식<br/>(Kosher Meal)</td>
									<td>유대교 율법에 따라 고유의 전통 의식을 치른 후 만들어진 음식으로 완제품으로 서비스됩니다.</td>
								</tr>
								<tr>
									<td>자이나교도식 채식<br/>(Vegetarian Jain Meal)</td>
									<td>인도 스타일의 자이나교 관례를 따라 과일과 채소, 두부 등을 사용해 준비한 요리입니다.</td>
								</tr>
								<tr>
									<td>아시아/힌두식 채식<br/>(Asian/HinduVegetarian Meal)</td>
									<td>유제품을 제한적으로 사용한 조미된 채식주의자 요리입니다.</td>
								</tr>
							</tbody>
						</table>
						<hr class="line"/>
							</div>
							<!-- 채식/과일식 -->
							<div>
							<table>
							<thead>
								<tr>
									<td style="background-color:#f0f0f0; font-weight:bold;">구분</td>
									<td style="background-color:#f0f0f0; font-weight:bold;" colspan="4">채식/과일식</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>순수 채식<br/>(VeganVegetarian Meal)</td>
									<td>육류 뿐 아니라 유제품, 달걀, 꿀 등을 사용하지 않은 엄격한 채소 요리입니다.</td>	
								</tr>
								<tr>
									<td>유제품을 곁들인 채식<br/>(VegetarianLacto-ovo Meal)</td>
									<td>육류, 생선류 등은 사용하지 않으며 계란, 유제품은 허용되어 조리합니다.</td>
								</tr>
								<tr>
									<td>동양식 채식<br/>(VegetarianOriental Meal)</td>
									<td>중국 스타일로 준비한 채소 요리로 육류, 가금류, 달걀, 뿌리 또는 구근 채소 및 유제품을 사용하지 않은 요리입니다.</td>
								</tr>
								<tr>
									<td>과일식<br/>(Fruit Platter Meal)</td>
									<td>첨가제나 방부제가 없는 음식을 먹기를 원하시는 분을 위한 식사입니다.</td>
								</tr>
								<tr>
									<td>생채소식<br/>(Raw Vegetarian Meal)</td>
									<td>채소식 중에서도 조리하지 않은 생채소와 생과일을 서비스 해드리는 메뉴입니다.</td>
								</tr>
							</tbody>
						</table>
						<hr class="line"/>
							</div>
							<!-- 식이요법식 -->
							<div>
							<table>
							<thead>
								<tr>
									<td style="background-color:#f0f0f0; font-weight:bold;">구분</td>
									<td style="background-color:#f0f0f0; font-weight:bold;" colspan="4">식이요법식</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>연식<br/>(Bland Meal)</td>
									<td>소화기 질환이 있으시거나 위 계통의 수술 후 드실 수 있는 소화하기 쉬운, 가벼운 식사입니다.저지방 음식(지방 적은 고기, 닭고기)과 위에 부담이 적은 섬유질과 부드러운 양념을 사용합니다.</td>	
								</tr>
								<tr>
									<td>당뇨식<br/>(Diabetic Meal)</td>
									<td>당뇨병이 있으시거나 포도당 알러지가 있으신 분을 위한 식사입니다.완전 소맥분의 빵, 곡물, 신선한 과일, 채소를 사용하여 조리하며, 설탕과 꿀을 포함한 음식은 사용하지 않습니다.</td>
								</tr>
								<tr>
									<td>저지방/콜레스테롤 식<br/>(Low Fat Meal)</td>
									<td>심장병이나 지방간 등의 질환이 있으신 분들을 위한 식사입니다.신선한 채소, 과일, 시리얼 등 고섬유질 제품을 사용하고 찌거나 삶는 조리법을 이용합니다.</td>
								</tr>
								<tr>
									<td>저열량식<br/>(Low Calorie Meal)</td>
									<td>비만, 체중과다인 분을 위한 식사입니다.저지방고기, 유제품을 사용하며 신선한 과일, 채소, 시리얼 등 고섬유질 음식을 사용합니다.</td>
								</tr>
								<tr>
									<td>저염식(Low Sodium Meal)</td>
									<td>고혈압, 간질환, 신장병이 있으신 분을 위한 식사입니다.소금, 고기육수, 가공스프, 케찹 등의 향신료를 피하고 신선한 과일, 채소, 저염 음식재료를 사용하여 조리합니다.</td>
								</tr>
								<tr>
									<td>유당 제한식<br/>(No Lactose Meal)</td>
									<td>유당 알레르기가 있으신 분들을 위한 식사입니다.두유, 코코넛우유를 사용하고 신선한 과일, 채소, 고기, 가금류를 사용하여 조리합니다.</td>
								</tr>
								<tr>
									<td>글루텐 제한식<br/>(Gluten-free Meal)</td>
									<td>글루텐에 대한 장 질환이 있으시거나 밀(소맥분)에 대한 알러지가 있으신 분들을 위한 식사입니다.밀이 아닌 감자, 쌀, 콩 등에서 만들어진 전분을 사용하며 채소, 과일, 계란, 고기, 생선 등을 사용하여 조리합니다.</td>
								</tr>
							</tbody>
						</table>
						<hr class="line"/>
							</div>
							<!-- 유아식 및 어린이식 -->
							<div>
							<table>
							<thead>
								<tr>
									<td style="background-color:#f0f0f0; font-weight:bold;">구분</td>
									<td style="background-color:#f0f0f0; font-weight:bold;" colspan="4">유아식 및 어린이식</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>유아식<br/>(Baby Meal)</td>
									<td>2세미만 영유아를 위한 서비스로, 유아식이 제공됩니다.</td>	
								</tr>
								<tr>
									<td>유아식<br/>(Toddler Meal)</td>
									<td>서울 출발편에 한해, 2세미만 영유아에게 영양가 있는 진밥 메뉴가 제공됩니다.단, 일부 단거리 구간의 경우 간단한 영유아용 간식이 제공됩니다. </td>
								</tr>
								<tr>
									<td>유아용 어린이식(Child Meal for Infant)</td>
									<td>어린이식 취식이 가능한 2세 미만 영유아를 위한 식사로 준비된 어린이식 기본 메뉴가 제공됩니다.</td>
								</tr>
								<tr>
									<td>어린이식<br/>(Child Meal)</td>
									<td>12세 이하의 어린이 손님을 위한 서비스로, 서울 출발편에서는 총 4가지 메뉴(떡갈비와 맛밥, 치킨너겟과 새우볶음밥, 오므라이스와 소시지, 미트볼과 파스타) 중 한가지를 선택하실 수 있으며, 일부 단거리 구간은 샌드위치 1종만 제공됩니다.<br/>부산발 및 해외 출발편에서는 준비된 어린이식 기본 메뉴가 제공됩니다. </td>
								</tr>
							</tbody>
						</table>
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