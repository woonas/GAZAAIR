<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>예약 상세 페이지</title>
    <link rel="stylesheet" href="../../CSS/my_page.css"type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
    <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
</head>
<body>
<%@ include file="../common/nav.jspf" %>
<!-- Todo 기내식,좌석,클래스 -->
	<div class="overlay"></div>
	<section class="content">
        <h3>예약 현황 상세 페이지</h3>
        <div></div>
        <p class="reservation-section-title">여정</p>
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
                    <div class="col-two-fourth flight-detail">
                        <span><i class="far fa-clock"></i> 1시간 10분</span>
                        <img src = "../../IMG/icon/flight-table.svg" alt = "">
                        <span>직항</span>
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
                    <input type="button" value="환불" class="blueBtn" id="refundBtn" />
                </div>
            </div>
        </div>
        
        <p class="reservation-section-title">가격</p>
        <div class="flight-confirm-section">
            <div class="table-form3">
                <div class="row clearfix table-row-title">
                    <div class="col-two-fourth">여정</div>
                    <div class="col-fourth">구분</div>
                    <div class="col-fourth">금액 <span class="currency">(KRW)</span></div>
                </div>
                <div class="row clearfix">
                    <div class="col-two-fourth trip">
                        <div class="col-tenth">
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
            <br>
            <ul class="list-type2">
                <li>무료 수하물 허용량을 초과하는 경우 추가 수하물 요금이 부과될 수 있습니다.<a href="service_baggage.html" class="font-brown"> 수하물 안내</a></li>
                <li class="font-brown">타항공사 연결 시나 공동운항의 경우 운항항공사 자체 수하물 규정이 적용 될 수 있으므로 사전에 확인하여 주시기 바랍니다.</li>
            </ul>
        </div>
        
        <div class="edit-form-wrapper">
            <form action="">
                <div class="form-group">
                    <div class="col-xs-12">
                        <input type="checkbox" class="hidden" id="edit">
                        <label for="edit" class="whiteBtn btn">탑승객정보 수정</label>
                        <a href="../../mypage"><button type="submit" class="btn blueBtn">수정</button></a>
                        <a href="../../mypage"><label for = "edit" class = "whiteBtn btn">취소</label></a>
                    </div>
                </div>
                <p class="reservation-section-title">
                    탑승자 정보
                </p>
                <div class="table-form">
                    <div class="row clearfix">
                        <div class="table-row-title">
                            성
                        </div>
                        <div class="two-in-row">
                            <input type="text" placeholder="한글 성 입력 (예:홍)" value="111" disabled>
                        </div>
                        <div class="table-row-title">
                            이름
                        </div>
                        <div class="two-in-row">
                            <input type="text" placeholder="한글 이름 입력 (예:길동)" disabled>
                        </div>
                    </div>
        
                    <div class="row clearfix">
                        <div class="table-row-title">
                            생년월일
                        </div>
                        <div>
                            <select id="year" name="year" title="생년월일&nbsp;연도" style="width: 200px" disabled>
                                <option value="">년</option>
                            </select>
        
                            <select id="month" name="month" title="생년월일월" style="width: 200px" disabled>
                                <option value="">월</option>
                            </select>
        
                            <select id="day" name="day" title="생년월일일" style="width: 200px" disabled>
                                <option value="">일</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="row clearfix">
                        <div class="table-row-title">
                            성별
                        </div>
                        <div class="gender-wrapper">
                            <input type="radio" class="radio3" name="gender" id="male">
                            <label for="male">남성</label>
                            <input type="radio" class="radio3" name="gender" id="female">
                            <label for="female">여성</label>
                        </div>
                    </div>
        
                    <div class="row clearfix">
                        <div class="table-row-title">
                            회원번호 <span id="membership-hint"><i class="fas fa-exclamation"></i></span>
                        </div>
                        <div>
                            <select id="selAirline1" name="selAirline" title="항공사" style="width: 296px; margin-top: -4px" disabled>
                                <option value="GZ" selected="selected">가자에어 - Gaza Club</option>
                            </select>
                            <input type="text" placeholder="" style="width: 320px;" disabled>
                        </div>
                    </div>
                    
                    <div class='pop-up-window-type1 border' id='membership-hint-window'>
                        <ul class="list-type2">
                            <p>
                                회원번호 (탑승객)
                                <i class="fas fa-times btn-close"></i>
                            </p>
                            <li>가자에어, 스타얼라이언스 회원사에 대한 마일리지 적립이 가능합니다.</li>
                            <li>마일리지는 탑승 완료 후 적립되며, 항공사마다 적립시기에 차이가 있을 수 있습니다.</li>
                            <li>가자에어클럽 회원이 아니신 경우, 탑승 전 회원가입을 해주셔야 적립이 가능합니다.</li>
                        </ul>
                    </div>
                    
                    <div class="row clearfix">
                        <div class="table-row-title">
                            1번째 여정 할인
                        </div>
                        <div>
                            <select id="selPTCCode_Dep_1" name="selPTCCode_Dep" title="신분할인 선택" style="width: 632px;" disabled>
                                <option value="CB" ptccode="CB" ptcrate="0">개인할인 선택 안함</option>
                                <option value="PR" ptccode="PR" ptcrate="30">장애인 4~6급(30%)</option>
                                <option value="PR" ptccode="PR" ptcrate="50">장애인 1~3급(50%)</option>
                                <option value="PC" ptccode="PC" ptcrate="50">장애인 1~3급 동반 보호자 1인(50%)</option>
                                <option value="CJ" ptccode="CJ" ptcrate="10">제주도민/재외 제주도민(제주관련 노선만 적용)(10%)</option>
                                <option value="OB" ptccode="OB" ptcrate="10">경로우대(만65세 이상)(10%)</option>
                                <option value="ME" ptccode="ME" ptcrate="10">현역군인(휴가증소지의 의무복무사병)(10%)</option>
                                <option value="NA" ptccode="NA" ptcrate="30">고엽제 후유증 환자(30%)</option>
                                <option value="NC" ptccode="NC" ptcrate="50">국가유공상이 4급 동반 보호자 1인(50%)</option>
                                <option value="ND" ptccode="ND" ptcrate="50">5.18민주유공 1~4급 동반보호자 1인(50%)</option>
                                <option value="NE" ptccode="NE" ptcrate="50">국가유공상이 1~3급 동반 보호자 1인(50%)</option>
                                <option value="NG" ptccode="NG" ptcrate="50">독립유공자 동반 보호자1인(50%)</option>
                                <option value="NI" ptccode="NI" ptcrate="30">독립유공자 유족증소지자(30%)</option>
                                <option value="NI" ptccode="NI" ptcrate="50">독립유공자(50%)</option>
                                <option value="NP" ptccode="NP" ptcrate="30">국가유공자 / 5.18민주유공자 &amp; 유공자 유족증 소지자 (30%)</option>
                                <option value="NQ" ptccode="NQ" ptcrate="50">국가유공상이자 &amp; 5.18민주유공부상자(50%)</option>
                                <option value="PFA" ptccode="PFA" ptcrate="0">기초생활수급자 공항세 할인</option>
                                <option value="TEA" ptccode="TEA" ptcrate="0">기술기능분야 우수자 공항세 할인</option>
                                <option value="ZZ" ptccode="ZZ" ptcrate="10">청소년(만13세 이상~만22세 미만)(10%)</option>
                            </select>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        
        <p class="reservation-section-title">기타 예약 정보</p>
        <div id="reservation-etc">
            <div class="etc-section clearfix">
                <div class="etc-section-title">좌석 선택</div>
                <div class="imgDiv" id="seatImg"></div>
                <div class="border-bt">
                    <div class="etc-section-info">클릭하시면 좌석 선택 하실 수 있습니다.<br/>
                                        회색으로 표시된 자석은 이미 예약된 자석이며 클릭하여 나오는 빨간색 좌석이<br/>
                                        좌석으로 선택 됩니다.
                    </div>
                    <input type="button" value="변경" id="selectSeat" class="etc-section-button"/>
                </div>
            </div>
            <div class="etc-section clearfix">
                <div class="etc-section-title">기내식 선택</div>
                <div class="imgDiv" id="foodImg"></div>
                <div class="border-bt">
                    <div class="etc-section-info">클릭 하시면 기내식 선택 하실 수 있습니다.<br/>
                                        기내식은 특선 요리, 일품 요리, 샐러드, 간단식으로 구성되어있습니다.<br/>
                                        음식 하나만 선택 가능합니다.
                    </div>
                    <input type="button" value="변경" id="selectFood" class="etc-section-button"/>
                </div>
            </div>
            <div class="etc-section clearfix">
                <div class="etc-section-title">기내식 선택</div>
                <div class="imgDiv" id="classImg"></div>
                <div class="border-bt">
                    <div class="etc-section-info">클래스 변경 하실 수 있습니다.<br/>
                                        클래스 변경은 퍼스트, 비즈니스, 이코노미 중 선택 하실 수 있습니다.
                    </div>
                    <input type="button" value="변경" id="selectClass" class="etc-section-button"/>
                </div>
            </div>
        </div>
        
        <p class="reservation-section-title">운임 조건 및 규정</p>
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
        
        
        <div class='pop-up-window-type1 centeredX' id='selectSeat-window'>
            <div class="row">
                <p class="window-title">
                    좌석 선택
                    <i class="fas fa-times btn-close"></i>
                </p>
            </div>
            <div class="scrollable">
                <div id="seatsBackImg">
					<div id="frontBusi-seat" class="seatDiv"></div>
					<div id="frontEco-seat" class="seatDiv"></div>
					<div id="back-seat" class="seatDiv"></div>
				</div>
                <input type="button" class="blueBtn" value="선택하기" id="changeSeat">
            </div>
        </div>
        
        <!-- Todo 탭메뉴 2,3,4추가 -->
        <div class='pop-up-window-type1 centeredX' id='selectFood-window'>
            <div class="row">
                <p class="window-title">
                    기내식 선택
                    <i class="fas fa-times btn-close"></i>
                </p>
            </div>
            <div class="tab-menu1">
                <ul class="clearfix">
                    <li class="col-fourth on" id="tab-1"><a href="#none" onclick="return false;">특선요리</a></li>
                    <li class="col-fourth" id="tab-2"><a href="#none" onclick="return false;">일품요리</a></li>
                    <li class="col-fourth" id="tab-3"><a href="#none" onclick="return false;">샐러드</a></li>
                    <li class="col-fourth" id="tab-4"><a href="#none" onclick="return false;">간단식</a></li>
                </ul>
            </div>
            <div class="scrollable">
                <div id="tab-1-container" class="tab-content-container">
					<div id="tab-1-product-1" class="row clearfix food-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/BRML.png">
						</div>
						<div class="col-half food-content">
							<div class="row food-title">
                                시그니처불고기라이스
                                <button class="blueBtn foodSelect">선택하기</button>
                            </div>
							<div class="row food-word">한국을 대표하는 맛있는 불고기 요리를 따뜻한 밥과 함께 드립니다.</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦15,000</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">쌀,불고기(쇠고기),표고,피망,브로콜리2종,계란지단(계란,돼지고기,대두,밀),잣,앙금,찹쌀,땅콩,호두(약간의성분함유),대두,밀,배추,새우(젓갈)</div>
							</div>
						</div>
					</div>
					<div id="tab-1-product-2" class="row clearfix food-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/QMML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">
                                bbq 치킨강정 (순한맛)
                                <button class="blueBtn foodSelect">선택하기</button>
                            </div>
							<div class="row clearfix food-word">부드러운 살코기와 BBQ만의 특제 강정소스가 곁들여져 남녀노소 누구나 맛있게 드실 수 있습니다. *치킨무 제공</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦10,000 / ￥1,000 / ＄10 / 元60</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포 출발 국제선 (2시간 이상 비행편)</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">닭고기,계란,대두,밀,토마토,쇠고기,아몬드,무우</div>
							</div>
						</div>
					</div>
					<div id="tab-1-product-3" class="row clearfix food-wrapper">
						<div class="col-half img-wrapper">
							<img src="../../IMG/food/QSML.png">
						</div>
						<div class="col-half food-content">
							<div class="row clearfix food-title">
                                bbq 치킨강정 (매운맛)
                                <button class="blueBtn foodSelect">선택하기</button>
                            </div>
							<div class="row clearfix food-word">하늘 위에서 더 맛있는, BBQ만의 매콤달콤한 특제강정소스로 버무러진 치킨강정 간편식 또는 맥주 안주로도 인기만점 입니다. *치킨무 제공</div>
							<div class="row clearfix food-detail">
								<div class="col-fourth">가격</div>
								<div class="col-three-fourth">￦10,000 / ￥1,000 / ＄10 / 元60</div>
								<div class="col-fourth">제공 노선</div>
								<div class="col-three-fourth">인천, 김포 출발 국제선 (2시간 이상 비행편)</div>
								<div class="col-fourth">주재료</div>
								<div class="col-three-fourth">닭고기,계란,대두,밀,토마토,쇠고기,아몬드,무우</div>
							</div>
						</div>
					</div>
				</div>
                <div id="tab-2-container" class="tab-content-container"></div>
                <div id="tab-3-container" class="tab-content-container"></div>
                <div id="tab-4-container" class="tab-content-container"></div>
            </div>
        </div>
        
        <div class='pop-up-window-type1 centeredX' id='selectClass-window'>
            <div class="row">
                <p class="window-title">
                    좌석등급 변경
                    <i class="fas fa-times btn-close"></i>
                </p>
            </div>
            
            <div class="row itinerary clearfix">
                <div class="col-third class-select">
                    <input type="radio" class="radio2" name="class-type" value="economy" id="economy" checked="checked">
                    <label for="economy" class="firstRadio">이코노미</label>
                </div>
                <div class="col-third class-select">
                    <input type="radio" class="radio2" name="class-type" value="business" id="business">
                    <label for="business">비즈니스</label>
                </div>
                <div class="col-third class-select">
                    <input type="radio" class="radio2" name="class-type" value="first" id="first">
                    <label for="first" class="lastRadio">퍼스트</label>
                </div>
            </div>
            <input type="button" value="변경하기" class="blueBtn" id="changeClass">
            <ul class="list-type2 last-note">
                <li class="list-inside-title">좌석등급 변경 시 유의사항</li>
                <li>탑승 항공편에 따라 좌석 타입 및 편의 시설, 이용 가능한 서비스에 차이가 있을 수 있습니다.</li>
                <li>국내선의 경우 별도 좌석등급 선택을 하지 않습니다.</li>
                <li>좌석등급은 항공편 기종별 좌석배치가 다릅니다.<a href="#" target="_blank">좌석배치도보기</a></li>
                <li>마일리지 적립은 구입하신 항공권상의 예약클래스 기준으로 적립됩니다.<a href="#" target="_blank">적립 기준표 보기</a></li>
            </ul>
        </div>
        
        
		<input type="hidden" value="Y">
		<div class="button-wrapper">
			<input type="button" value="결제하기" class="blueBtn reservePayment">
			<input type="button" value="취소" class="whiteBtn reserveCancle">
		</div>
	</section>
 	<%@ include file="../common/footer.jspf" %>

	<script src="../../JS/mypage.js"></script>
	<script>
		tabEvent('.tab-menu1');
	</script>
</body>
</html>