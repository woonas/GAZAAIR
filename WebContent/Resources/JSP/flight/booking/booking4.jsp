<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>항공권 예약 - 운임확인 및 최종동의</title>
    <link rel="stylesheet" href="../../../CSS/booking.css">
    <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
    <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
</head>
<body>
<%@ include file="../../common/nav.jspf" %>
    <section class="content">
        <h3>운임확인</h3>
        <ul class="list-type2 last-note">
            <li>운임이 정상적으로 입력되었는지 최종확인 후, 운임 조건 및 규정을 확인하시기 바랍니다.</li>
        </ul>
        <p class="flight-confirm-section-title">여정</p>
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
                        <img src = "../../../IMG/icon/flight-table.svg" alt = "">
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
                    <div class="X"></div>
                    위약금있음
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-eighth trip-num">
                    <div class="font-brown">02</div>
                    <div>2019.09.14(토)</div>
                </div>
                <div class="col-three-eighth trip-detail">
                    <div class="col-fourth">
                        <div>서울 / 김포</div>
                        <div>06:05</div>
                    </div>
                    <div class="col-two-fourth">
                        <img src = "../../../IMG/icon/flight-table.svg" alt = "">
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
                    <div class="X"></div>
                    위약금있음
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
                                <img src = "../../../IMG/icon/flight-table.svg" alt = "">
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
                                <img src = "../../../IMG/icon/flight-table.svg" alt = "">
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
            <div class="total-price bigger-text">
                <div class="row clearfix">
                    <div class="col-fourth">
                        총 결제금액
                    </div>
                     <div class="col-fourth font-blue4">
                         256,000 원
                     </div>
                </div>
            </div>
            <ul class="list-type2">
                <li>2019-09-20 (KST)기준 운임이며, 나중에 구매하시는 경우 선택하신 운임이 적용되지 않을 수 있습니다.</li>
                <li>유류할증료와 세금/제반요금은 구매일/환율에 따라 변동될 수있습니다.</li>
                <li>무료 수하물 허용량을 초과하는 경우 추가 수하물 요금이 부과될 수 있습니다.<a href="service_baggage.html" class="font-brown"> 수하물 안내</a></li>
                <li class="font-brown">타항공사 연결 시나 공동운항의 경우 운항항공사 자체 수하물 규정이 적용 될 수 있으므로 사전에 확인하여 주시기 바랍니다.</li>
            </ul>
        </div>
        
        <p class="flight-confirm-section-title">운임 조건 및 규정</p>
        <div id="regulation-1">
            <p><span class="font-blue4">01</span>서울/김포<span>→</span>제주</p>
            <input type="checkbox" class="hidden" id="fold-1" checked>
            <label for="fold-1"><img src = "../../../IMG/icon/underArrow.png" alt = ""></label>
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
        <div id="regulation-2">
            <p><span class="font-blue4">02</span> 서울/김포 <span>→</span> 제주</p>
            <input type="checkbox" class="hidden" id="fold-2" checked>
            <label for="fold-2"><img src = "../../../IMG/icon/underArrow.png" alt = ""></label>
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
        
        <ul class="list-type4">
            <li>
                <input type="checkbox" class="checkbox1" id="agree_1">
                <label for="agree_1">취소/환불/변경 관련 제약조건 및비용(수수료/위약금)을 포함한 운임규정을 확인하고 이에 동의합니다.</label>
            </li>
            <li>
                <input type="checkbox" class="checkbox1" id="agree_2">
                <label for="agree_2">가자에어 수하물 규정및 타 항공사 공동운항편이 포함된 경우공동운항편 수하물 규정 을 확인하였으며 이에 동의합니다.</label>
            </li>
            <li>
                <input type="checkbox" class="checkbox1" id="agree_3">
                <label for="agree_3">법적고지문 및 기내휴대 및 위탁수하물 운송 제한 물품 안내 국내운송약관 을 확인하였으며 이에 동의합니다.</label>
            </li>
        </ul>
        
        <div class="flex">
            <a href="#" onclick="history.back()"><button class="whiteBtn left">&lt; 이전</button></a>
            <a href="<%=path %>/Resources/JSP/flight/payment/payment.jsp"><button class="right blueBtn">결제 &gt;</button></a>
        </div>
    </section>
    <%@ include file="../../common/footer.jspf" %>
    <script src="../../../JS/booking.js"></script>
</body>
</html>