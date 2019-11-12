<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>항공권 예약 - 여정선택</title>
        <!-- Font Awesome CDN -->
        <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
        <!--datepicker용-->
        <!-- Bootstrap JS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <!-- Moment Js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>

        <!-- Lightpick CSS -->
        <link rel="stylesheet" href="../../../../Vendor/javascript-datepicker-lightpick/css/lightpick.css">

        <!-- Lightpick JS -->
        <script src="../../../../Vendor/javascript-datepicker-lightpick/js/lightpick.js"></script>
        
        <link rel="stylesheet" href="../../../CSS/booking.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
   <%@ include file="../../common/nav.jspf" %>
        <div class="overlay"></div>
        <section class="content">
            <h3>항공권 예약</h3>
<!--섹션1-->
            <li class="subtitle">
                <span>여정 / 날짜 선택</span>
            </li>
            
<!--컨텐츠-->
            <div class="row clearfix">
                <div class="col-two-fifth type-radio-box">
                    <div class="col-third">
                        <input type="radio" class="radio1" name="trip-type" value="round-way" id="round-way" checked>
                        <label for="round-way" class="firstRadio">왕복</label>
                    </div>
                    <div class="col-third">
                        <input type="radio" class="radio1" name="trip-type" value="single-way" id="single-way">
                        <label for="single-way">편도</label>
                    </div>
                    <div class="col-third">
                        <input type="radio" class="radio1" name="trip-type" value="multi-way" id="multi-way">
                        <label for="multi-way" class="lastRadio">다구간</label>
                    </div>
                </div>
                <div class="txt-hint">
                    <span id="multi-way-hint">다구간이란? &nbsp;<i class="fas fa-exclamation"></i></span>
                </div>
                
<!--설명팝업창-->
                <div class='pop-up-window-type1 centeredX' id='multi-way-hint-window'>
                    <div class="row">
                        <p class="window-title">
                            다구간 여정에 대한 안내
                            <i class="fas fa-times btn-close"></i>
                        </p>
                    </div>
                    <div class="scrollable">
                        <ul class="list-type2">
                            <li>다구간 국제선 여정에서는 계획된 일정에 따라 <span class="font-brown">2구간에서 최대 6구간</span>까지 예약하실 수 있으며, 국내 및 해외 공항에서 경유 또는 스톱오버 하실 수 있습니다.</li>
                            <li class="font-red">부산 ↔ 인천노선은 환승 전용 내항기로 서울에서 체류(STOPOVER) 할 수 없습니다.</li>
                        </ul>

                        <div class="multi-trvinfo">
                            <p class="window-subtitle">국내선 (최대 2구간)</p>
                            <p class="list">1.  첫번째 여정의 도착지와 두번째 여정의 출발지가 다른 경우</p>
                            <p class="exam">예시 ) 김포 – 대구 / 부산 – 제주</p>
                            <div class="route-info">
                                <div class="inner">
                                    <div class="route-wrap">
                                        <ul class="route">
                                            <li class="txt">김포</li>
                                            <li class="txt">대구</li>
                                        </ul>
                                        <span class="trv-arrow"></span>
                                        <ul class="route">
                                            <li class="txt">부산</li>
                                            <li class="txt">제주</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="multi-trvinfo">
                            <p class="window-subtitle">국제선 (최대 6구간)</p>
                            <p class="list">1.  첫번째 여정의 도착지와 두번째 여정의 출발지가 다른 경우</p>
                            <p class="exam">예시 ) 인천 - 나리타 /  오사카 – 인천 또는 인천 – 베이징 / 상해 - 부산</p>
                            <ul class="list-type2">
                                <li class="font-brown">나리타 – 오사카, 베이징 – 상해는 항공편을 이용하지 않고 기타 교통편을 이용하는 경우입니다.</li>
                            </ul>
                            <div class="route-info">
                                <div class="inner">
                                    <div class="route-wrap">
                                        <ul class="route">
                                            <li class="txt">인천</li>
                                            <li class="txt">나리타</li>
                                        </ul>
                                        <span class="trv-arrow"></span>
                                        <ul class="route">
                                            <li class="txt">오사카</li>
                                            <li class="txt">인천</li>
                                        </ul>
                                    </div>

                                    <div class="route-wrap">
                                        <ul class="route">
                                            <li class="txt">인천</li>
                                            <li class="txt">베이징</li>
                                        </ul>
                                        <span class="trv-arrow"></span>
                                        <ul class="route">
                                            <li class="txt">상해</li>
                                            <li class="txt">부산</li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="multi-trvinfo">
                            <p class="list">2.  여정 중간에서 스톱오버 후 다음 여정을 시작하는 경우</p>
                            <p class="exam">예시 ) 광주 - 김포 / 인천 – 뉴욕 (가자에어) – 로스앤젤레스 (미국 국내선) – 인천 (가자에어)</p>
                            <ul class="list-type2">
                                <li class="font-brown">김포 – 인천은 항공편을 이용하지 않고 기타 교통편을 이용하는 경우입니다.</li>
                            </ul>
                            <div class="route-info">
                                <div class="inner">
                                    <ul class="route">
                                        <li class="txt">광주</li>
                                        <li class="txt">김포</li>
                                    </ul>
                                    <span class="trv-arrow"></span>
                                    <ul class="route type2">
                                        <li class="txt">인천</li>
                                        <li class="txt">뉴욕</li>
                                        <li class="txt">로스앤젤레스</li>
                                        <li class="txt">인천</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="itinerary">
                <div class="row clearfix book-input-form">
                    <div class="col-third itinerary-select">
                        <label for = "airportFrom-1">
                            <i class="fas fa-map-marker-alt"></i>
                            출발지
                        </label>
                        <button type="button" class="spot-change" id="spot-change-1"></button>
                        <input type = "text" id="airportFrom-1" name="airportFrom-1" class="open-airport-picker" readonly>
                    </div>
                    <div class="col-third itinerary-select">
                        <label for = "airportTo-1">
                            <i class="fas fa-map-marker-alt"></i>
                            도착지
                        </label>
                        <input type = "text" id="airportTo-1" name="airportTo-1" class="open-airport-picker" readonly>
                    </div>
                    <div class="col-third itinerary-select">
                        <label for = "flightDate-1">
                            <i class="far fa-calendar-alt"></i>
                            탑승일
                        </label>
                        <input type = "text" id="flightDate-1" name="flightDate-1" class="flightDate" readonly>
                    </div>
                </div>
                <div class="clearfix hidden" id="multi-way-btn-box">
                    <div class="add">
                        <i class="fas fa-plus"></i>
                    </div>
                    <div class="subtr">
                        <i class="fas fa-minus"></i>
                    </div>
                </div>
                <div class="row clearfix hidden" id="note">
                   <p class="font-red hidden">1구간에서 6구간까지 선택 가능합니다!</p>
                    <ul class="list-type2">
                       <br>
                        <li>편도 및 이원구간 여정의 경우 국적에 따라 경유지 및 목적지 비자를 소지하지 않으면 해당 국가로 출국이 거절될 수 있습니다.</li>
                        <li>무비자 입국이 가능한 나라일지라도 편도 입국은 불가하오니 반드시 해당 대사관을 통하여 확인하시기 바랍니다.</li>	
                    </ul>
                </div>
            </div>

