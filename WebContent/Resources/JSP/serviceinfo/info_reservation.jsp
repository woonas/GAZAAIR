<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>예약안내</title>
    <link rel="stylesheet" href="../../CSS/information.css">
    <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
</head>
<body>
<%@ include file="../common/nav.jspf" %>
<%@ include file="info_nav.jspf" %>
    <section class="content info-reservation"> 
        <h3>예약안내</h3>
        
        <div class="tab-menu1">
            <ul class="clearfix">
                <li class="col-fourth on" id='tab-1'><a href="#none" onclick="return false;">항공권 안내</a></li>
                <li class="col-fourth" id='tab-2'><a href="#none" onclick="return false;">온라인 예약</a></li>
                <li class="col-fourth" id='tab-3'><a href="#none" onclick="return false;">전화 예약</a></li>
                <li class="col-fourth" id='tab-4'><a href="#none" onclick="return false;">Rail&amp;Fly 서비스</a></li>
            </ul>
        </div>   
        
        <div id="tab-1-container">
            <div class="info-banner"> 
                <div class="banner-reservation-1">
                    <div>
                        <p class="banner-title">전자 항공권 (e-Ticket)</p>
                        <p>항공권 결제 시 전자항공권 여정안내서를 개인 이메일, 팩스 등으로 발급하여 드립니다. <br>
                           출입국 신고 및 세관 통과 시 지참하셔야 하므로 전 여정에 소지하여 주시기 바랍니다.<br>
                           발급 받으신 후, 탑승 수속 시 제출하시면 빠르고 간편하게 탑승권을 받으실 수 있습니다.</p>
                        <a href="../booking/booking1.html"><button class="whiteBtn">전자항공권여정안내서 이용안내</button></a>
                    </div>
                </div> 
            </div>
            
            <p class="section-title">항공권 변경 및 환불 </p>
            <div>고객의 요청에 따라 항공권에 기재되어 있는 여정, 운송 항공사, 운임의 등급, 유효기간 등의 변경을 하실 수 있습니다.<br>
            판매운임과 구입처에 따라 정확한 차액 및 취소 규정이 다를 수 있으므로, 해당 구입처나 항공사로 문의하여 주시기 바랍니다.</div>
            <div class="row table-tab" id="table-tab-1">
                <ul>
                    <li>
                        <input type="radio" id="table-tab-1-1" name="table-tab-1" checked>
                        <label for="table-tab-1-1">
                            항공권 변경
                        </label>
                    </li>
                    <li>
                        <input type="radio" id="table-tab-1-2" name="table-tab-1">
                        <label for="table-tab-1-2">
                            항공권 환불/취소
                        </label>
                    </li>
                    <li>
                        <input type="radio" id="table-tab-1-3" name="table-tab-1">
                        <label for="table-tab-1-3">
                            환불금 수령 규정 안내
                        </label>
                    </li>
                    <li>
                        <input type="radio" id="table-tab-1-4" name="table-tab-1">
                        <label for="table-tab-1-4">
                            예약부도 위약금
                        </label>
                    </li>
                </ul>
            </div>
            <div id="table-tab-1-1-container">
                <div class="table-form2">
                    <div class="row clearfix">
                        <div class="col-fourth table-row-title">
                            국제선 항공권 변경
                        </div>
                        <div class="col-three-fourth">
                            <ul class="list-type2">
                                <li>항공권의 변경은 구매 항공권의 운임 규정 및 구입처에 따라 적용 규정이 다를 수 있으므로 해당 구입처로 문의하여 주시기 바랍니다.</li>
                                <li>해외발 항공권의 경우 판매 지역과의 운임계산 내역 확인이 필요하므로 2~3일의 소요기간(시차 감안)이 필요합니다.</li>
                                <li>항공권의 변경이 가능한 경우에는 운임 규정에 따라 운임 차액 및 세금차액, 수수료가 발생될 수 있습니다. 정확한 안내를 위하여 해당 구입처로 문의하여 주시기 바랍니다.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-fourth table-row-title">
                            국내선 항공권 변경
                        </div>
                        <div class="col-three-fourth">
                            <ul class="list-type2">
                                <li>국내선 항공운임은 탑승일자, 시간, 구간에 따라 상이하므로 새로운 여정과 이전 여정의 운임차액을 지불하실 수 있습니다. 또한 환불처리 후 새로운 항공권을 발행가능 합니다.</li>
                                <li>국내선 항공권의 유효기간은 일반적으로 1년이며, 추가연장은 가능하지 않으므로 기간 내에 사용하셔야 합니다.</li>
                                <li>항공권의 종류에 따라 유효기간이 1년 미만인 경우 등 변경에 관련된 제한사항이 있을 수 있으므로 자세한 내용은 구입처 또는 영업소로 문의하여 주시기 바랍니다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <p class="section-title">좌석승급 </p>
                <div>구입하신 항공권의 좌석등급에서 상위의 좌석등급으로 변경이 가능합니다. <br>
                상위의 좌석등급으로 변경하실 때에는 마일리지 공제, 상위 좌석등급과 운임 차액 재계산을 통하여 좌석승급을 해드립니다.</div>
                
                <div class="table-form2">
                    <div class="row clearfix">
                        <div class="col-fourth table-row-title">
                            마일리지 공제로 <br>
                            좌석승급 하기 <br>
                            <a href="../booking/booking1.html"><button class="whiteBtn">나의 마일리지</button></a>
                        </div>
                        <div class="col-three-fourth">
                            <ul class="list-type2">
                                <li>고객께서 보유하신 가자에어클럽 적립 마일리지를 공제하여 상위등급의 좌석으로 승급하여 드립니다.</li>
                                <li>단, 한번에 두 단계 차상급으로의 좌석승급은 가능하지 않습니다. 또한 아래의 경우에는 차상급 좌석 승급이 불가하오니 이용에 유의하시기 바랍니다.</li>
                                <li class="bigger-text margin-left12">[좌석승급 불가 항공권]</li>
                                <li>항공권 fare basis란에 50% 초과하여 할인율이 표기된 항공권</li>
                                <li>차상급 좌석승급 불가 조건으로 판매된 특별 할인 항공권</li>
                                <li>마일리지 항공권</li>
                                <li>무료 항공권 또는 IT 운임 항공권</li>
                                <li>단체요금 항공권(예약 클래스 G)</li>
                                <li>스타얼라이언스 및 그 외의 항공사에서 판매된 항공권 (탑승 구간이 U,Q,K,S,V,L,W,T,G 클래스)</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-fourth table-row-title">
                            운임 차액 지불로 <br>
                            좌석승급 하기
                        </div>
                        <div class="col-three-fourth">
                            <ul class="list-type2">
                                <li>항공권상의 기재된 좌석등급에 해당하는 운임과 상위 좌석등급에 해당하는 운임과의 차액을 재계산한 후 그 차액을 지불하시고 좌석승급을 할 수 있습니다. 단 변경제한 조건이 있는 항공권의 경우는 제외됩니다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div id="table-tab-1-2-container" class="hidden">
                <div class="table-form2">
                    <div class="row clearfix">
                        <div class="col-fourth table-row-title">
                            항공권 환불/취소 안내
                        </div>
                        <div class="col-three-fourth">
                            <ul class="list-type2">
                                <li>항공권 환불/취소는 구입처에 따라 규정이 다를 수 있으므로 구입하신 구입처로 문의하시기 바랍니다.</li>
                                <li>국내선 환불 신청 기한은 항공권 유효기간 만료일 이내입니다. (2016년 8월 1일 발권분부터 적용)</li>
                                <li>국제선 환불 신청 기한은 항공권 유효기간 만료일로부터 30일 이내입니다. (2016년 5월 20일 발권분부터 적용)</li>
                                <li>환불 신청 시, 항공권 명의인이 신청해야 하며 대리인이 신청할 경우에는 추가 서류가 발생 할 수 있으니 구입하신 발행처로 문의하시기 바랍니다.</li>
                                <li>한국발 국제선 전체미사용 항공권의 경우 환불 접수시점에 따라 환불 위약금이 차등 부과됩니다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            <div id="table-tab-1-3-container" class="hidden">
                <div class="table-form2">
                    <div class="row clearfix">
                        <div class="col-fourth table-row-title">
                            환불금 수령 규정 안내
                        </div>
                        <div class="col-three-fourth">
                            <ul class="list-type2">
                                <li>현금 구매 항공권은 항공권 명의인의 계좌로 입금 받으실 수 있습니다.</li>
                                <li>신용카드 구매 항공권은 현금으로 수령 할 수 없으며, 해당 카드사로 환불 정보가 이관되어 카드사 규정에 의해 지급됩니다.</li>
                                <li>신용카드로 구매한 항공권의 환불금은 고객의 결제일/카드사의 처리주기 등에 따라 수령시기가 각각 다르므로 정확한 환불금의 처리 절차는 환불금 승인 이후 영업일 기준 2~5일 경과 후, 해당 카드사로 문의하시기 바랍니다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            <div id="table-tab-1-4-container" class="hidden">
                <div class="table-form2">
                    <div class="row clearfix">
                        <div class="col-fourth table-row-title">
                            예약부도 위약금 <br>
                            (No-show penalty)
                        </div>
                        <div class="col-three-fourth">
                            <div>항공기 출발 시각 이전까지 항공편 예약취소 없이 탑승 하지 않거나, 탑승수속 후 탑승을 하지 않는 경우에는 예약 부도 위약금 (No-show penalty)이 부과되며, 변경 또는 환불 시 해당 항공권의 규정에 따라 별도로 재발행 수수료 및 환불 위약금이 적용됩니다.</div>
                            <br>
                            <div>- 항공기 출발시간 이전까지 확약된 항공편의 취소를 통보하지 않은 고객 (No-show penalty)</div>
                            <table class="table-list">
                                <colgroup>
                                    <col style="width: 25%;">
                                    <col style="width: 25%;">
                                    <col style="width: 25%;">
                                    <col style="width: 25%;">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th rowspan="2" class="bg-blue5">항공권 발권일 기준</th>
                                        <th colspan="2" scope="col" class="bg-blue5">국제선</th>
                                        <th scope="col" class="bg-blue5">국내선</th>
                                    </tr>
                                    <tr>
                                        <td class="bg-gray5">한국지역에서 징수 시</td>
                                        <td class="bg-gray5">해외 지역에서 징수 시</td>
                                        <td class="bg-gray5">한국지역에서 징수 시</td>
                                    </tr>
                                    <tr>
                                        <th class="bg-blue5">19년 2월 28일 이전 발권 </th>
                                        <td>KRW 100,000</td>
                                        <td>USD 100.00</td>
                                        <td rowspan="2">KRW 8,000 (편도 금액)</td>
                                    </tr>
                                    <tr>
                                        <th class="bg-blue5">19년 3월 01일 이후 발권</th>
                                        <td>KRW 120,000</td>
                                        <td>USD 120.00</td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>
                            <div>- 탑승수속 후 탑승을 하지 않은 고객 (Gate No-show penalty)</div>
                            <table class="table-list">
                                <col-group>
                                    <col style="width: 50%;">
                                    <col style="width: 50%;">
                                </col-group>
                                <tbody>
                                    <tr>
                                        <th colspan="2" scope="col" class="bg-blue5">국제선</th>
                                    </tr>
                                    <tr>
                                        <td>한국지역에서 징수 시</td>
                                        <td>기타 해외 지역에서 징수 시</td>
                                    </tr>
                                    <tr>
                                        <td>KRW 300,000</td>
                                        <td>USD 300</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="font-brown">* 발권일 기준 2019년 1월 10일부터 예약 부도 위약금이 차등 적용됩니다.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="tab-2-container" class="hidden">
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
        
            <div class="row table-tab" id="table-tab-2">
                <ul>
                    <li>
                        <input type="radio" id="table-tab-2-1" name="table-tab-2" checked>
                        <label for="table-tab-2-1">
                            국제선
                        </label>
                    </li>
                    <li>
                        <input type="radio" id="table-tab-2-2" name="table-tab-2">
                        <label for="table-tab-2-2">
                            한국 국내선
                        </label>
                    </li>
                    <li>
                        <input type="radio" id="table-tab-2-3" name="table-tab-2">
                        <label for="table-tab-2-3">
                            PC 결제방식
                        </label>
                    </li>
                    <li>
                        <input type="radio" id="table-tab-2-4" name="table-tab-2">
                        <label for="table-tab-2-4">
                            모바일웹 결제방식
                        </label>
                    </li>
                    <li>
                        <input type="radio" id="table-tab-2-5" name="table-tab-2">
                        <label for="table-tab-2-5">
                            태블릿 결제방식
                        </label>
                    </li>
                </ul>
            </div>
            
            <div id="table-tab-2-1-container">
                <div class="table-form2">
                    <div class="row clearfix">
                        <div class="col-fourth table-row-title">
                            국제선 항공권 예약
                        </div>
                        <div class="col-three-fourth">
                            <ul class="list-type2">
                                <li>국제선 항공권 온라인예약은 조회일로부터 최대 361일까지 예약이 가능합니다.</li>
                                <li>구매하신 항공권의 유효기간은 운임조건에 따라 다르오니 예약 시 운임조건을 꼭 확인하시기 바랍니다.</li>
                                <li>국제선 예약 시 이름이 여권과 동일하지 않을 경우 출발지/도착지 공항에서 탑승/입국이 거절될 수 있고 가자에어항공에서는 이에 대한 책임을 지지 않습니다.</li>
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
            
            <div id="table-tab-2-2-container" class="hidden"></div>
            
            <div id="table-tab-2-3-container" class="hidden"></div>
            
            <div id="table-tab-2-4-container" class="hidden"></div>
            
            <div id="table-tab-2-5-container" class="hidden"></div>
        </div>
        
        <div id="tab-3-container" class="hidden">
            <div class="info-banner"> 
                <div class="banner-reservation-3">
                    <div>
                        <p class="banner-title">전화예약</p>
                        <p>가자에어항공의 국내/국제선 구간을 전화로 예약하시는 고객께서는 <br>
                        신용카드로 항공권 구매가 가능하며 공항에서 직접 항공권(탑승권)을 발급 받으시면 됩니다.</p>
                    </div>
                </div> 
            </div>
        </div>
        
        <div id="tab-4-container" class="hidden">
            <div class="info-banner"> 
                <div class="banner-reservation-4">
                    <div>
                        <p class="banner-title">Rail&Fly 서비스</p>
                        <p>가자에어항공의 서울-프랑크푸르트 노선 이용 고객께 독일철도(Deutsche Bahn)를 저렴하게<br>
                           이용하실 수 있도록 혜택을 드리는 항공-철도간 연계 운송 서비스 입니다.</p>
                    </div>
                </div> 
            </div>
            
            <div class="table-form2">
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                        서비스 대상 고객
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>인천-프랑크푸르트 가자에어항공편 탑승 후 계속해서 독일 내 주요 도시로 여행하시는 고객 또는 독일 내 주요 도시로부터 프랑크푸르트를 경유하여 인천행 가자에어항공편을 탑승하시는 고객</li>
                            <li class="notice-text">※ 단, 보너스 및 일부 특가 항공권 이용 불가</li>
                            <br>
                            <li class="notice-text">※항공권의 첫 출발 구간이 인천-프랑크푸르트, 혹은 프랑크푸르트-인천 가자에어 운항편인 경우에만 서비스 추가 가능</li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                        서비스 대상 도시
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>프랑크푸르트 공항역과 독일철도(Deutsche Bahn)로 연결되는 독일 내 주요 도시 구간</li>
                            <li class="notice-text">※ 단, Thalys, DB Autozug, ICE-Sprinter 및 야간열차 등의 특별 열차는 이용에 제한이 있을 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                        이용안내
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>가자에어항공 프랑크푸르트 노선을 이용하시는 고객 중 독일철도 서비스가 필요하신 경우 항공권 구입시 Rail&Fly 서비스를 신청하시면 됩니다.</li>
                            <li>항공편 출발 및 출발 전일, 도착 및 도착 익일 날짜에 운행하는 독일철도에 한하여 예약 및 발권이 가능합니다.</li>
                            <li>Rail&Fly 서비스 신청시 승차권 발급번호(Pickup Number)가 항공권상에 표기되며, 열차 탑승 전 고객이 Rail Station 내 무인탑승수속기(Ticket Vending Machine)를 이용하시어 직접 승차권 발급번호를 입력하고 승차권을 발급 받으신 후 해당 열차에 탑승하시면 됩니다.</li>
                            <li>철도 승차권은 탑승 최대 72시간 전부터 발행 가능합니다.</li>
                            <li>승차권 발급번호(Pickup Number)를 잊어버리신 경우, Information Counter에서 신분증을 제시하고 확인하실 수 있습니다.</li>
                            <li>독일철도 승차권은 열차 편명 및 좌석 지정없이 발권되고 있어, 여유 좌석이 있는 경우에 한하여 좌석 이용이 가능합니다.</li>
                            <li>사전에 이용하실 기차편과 좌석의 예약을 원하는 경우, 독일철도 홈페이지(www.bahn.de) 또는 철도역 발매창구역에 설치된 자동판매기를 통해 소정의 수수료를 지불하신 후 예약이 가능합니다. (단, 당일예약불가)</li>
                            <li>첫 구간 프랑크푸르트 출발편의 경우 프랑크푸르트 여객지점으로 문의. <br>
                            ( Tel. +49 (0)69 9210 190 / E-mail : reservationgermany@flyasiana.com) <br>
                            첫 구간 인천 출발편의 경우 고객 센터로 문의 (+82-2-2669-8000)</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%@ include file="../common/footer.jspf" %>
    
    <script src="../../JS/common.js"></script>
    <script src="../../JS/information.js"></script>
</body>
</html>