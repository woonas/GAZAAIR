<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 상세 페이지</title>
<link rel="stylesheet" href="../../CSS/navNfooter.css" type="text/css" />
<link rel="stylesheet" href="../../HTML/not_using/reserveStatus.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../HTML/not_using/main.js"></script>
<script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
<script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
</head>
<body onresize="resizeModal()">
<%@ include file="../common/nav.jspf" %>
<!-- Todo 기내식,좌석,클래스 -->
	<div class="overlay"></div>
	<section class="content">
		<div id="all">
			<div>
				<h3>예약 현황 상세 페이지</h3>
			</div>
            
            <p class="section-title">여정</p>
        <div class="trip-table table-form3">
            <div class="row clearfix table-row-title">
                <div class="col-eighth">여정</div>
                <div class="col-three-eighth">출도착시간</div>
                <div class="col-eighth">편명/기종</div>
                <div class="col-eighth">운임할인</div>
                <div class="col-eighth">상태</div>
                <div class="col-eighth">환불</div>
            </div>
            <div class="row clearfix">
                <div class="col-eighth trip-num">
                    <div class="font-brown">01</div>
                    <div>2019.09.14(토)</div>
                </div>
                <div class="col-three-eighth trip-detail">
                    <div class="col-fourth">
                        <div>서울 / 김포</div>
                        <div>06:05</div>
                    </div>
                    <div class="col-two-fourth">
                        <img src = "../../IMG/icon/flight-table.svg" alt = "">
                    </div>
                    <div class="col-fourth">
                        <div>제주</div>
                        <div>07:15</div>
                    </div>
                </div>
                <div class="col-eighth trip-airline"><div>OZ8901</div></div>
                <div class="col-eighth trip-type"><div>정상운임</div></div>
                <div class="col-eighth trip-refund">
                    <div class="O"></div>
                    수수료없음
                </div>
                <div class="col-eighth">
                    <div><input type="button" value="환불" class="blueBtn" id="returnBtn" /></div>
                  </div>
            </div>
        </div>
            <p class="flight-confirm-section-title">가격</p>
        <div class="flight-confirm-section">
            <div class="bag-content table-form3">
                <div class="row clearfix table-row-title">
                    <div class="col-two-fourth">여정</div>
                    <div class="col-fourth">구분</div>
                    <div class="col-fourth">금액 <span class="currency">(KRW)</span></div>
                </div>
                <div class="row clearfix">
                    <div class="col-two-fourth trip">
                        <div class="col-tenth" style="text-align: left; margin-left: -20px; line-height: 222px">
                            <i class="fas fa-plane-departure"></i>
                        </div>
                        <div class="col-fourth">
                            <div class="airport-name">서울/김포</div>
                            <div class="flight-date">2019.09.14(토)</div>
                            <div class="flight-time">06:05</div>
                        </div>
                        <div class="col-two-fifth">
                            <div class="flight-image">
                                <img src = "../../IMG/icon/flight-table.svg" alt = "">
                            </div>
                        </div>
                        <div class="col-fourth">
                            <div class="airport-name">제주</div>
                            <div class="flight-date">2019.09.14(토)</div>
                            <div class="flight-time">07:15</div>
                        </div>
                    </div>
                    <div class="col-fourth detailed-price">
                        <div>항공권 운임</div>
                        <div>세금 및 제반요금</div>
                        <div>유류할증료</div>
                        <div>구간별 개인할인</div>
                        <div>승객</div>
                        <div>합계</div>
                    </div>
                    <div class="col-fourth detailed-price">
                        <div>120,000</div>
                        <div>4,000</div>
                        <div>5,500</div>
                        <div>-</div>
                        <div>성인 1</div>
                        <div>129,500</div>
                    </div>
                </div>
            </div>
            <ul class="list-type2">
                <li>무료 수하물 허용량을 초과하는 경우 추가 수하물 요금이 부과될 수 있습니다.<a href="service_baggage.html" class="font-brown"> 수하물 안내</a></li>
                <li class="font-brown">타항공사 연결 시나 공동운항의 경우 운항항공사 자체 수하물 규정이 적용 될 수 있으므로 사전에 확인하여 주시기 바랍니다.</li>
            </ul>
        </div>
        
        
			
			<p class="flight-confirm-section-title">탑승자 정보</p>
			<div id="passengerAllDiv">
				<div id="passengerArticle">
					<div class="article">성별 *</div>
					<div class="article">이름 *</div>
					<div class="article">생년월일 *</div>
					<div id="articleNo">
						회원번호<br />(탑승객)
					</div>
				</div>
				<div id="passengerArticleContent">
					<div class="articleContent">
						<div id="genderRadio">
							<input type="radio" class="radio3" name="gender" value="M"
                                   id="male" checked /><label for="male">남자</label>
							&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" class="radio3"
                                                            name="gender" value="W" id="female" /><label for="female">여자</label>
						</div>
					</div>
					<div class="articleContent">
						<div id="firstNameText">
							<input type="text" name="firstName" placeholder="성(신분증 언어)"
                                   id="firstName" />
						</div>
						<div id="lastNameText">
							<input type="text" name="lastName" placeholder="이름(신분증 언어)"
                                   id="lastName" />
						</div>
					</div>
					<div class="articleContent">
						<div class="listDiv">
							<select name="year" class="list">
								<option value="not">년</option>
								<option value="nYear">1900 년</option>
							</select>
						</div>
						<div class="listDiv">
							<select name="month" class="list">
								<option value="not">월</option>
								<option value="nMonth">1 월</option>
							</select>
						</div>
						<div class="listDiv">
							<select name="day" class="list">
								<option value="not">일</option>
								<option value="nDay">1 일</option>
							</select>
						</div>
					</div>
					<div class="articleContent">
						<div id="memberNo">
							<input type="text" name="memberNo" value="" id="memberNoText" />
						</div>
					</div>
				</div>
			</div>
			<div id="detailPage">
				<div>
					<h3 style="color: white">예약 현황 상세 페이지</h3>
				</div>
				<div id="seatSelectAll">
					<div class="seatSelectText">좌석 선택</div>
					<div id="seatImgDiv"></div>
					<div class="border-bt">
						<div class="seatInfo">클릭하시면 좌석 선택 하실 수 있습니다.<br/>
											회색으로 표시된 자석은 이미 예약된 자석이며 클릭하여 나오는 빨간색 좌석이<br/>
											좌석으로 선택 됩니다.
						</div>
						<input type="button" value="Select Seats" name="SelectSeats"
                               id="SelectSeats" class="seatsButton" onclick="selectModal()" />
					</div>
				</div>
				<div id="airlineFoodAll">
					<div class="seatSelectText">기내식 선택</div>
					<div id="airlineFoodImgDiv"></div>
					<div class="border-bt">
						<div class="seatInfo">클릭 하시면 기내식 선택 하실 수 있습니다.<br/>
											기내식은 특선 요리, 일품 요리, 샐러드, 간단식으로 구성되어있습니다.<br/>
											음식 하나만 선택 가능합니다.
						</div>
						<input type="button" value="Select Food" name="SelectFood"
                               class="seatsButton" onclick="selectFoodModal()" />
					</div>
				</div>
				<div id="classAll">
					<div class="seatSelectText">클래스 선택</div>
					<div id="classImgDiv"></div>
					<div class="border-bt">
						<div class="seatInfo">클래스 변경 하실 수 있습니다.<br/>
											클래스 변경은 퍼스트, 비즈니스, 이코노미 중 선택 하실 수 있습니다.
						</div>
						<input type="button" value="Select Class" name="SelectClass"
                               class="seatsButton" onclick="selectClassModal()" />
					</div>
				</div>
			</div>
            <!--  --> <!--  -->		<!--  -->
        
        <p class="flight-confirm-section-title">운임 조건 및 규정</p>
        <div id="regulation-1">
            <p><span class="font-blue4">01</span>서울/김포<span>→</span>제주</p>
            <input type="checkbox" class="hidden" id="fold-1" checked>
            <label for="fold-1"><img src = "../../IMG/icon/underArrow.png" alt = ""></label>
            <div>
                <h4>· 운임종류</h4>
                <div>정상운임 (Y)</div>
                
                <h4>· 개인할인</h4>
                <div>가능</div>
                
                <h4>· 소아할인</h4>
                <div>가능</div>
                
                <h4>· 마일리지 적립</h4>
                <div>적립가능(단,장애인소아 등 50%이상 개인할인적용 시 적립 불가)</div>
                
                <h4>· 구매 조건</h4>
                <div>가자에항공 홈페이지(모바일)에서 구매 가능 (예약센터,지점,공항 카운터 불가) <br>
                왕복여정의 경우 최초 발권 시의 여정 순서대로 사용 원칙 <br>
                ※ 첫번째 여정 미사용시 두번째 여정 사용불가</div>
                
                <h4>· 항공권 유효기간</h4>
                <div>발행일로 부터 1년 </div>
                
                <h4>· 여정 변경</h4>
                <div>가능왕복여정 중 사용후 남은 여정 변경 불가 </div>
                
                <h4>· 탑승 후 남은 여정 환불</h4>
                <div>왕복 여정 중 사용하고 남은 여정 환불 가능 </div>
                
                <h4>· 부분 변경</h4>
                <div>홈페이지/모바일에서 2명 이상 동일한 예약 번호로 구매하신 경우 일부 <br>
                 인원만 변경 및 환불 불가(일부 인원 예약 변경 및 환불 원할 경우 예약센터 1588-8000번문의)</div>
                
                <h4>· 부분 환불</h4>
                <div>특가운임이 포함된 왕복 항공권 부분 환불 불가 <br>
                특가운임 포함안된 미사용 항공권 왕복여정의 부분환불 수수료 미징수 (단, 부분환불 후 추가 환불시 미징수 된 환불수수료 소급적용)</div>
                
                <h4>· 환불 수수료</h4>
                <div>편도당 2,000원<br>
                유효기간 만료일 이내 환불가능 <br>
                최초 발행된 항공권 및 각 재발행된 항공권 중 하위클래스 기준의 환불수수료 징수 (계좌이체 결제시 환불 수수료 부과)</div>
                
                <h4>· 예약부도위약금</h4>
                <div>편도당 8,000원</div>
                
                <h4 class="rules_content">· 기타</h4>
                <div>기상이나 항공사 사정으로 결항 시 미 탑승 항공권 자동 환불 불가 <br>
                (홈페이지에서 환불 시 환불 수수료/예약부도위약금 부과,예약센터나 지점,공항 카운터에서 환불 시 환불 수수료/예약부도위약금 면제) </div>
            </div>
        </div>
        
        <div id="modal"></div>
            <!-- 좌석 팝업 -->
			<div id="seatsSelect">
				<div style="overflow: hidden">
					<div id="seatsSelectText">좌석 선택</div>
					<div class="close" onclick="seatsSelcetClose()">X</div>
				</div>
				<div id="seatsBackImg">
					<div id="frontBusi-seat"></div>
					<div id="frontEco-seat"></div>
					<div id="back-seat"></div>
				</div>
			</div>
            <!-- 기내식 팝업 -->
			<div id="foodSelect">
				<div id="foodSelectTitle">
					<h2>기내식 선택</h2>
					<div class="foodClose" onclick="foodSelcetClose()">X</div>
				</div>
				<hr />
				<div class="tab-menu1">
					<ul class="clearfix">
						<li class="col-fourth on" id='tab-1'><a href="#none">특선요리</a></li>
						<li class="col-fourth" id='tab-2'><a href="#none">일품요리</a></li>
						<li class="col-fourth" id='tab-3'><a href="#none">샐러드</a></li>
						<li class="col-fourth" id='tab-4'><a href="#none">간단식</a></li>
					</ul>
				</div>
				<div id="tab-1-container" class="tab-content-container">
					<div id="tab-1-product-1" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/BRML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">시그니처불고기라이스</div>
							<div class="row clearfix food-word">한국을 대표하는 맛있는 불고기 요리를
								따뜻한 밥과 함께 드립니다.</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦15,000 / ￥1,500 / ＄15 / 元90</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">쌀,불고기(쇠고기),표고,피망,브로콜리2종,계란지단(계란,돼지고기,대두,밀),잣,앙금,찹쌀,땅콩,호두(약간의성분함유),대두,밀,배추,새우(젓갈)</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
					<div id="tab-1-product-2" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/QMML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">bbq 치킨강정 (순한맛)</div>
							<div class="row clearfix food-word">부드러운 살코기와 BBQ만의 특제
								강정소스가 곁들여져 남녀노소 누구나 맛있게 드실 수 있습니다. *치킨무 제공</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦10,000 / ￥1,000 / ＄10 / 元60</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포 출발 국제선 (2시간 이상 비행편)</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">닭고기,계란,대두,밀,토마토,쇠고기,아몬드,무우</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
					<div id="tab-1-product-3" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/QSML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">bbq 치킨강정 (매운맛)</div>
							<div class="row clearfix food-word">하늘 위에서 더 맛있는, BBQ만의
								매콤달콤한 특제강정소스로 버무러진 치킨강정 간편식 또는 맥주 안주로도 인기만점 입니다. *치킨무 제공</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦10,000 / ￥1,000 / ＄10 / 元60</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포 출발 국제선 (2시간 이상 비행편)</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">닭고기,계란,대두,밀,토마토,쇠고기,아몬드,무우</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
				</div>
                <!-- lightDeil -->
				<div id="tab-2-container" class="tab-content-container hidden">
					<div id="tab-2-product-1" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/FTML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">유부초밥 & 스프링롤</div>
							<div class="row clearfix food-word">새콤달콤 유부초밥에 베트남 스타일인
								스프링롤을 곁들여서 드립니다.</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦10,000 / ￥1,000 / ＄10 / 元60</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포, 제주 출발 국제선</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">쌀,유부(대두,밀),계란,맛살,단무지,햄,로메인상추,라이스페이퍼,돼지고기,토마토,대두,밀,닭고기,쇠고기,무우,닭고기</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
					<div id="tab-2-product-2" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/CDML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">콜드델리카시</div>
							<div class="row clearfix food-word">이스타항공의 대표적인 일품요리로 많은
								사랑을 받고 있는 메뉴입니다. 샐러드를 곁들인 절인연어, 양배추 쌈요리, 오렌지 아몬드치킨, 과일샐러드, 삼색피망과
								단호박구이, 계란말이로 구성되어 있습니다.</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦12,000 / ￥1,200 / ＄12 / 元75</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포, 제주 출발 국제선</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">계란,닭고기,돼지고기,우유,대두,토마토,포도,맛살(게),쌀,양배추,아몬드,연어(생선),캐이퍼,블랙올리브,양파,단호박,피망,훈제닭가슴살(닭고기),양상추,라디치오,로메인상추,오렌지,방울토마토,호두</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
					<div id="tab-2-product-3" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/KRML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">김치볶음밥</div>
							<div class="row clearfix food-word">한국인이 사랑하는 대표 음식 김치볶음밥을
								기내에서 드실수 있습니다.</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦14,000 / ￥1,400 / ＄14 / 元85</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포, 부산 출발 국제선 (2시간 이상
									비행편)</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">볶음밥(쌀,김치,계란,우유,대두,밀),토마토,돼지고기,닭고기,쇠고기,조개류,계란,우유,대두,밀,무우</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
				</div>
                <!-- salad -->
				<div id="tab-3-container" class="tab-content-container hidden">
					<div id="tab-3-product-1" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/WSML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">웰빙 샐러드</div>
							<div class="row clearfix food-word">신선한 야채 모듬에 닭가슴살과 구운
								단호박으로 토핑하여 상큼한 키위소스와 함께 건강과 맛을 한꺼번에 챙길수 있는 실속만점 샐러드입니다.</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦10,000 / ￥1,000 / ＄10 / 元60</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포, 부산, 제주 출발 국제선</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">훈제닭가슴살(닭고기),양상추,라디치오,로메인상추,토마토,오렌지,단호박,방울토마토,호두,대두</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
					<div id="tab-3-product-2" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/BTML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">소고기타다끼 샐러드</div>
							<div class="row clearfix food-word">신선한 야채에 구운 소고기타다끼를
								토핑하여, 발사믹 소스로 풍미를 더한 샐러드입니다.</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦12,000 / ￥1,200 / ＄12 / 元75</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포, 제주 출발 국제선</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">쇠고기,피망,양상추,토마토,라디치오,로메인상추,대두</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
					<div id="tab-3-product-3" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/CSML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">스모크치킨 샐러드</div>
							<div class="row clearfix food-word">신선한 야채에 훈제 닭가슴살로 토핑하여
								맛과 향이 뛰어난 발사믹 소스를 넣어 모닝롤과 함께 드시면 최고의 브런치 메뉴입니다.</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦12,000 / ￥1,200 / ＄12 / 元75</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포, 제주 출발 국제선</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">닭고기,양상추,페타치즈,단호박,피망,라디치오,로메인상추,빵(소프트롤),버터,대두</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
				</div>
                <!-- refreshment -->
				<div id="tab-4-container" class="tab-content-container hidden">
					<div id="tab-4-product-1" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/PSML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">단호박 샌드위치</div>
							<div class="row clearfix food-word">곡물식빵에 블루베리쨈과 햄을 넣고 부드럽고
								달콤한 단호박샐러드를 듬뿍 발라 넣은 샌드위치 입니다. 특히, 어린이와 여성고객들이 선호하는 메뉴입니다.</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦10,000 / ￥1,000 / ＄10 / 元60</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포, 부산, 제주 출발 국제선</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">호밀식빵,치즈스프레드(버터치즈,마요네즈),단호박,돼지고기,블루베리,오이피클,로메인상추,아몬드,닭고기,쇠고기</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
					<div id="tab-4-product-2" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/VTML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">야채볶음 샌드위치</div>
							<div class="row clearfix food-word">곡물식빵에 신선한 상추와 토마토에 구운
								야채로 속을 꽉 채운 샌드위치로 고객님의 건강을 생각하여 이스타에서 야심차게 준비하였습니다.</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦10,000 / ￥1,000 / ＄10 / 元60</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포, 부산, 제주 출발 국제선</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">곡물식빵,치즈스프레드(버터치즈,마요네즈),양상추,로메인상추,토마토,단호박,피망,가지,양파,파마산치즈,닭고기</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
					<div id="tab-4-product-3" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/SCML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">새우샐러드치아바타</div>
							<div class="row clearfix food-word">치아바타 브레드 속내를 마요네즈로 버무린
								통새우살에 삶은계란, 야채로 듬뿍 채운 샌드위치입니다. 고소함과 부드러운 맛을 함께 느끼실 수 있습니다.</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦10,000 / ￥1,000 / ＄10 / 元60</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포, 제주 출발 국제선</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">치아바타빵,치즈스프레드(버터치즈,마요네즈),양상추,로메인상추,새우,파마산치즈</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
					<div id="tab-4-product-4" class="row product-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/HCML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">햄치즈 베이글</div>
							<div class="row clearfix food-word">햄과 치즈를 올려 따뜻하게 구운 베이글에
								고객님의 기호에 맞게 버터나 딸기잼을 발라서 드시면 맛있습니다.</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦10,000 / ￥1,000 / ＄10 / 元60</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포, 부산, 제주 출발 국제선</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">빵,블루베리,닭고기,돼지고기,쇠고기,치즈,계란,오이,우유,버터</div>
							</div>
							<a href="#"><button class="blueBtn foodSelect">선택하기</button></a>
						</div>
					</div>
				</div>
			</div>
			<div id="classSelect">
				<div id="classSelectTitle">
					<h2>클래스 선택</h2>
					<div class="classClose" onclick="classSelcetClose()">X</div>
				</div>
                <!--섹션3-->
				<li class="subtitle">
					<span>좌석 등급 선택</span>
					<span id="class-hint"><i class="fas fa-exclamation"></i></span>
				</li>
                <!-- 팝업창 안뜸 --><!--설명팝업창-->
				<div class='pop-up-window-type1 border' id='class-hint-window'>
					<ul class="list-type2">
						<p>
							좌석등급 선택 시 유의사항 <i class="fas fa-times btn-close"></i>
						</p>
						<li>탑승 항공편에 따라 좌석 타입 및 편의 시설, 이용 가능한 서비스에 차이가 있을 수 있습니다.</li>
						<li>국내선의 경우 별도 좌석등급 선택을 하지 않습니다.</li>
						<li>좌석등급은 항공편 기종별 좌석배치가 다릅니다.<a href="#" target="_blank">좌석배치도
								보기</a></li>
						<li>마일리지 적립은 구입하신 항공권상의 예약클래스 기준으로 적립됩니다.<a href="#"
                                                                    target="_blank">적립 기준표 보기</a></li>
					</ul>
				</div>
				<div class="row itinerary clearfix">
					<div class="col-third class-select">
						<input type="radio" class="radio2" name="class-type"
                               value="economy" id="economy" checked="checked"> <label
                            for="economy" class="firstRadio">이코노미</label>
					</div>
					<div class="col-third class-select">
						<input type="radio" class="radio2" name="class-type"
                               value="business" id="business"> <label for="business">비즈니스</label>
					</div>
					<div class="col-third class-select">
						<input type="radio" class="radio2" name="class-type" value="first"
                               id="first"> <label for="first" class="lastRadio">퍼스트</label>
					</div>
				</div>
			</div>
		</div>
		<input type="hidden" value="Y">
		<div class="button-wrapper">
			<input type="button" value="결제하기" class="blueBtn reservePayment">
			<input type="button" value="취소" class="whiteBtn reserveCancle">
		</div>
	</section>
    <%@ include file="../common/footer.jspf" %>
    
	<script src="../../JS/mypage.js"></script>
	<script src="../../JS/booking.js"></script>
	<script>
		tabEvent('.tab-menu1');
	</script>
</body>
</html>