<!--섹션2-->
            <li class="subtitle">
                <span>탑승 인원 선택</span>
                <span id="passenger-hint"><i class="fas fa-exclamation"></i></span>
            </li>
<!--설명팝업창-->
            <div class='pop-up-window-type1 border' id='passenger-hint-window'>
                <ul class="list-type2">
                    <p>
                        탑승 인원 선택 시 유의사항
                        <i class="fas fa-times btn-close"></i>
                    </p>
                    <li>예약인원은 성인,소아,유아를 포함하여 총 9명까지 선택 가능합니다.</li>
                    <li>유아는 각 구간 탑승일 기준 만 2세 미만까지이며, 좌석을 점유하지 않습니다.<br>
                        만 24개월 이상이 되는 경우 소아운임이 적용되며 좌석을 구매하셔야 합니다.</li>
                    <li>국제선은 첫 구간 출발일 기준으로 만 24개월부터 만 12세 미만까지 소아 운임이 적용됩니다.</li>
                    <li>2017.09.01 (발권일) 부로 각 구간 탑승일 기준 만 24개월 이상이 되는 경우 소아운임이 적용되며, 좌석 점유를 위해 사전에 좌석 예약이 필요합니다.</li>
                    <li>소아/유아 동반 시, 반드시 나이를 확인할 수 있는 서류를 준비하시기 바랍니다.</li>
                    <li>유아 동승 시, 요람/유아시트 등을 예약센터에서 신청할 수 있습니다.<a href="#" target="_blank">자세히 보기</a></li>
                    <li>성인 승객 한 분이 유아(만 24개월 미만) 1명을 동반하실 수 있습니다.</li>
                    <li>유소아를 동반하는 보호자는 국제선,국내선 항공편 탑승 시 부모 또는 만 18세 이상이어야 합니다.</li>
                    <li>전 구간에 소아와 함께 여행하는 동반 성인이 있을 경우, 소아 단독 항공권 구매가 가능합니다.</li>
                    <li>보호자 없이 혼자 여행하는 소아 예약 및 추가 문의 예약센터 1588-8000</li>
                </ul>
            </div>	
