<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>예약안내</title>
    <link rel="stylesheet" href="../../CSS/information.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
    <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
</head>
<body>
<%@ include file="../common/nav.jspf" %>
    <section class="content info-reservation"> 
        <h3>예약안내</h3>
        
        <div class="tab-menu1">
            <ul class="clearfix">
                <li class="col-fourth" id='tab-1'><a href="#none">항공권 안내</a></li>
                <li class="col-fourth on" id='tab-2'><a href="#none">온라인 예약</a></li>
                <li class="col-fourth" id='tab-3'><a href="#none">전화 예약</a></li>
                <li class="col-fourth" id='tab-4'><a href="#none">Rail&amp;Fly 서비스</a></li>
            </ul>
        </div>   
        
        <div id="tab-1-container" class="hidden">
            <div class="info-banner"> 
                <div class="banner-reservation-1"> 
                    <div>
                        <p class="banner-title">쉽고 편리한 온라인 예약을 이용해보세요!</p> 
                        <p>PC는 물론, 모바일로도 간편하게 예약 가능!</p> 
                        <a href="../booking/booking1.html"><button class="whiteBtn">항공권 예약</button></a>
                    </div>
                </div> 
            </div>
        </div>
        
        <div id="tab-2-container">
            <div class="info-banner"> 
                <div class="banner-reservation-2"> 
                    <div>
                        <p class="banner-title">쉽고 편리한 온라인 예약을 이용해보세요!</p> 
                        <p>PC는 물론, 모바일로도 간편하게 예약 가능!</p> 
                        <a href="../booking/booking1.html"><button class="whiteBtn">항공권 예약</button></a>
                    </div>
                </div> 
            </div>
            
        
            <p class="info-subtitle">온라인 항공권 예약</p>
        
            <div class="row table-tab" id="table-tab-1">
                <ul>
                    <li>
                        <input type="radio" id="table-tab-1-1" name="online-reservation-subtab" checked>
                        <label for="table-tab-1-1">
                            국제선
                        </label>
                    </li>
                    <li>
                        <input type="radio" id="table-tab-1-2" name="online-reservation-subtab">
                        <label for="table-tab-1-2">
                            한국 국내선
                        </label>
                    </li>
                    <li>
                        <input type="radio" id="table-tab-1-3" name="online-reservation-subtab">
                        <label for="table-tab-1-3">
                            PC 결제방식
                        </label>
                    </li>
                    <li>
                        <input type="radio" id="table-tab-1-4" name="online-reservation-subtab">
                        <label for="table-tab-1-4">
                            모바일웹 결제방식
                        </label>
                    </li>
                    <li>
                        <input type="radio" id="table-tab-1-5" name="online-reservation-subtab">
                        <label for="table-tab-1-5">
                            태블릿 결제방식
                        </label>
                    </li>
                </ul>
            </div>
            
            <div id="table-tab-1-1-container">
                <div class="table-form2">
                    <div class="row clearfix">
                        <div class="col-fourth table-row-title">
                            국제선 항공권 예약
                        </div>
                        <div class="col-three-fourth">
                            <ul class="list-type2">
                                <li>국제선 항공권 온라인예약은 조회일로부터 최대 361일까지 예약이 가능합니다.</li>
                                <li>구매하신 항공권의 유효기간은 운임조건에 따라 다르오니 예약 시 운임조건을 꼭 확인하시기 바랍니다.</li>
                                <li>국제선 예약 시 이름이 여권과 동일하지 않을 경우 출발지/도착지 공항에서 탑승/입국이 거절될 수 있고 아시아나항공에서는 이에 대한 책임을 지지 않습니다.</li>
                                <li>결제정보(카드 소유자 성명 등)는 반드시 영문으로 입력하여야 하며, 탑승하는 본인 명의의 카드만 사용할 수 있으며, 원칙적으로 타인의 카드는 사용할 수 없습니다. 공항 탑승 수속 시 탑승자 성명과 카드 명의가 상이할 경우 카드 소지 여부를 확인할 수 있습니다. 카드 확인이 불가할 경우 당사 신용거래조건 및 국제운송약관 제3조에 의거 탑승을 거부할 수 있으므로 각별히 주의해 주시기 바랍니다. 당사는 상기 사유로 인하여 탑승이 거부되는 경우 그로 인한 책임을 부담하지 않습니다.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-fourth table-row-title">
                            타이틀
                        </div>
                        <div class="col-three-fourth">
                            <ul class="list-type2">
                                <li>내용</li>
                                <li class="notice-text">※ 단, 보너스 및 일부 특가 항공권 이용 불가</li>
                                <li class="bigger-text">[dddd]</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            <div id="table-tab-1-2-container" class="hidden"></div>
            
            <div id="table-tab-1-3-container" class="hidden"></div>
            
            <div id="table-tab-1-4-container" class="hidden"></div>
            
            <div id="table-tab-1-5-container" class="hidden"></div>
        </div>
        
        <div id="tab-3-container" class="hidden">
            <div class="info-banner"> 
                <div class="banner-reservation-1"> 
                    <div>
                        <p class="banner-title">쉽고 편리한 온라인 예약을 이용해보세요!</p> 
                        <p>PC는 물론, 모바일로도 간편하게 예약 가능!</p> 
                        <button class="whiteBtn">항공권 예약</button> 
                    </div>
                </div> 
            </div>
        </div>
        
        <div id="tab-4-container" class="hidden">
            <div class="info-banner"> 
                <div class="banner-reservation-1"> 
                    <div>
                        <p class="banner-title">쉽고 편리한 온라인 예약을 이용해보세요!</p> 
                        <p>PC는 물론, 모바일로도 간편하게 예약 가능!</p> 
                        <button class="whiteBtn">항공권 예약</button> 
                    </div>
                </div> 
            </div>
        </div>
        
        
        <ul class="list-type2 last-note bg-gray6">
            <li class="list-inside-title">유의사항</li>
            <li>국내선 항공권 구매 및 예약 변경은 해당 항공편 출발 30분전까지 가능합니다.</li>
            <li>국내선 유류할증료를 확인하세요.</li>
            <li>구매 후 탑승시점에 유류할증료가 인상되어도 차액을 징수하지 않으며 인하되어도 환급되지 않습니다.</li>
            <li>편도로 각각 구매하시거나, 전체 환불 후 재 구매하여 주시기 바랍니다.</li>
        </ul>
        
    </section>
    
    <script src="../../JS/common.js"></script>
    <script src="../../JS/information.js"></script>
    <%@ include file="../common/footer.jspf" %>
</body>
</html>