<!--컨텐츠-->
            <div class="itinerary">
                <div class="row clearfix book-input-form2">
                    <div class="col-third passenger-select number-box">
                        <p>성인 <span>(만 13세 이상)</span></p>
                        <button class = "minus">-</button>
                        
                        <input type = "number" value = "1" id = "numOfAdult">
                        <button class = "plus">+</button>
                    </div>
                    <div class="col-third passenger-select number-box">
                        <p>소아 <span>(만 2세 ~ 13세 미만)</span></p>
                        <button class = "minus">-</button>
                        <input type = "number" value = "0" id = "numOfChild">
                        <button class = "plus">+</button>
                    </div>
                    <div class="col-third passenger-select number-box">
                        <p>유아 <span>(만 2세 미만)</span></p>
                        <button class = "minus">-</button>
                        <input type = "number" value = "0" id = "numOfInfant">
                        <button class = "plus">+</button>
                    </div>
                </div>
                <div class="clearfix" id="ageCalc-btn-box">
                    <button id="btn-ageCalc">
                        나이 계산기
                        <i class="far fa-window-restore"></i>
                    </button>
                </div>
                <div class="row clearfix">
                    <ul class="list-type2">
                       <br>
                        <li class="passengerInfo">예약인원은 성인,소아, 유아를 포함하여 총 9명까지 선택 가능합니다.</li>
                        <li>전 구간에 소아와 함께 여행하는 동반 성인이 있을 경우, 소아 단독 항공권 구매가 가능합니다.</li>
                        <li>유아는 탑승일 기준 만 2세 미만까지이며, 좌석을 점유하지 않습니다.</li>
                    </ul>
                </div>
            </div>
<!--나이계산기 팝업-->
            <div class="pop-up-window-type1 centeredX" id="btn-ageCalc-window">
                <div>
                <p class="window-title">
                    나이계산기
                    <i class="fas fa-times btn-close"></i>
                </p>
                </div>
                <p>계산하고자 하는 어린이의 생년월일을 선택하시면, 유아/소아 유무를 확인하실 수
                    있습니다.</p>
                <div class="form-area1">
                    <input type="number" id="txtBirthDate" placeholder="생년월일 8자리 입력 (예시:19700131)" maxlength="8" oninput="maxLengthCheck(this)">
                    <button class="blueBtn" id="btn-ageCalc-calc">계산하기</button>
                </div>
                <div id="ageCalc-result" class="font-red"></div>
            </div>
            
<!--섹션3-->
            <li class="subtitle">
                <span>좌석 등급 선택</span>
                <span id="class-hint"><i class="fas fa-exclamation"></i></span>
            </li>
<!--설명팝업창-->
            <div class='pop-up-window-type1 border' id='class-hint-window'>
                <ul class="list-type2">
                    <p>
                        좌석등급 선택 시 유의사항
                        <i class="fas fa-times btn-close"></i>
                    </p>
                    <li>탑승 항공편에 따라 좌석 타입 및 편의 시설, 이용 가능한 서비스에 차이가 있을 수 있습니다.</li>
                    <li>국내선의 경우 별도 좌석등급 선택을 하지 않습니다.</li>
                    <li>좌석등급은 항공편 기종별 좌석배치가 다릅니다.<a href="#" target="_blank">좌석배치도 보기</a></li>
                    <li>마일리지 적립은 구입하신 항공권상의 예약클래스 기준으로 적립됩니다.<a href="#" target="_blank">적립 기준표 보기</a></li>
                </ul>
            </div>	
<!--컨텐츠-->
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
<!--다음버튼-->
            <div class="row clearfix">
                <a href="#" class="nextBtn" onclick="return input_check()">
                    <span>조회</span>
                    <span>
                        <svg width="66px" height="43px" viewBox="0 0 66 43" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g id="arrow" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <path class="one" d="M40.1543933,3.89485454 L43.9763149,0.139296592 C44.1708311,-0.0518420739 44.4826329,-0.0518571125 44.6771675,0.139262789 L65.6916134,20.7848311 C66.0855801,21.1718824 66.0911863,21.8050225 65.704135,22.1989893 C65.7000188,22.2031791 65.6958657,22.2073326 65.6916762,22.2114492 L44.677098,42.8607841 C44.4825957,43.0519059 44.1708242,43.0519358 43.9762853,42.8608513 L40.1545186,39.1069479 C39.9575152,38.9134427 39.9546793,38.5968729 40.1481845,38.3998695 C40.1502893,38.3977268 40.1524132,38.395603 40.1545562,38.3934985 L56.9937789,21.8567812 C57.1908028,21.6632968 57.193672,21.3467273 57.0001876,21.1497035 C56.9980647,21.1475418 56.9959223,21.1453995 56.9937605,21.1432767 L40.1545208,4.60825197 C39.9574869,4.41477773 39.9546013,4.09820839 40.1480756,3.90117456 C40.1501626,3.89904911 40.1522686,3.89694235 40.1543933,3.89485454 Z" fill="#FFFFFF"></path>
                                <path class="two" d="M20.1543933,3.89485454 L23.9763149,0.139296592 C24.1708311,-0.0518420739 24.4826329,-0.0518571125 24.6771675,0.139262789 L45.6916134,20.7848311 C46.0855801,21.1718824 46.0911863,21.8050225 45.704135,22.1989893 C45.7000188,22.2031791 45.6958657,22.2073326 45.6916762,22.2114492 L24.677098,42.8607841 C24.4825957,43.0519059 24.1708242,43.0519358 23.9762853,42.8608513 L20.1545186,39.1069479 C19.9575152,38.9134427 19.9546793,38.5968729 20.1481845,38.3998695 C20.1502893,38.3977268 20.1524132,38.395603 20.1545562,38.3934985 L36.9937789,21.8567812 C37.1908028,21.6632968 37.193672,21.3467273 37.0001876,21.1497035 C36.9980647,21.1475418 36.9959223,21.1453995 36.9937605,21.1432767 L20.1545208,4.60825197 C19.9574869,4.41477773 19.9546013,4.09820839 20.1480756,3.90117456 C20.1501626,3.89904911 20.1522686,3.89694235 20.1543933,3.89485454 Z" fill="#FFFFFF"></path>
                                <path class="three" d="M0.154393339,3.89485454 L3.97631488,0.139296592 C4.17083111,-0.0518420739 4.48263286,-0.0518571125 4.67716753,0.139262789 L25.6916134,20.7848311 C26.0855801,21.1718824 26.0911863,21.8050225 25.704135,22.1989893 C25.7000188,22.2031791 25.6958657,22.2073326 25.6916762,22.2114492 L4.67709797,42.8607841 C4.48259567,43.0519059 4.17082418,43.0519358 3.97628526,42.8608513 L0.154518591,39.1069479 C-0.0424848215,38.9134427 -0.0453206733,38.5968729 0.148184538,38.3998695 C0.150289256,38.3977268 0.152413239,38.395603 0.154556228,38.3934985 L16.9937789,21.8567812 C17.1908028,21.6632968 17.193672,21.3467273 17.0001876,21.1497035 C16.9980647,21.1475418 16.9959223,21.1453995 16.9937605,21.1432767 L0.15452076,4.60825197 C-0.0425130651,4.41477773 -0.0453986756,4.09820839 0.148075568,3.90117456 C0.150162624,3.89904911 0.152268631,3.89694235 0.154393339,3.89485454 Z" fill="#FFFFFF"></path>
                            </g>
                        </svg>
                    </span>
                </a>
                
                <form action="<%=path%>/Resources/JSP/flight/booking/booking2.do" method="post" id="nextEventFrm">
                    <input type="hidden" name="flight-type">
                    <input type="hidden" name="airportFrom">
                    <input type="hidden" name="airportTo">
                    <input type="hidden" name="flightDate">
                    <input type="hidden" name="numOfPassengers">
                    <input type="hidden" name="seat-type">
                </form>
            </div>
<!--유의사항-->
            <ul class="list-type2 last-note bg-gray6">
                <li class="list-inside-title">유의사항</li>
                <li>국내선 항공권 구매 및 예약 변경은 해당 항공편 출발 30분전까지 가능합니다.</li>
                <li>국내선 유류할증료를 확인하세요.</li>
                <li>구매 후 탑승시점에 유류할증료가 인상되어도 차액을 징수하지 않으며 인하되어도 환급되지 않습니다.</li>
                <li>편도로 각각 구매하시거나, 전체 환불 후 재 구매하여 주시기 바랍니다.</li>
            </ul>
        </section>
        <script>
            let city = '<%=request.getParameter("city")%>';
            let iata = '<%=request.getParameter("iata")%>';
            if (city !== 'null' && iata !== 'null' ) document.getElementById('airportTo-1').value = `${city}   (${iata})`;
        </script>
        <%@ include file="../../common/footer.jspf" %>
        <script src="../../../JS/airportpicker.js"></script>
        <script src="../../../JS/booking.js"></script>
    </body>
</html>