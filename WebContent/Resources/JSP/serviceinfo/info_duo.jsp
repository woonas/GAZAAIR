<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>듀오 좌석</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content">
            <h3>듀오 좌석</h3>
            <ul class="list-type2">
                <li>'19년 9월 24일 부 판매 개시하며, 9월 27일 출발 비행편부터 적용됩니다.</li>
                <li>듀오 좌석은 혼자 또는 단둘이 여행하기 편리한 A380 기종 2층 창가 쪽 2명 착석 좌석입니다.</li>
                <li>듀오 좌석은 개별 예약이 가능합니다.</li>
                <li>해당 좌석은 항공편의 체크인이 시작되면 (출발 48시간 전) 잔여 좌석에 한해 무료로 배정 가능합니다.<br/>
             		 다만, 이 경우 좌석 수가 제한적일 수 있으니 사전에 좌석 점유를 원하시는 경우 구매·예약하여 주시기 바랍니다.</li>
            </ul>
            <div class="text-align-center">
                <br>
                <a href=""><input type="button" class="blueBtn" id="purchase_list" value="서비스 신청/ 구매내역 확인 페이지 이동"></a>
            </div>
            <br>
            <img src="<%=path%>/Resources/IMG/information/legroom.jpeg" alt="">
            <p class="section-title">구매 운임(편도 기준)</p>
            <table class="table-list">
                <col-group>
                    <col style="width: 28.6%">
                    <col style="width: 14.28%">
                    <col style="width: 14.28%">
                    <col style="width: 14.28%">
                    <col style="width: 14.28%">
                    <col style="width: 14.28%">
                </col-group>
                <tbody>
                    <tr class="bg-blue5">
                        <th>발권처</th>
                        <th>한국</th>
                        <th>중국</th>
                        <th>일본</th>
                        <th>미국</th>
                        <th>영국</th>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-일본, 중국, 동북아</td>
                        <td>10,000원  </td>
                        <td>60CNY</td>
                        <td>1,000JPY</td>
                        <td>10USD</td>
                        <td>7GBP</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-동/서남아</td>
                        <td>20,000원   </td>
                        <td>120CNY</td>
                        <td>2,000JPY</td>
                        <td>20USD</td>
                        <td>15GBP</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-미주, 유럽, 시드니</td>
                        <td>30,000원 </td>
                        <td>150CNY</td>
                        <td>3,000JPY</td>
                        <td>30USD</td>
                        <td>20GBP</td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table class="table-list">
                <col-group>
                    <col style="width: 28.6%">
                    <col style="width: 11.9%">
                    <col style="width: 11.9%">
                    <col style="width: 11.9%">
                    <col style="width: 11.9%">
                    <col style="width: 11.9%">
                    <col style="width: 11.9%">
                </col-group>
                <tbody>
                    <tr class="bg-blue5">
                        <th>발권처</th>
                        <th>유럽(영국제외)</th>
                        <th>홍콩</th>
                        <th>타이페이</th>
                        <th>태국</th>
                        <th>싱가포르</th>
                        <th>시드니</th>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-일본, 중국, 동북아</td>
                        <td>8EUR      </td>
                        <td>70HKD</td>
                        <td>270TWD</td>
                        <td>270THB</td>
                        <td>12SGD</td>
                        <td>13AUD</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-동/서남아</td>
                        <td>15EUR      </td>
                        <td>140HKD</td>
                        <td>530TWD</td>
                        <td>530THB</td>
                        <td>24SGD</td>
                        <td>25AUD</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-미주, 유럽, 시드니</td>
                        <td>25EUR      </td>
                        <td>200HKD</td>
                        <td>800TWD</td>
                        <td>900THB</td>
                        <td>30SGD</td>
                        <td>40AUD</td>
                    </tr>
                </tbody>
            </table>
            <ul class="list-type2">
                <li>좌석 구매처가 한국, 중국, 일본, 미국, 영국, 유럽(영국 제외), 홍콩, 타이베이, 태국, 싱가포르일 경우 출발지 현지 통화를 기준으로 적용하며, 그 외 지역은 구매 당일 미국 달러 환율을 적용한 현지 통화로 구매 가능합니다.</li>
            </ul>
            <p class="section-title">지역별 상세 노선 구분 표</p>
            <table class="table-list">
                <col-group>
                    <col style="width: 28.6%">
                    <col>
                </col-group>
                <tbody>
                    <tr class="bg-blue5">
                        <th>지역구분</th>
                        <th>취항도시</th>
                    </tr>
                    <tr>
                        <td class="text-align-center">일본</td>
                        <td>나리타  </td>
                    </tr>
                    <tr>
                        <td class="text-align-center">동남아</td>
                        <td>홍콩, 방콕</td>
                    </tr>
                    <tr>
                        <td class="text-align-center">미주</td>
                        <td>로스앤젤레스, 뉴욕 </td>
                    </tr>
                    <tr>
                        <td class="text-align-center">유럽</td>
                        <td>프랑크푸르트</td>
                    </tr>
                </tbody>
                <ul class="list-type2">
                <li>노선별 ASIANA 380 운항 스케줄은 예약 시 확인하실 수 있습니다.</li>
                <li>운항 노선은 불가피한 사유로 사전 예고 없이 변경 될 수 있습니다.</li>
            </ul>
            </table>
            
            <p class="section-title">구매 시간 및 구매처</p>
            <table class="table-list">
                <col-group>
                    <col style="width: 33.3%">
                    <col style="width: 33.3%">
                    <col style="width: 33.3%">
                </col-group>
                <tbody>
                    <tr class="bg-blue5">
        
                        <th>구매시간</th>
                        <th>구매처</th>
                    </tr>
                    <tr>
                    	
                        <td class="text-align-center">항공기 출발 361일전 ~ 출발 48시간 전</td>
                        <td class="text-align-center">아시아나항공 예약센터, 시내 지점 및 홈페이지, 모바일앱, 여행사</td>
                    </tr>                 
                </tbody>
            </table>
            <ul class="list-type2">
                <li>듀오 좌석은 항공편의 체크인이 시작되면 (출발 48시간 전) 잔여 좌석에 한해 무료로 배정 가능합니다.<br/>
             		 다만, 이 경우 좌석 수가 제한적일 수 있으니 사전에 좌석 점유를 원하시는 경우 구매·예약하여 주시기 바랍니다.</li>
                <li>단체 그룹 예약(예약 클래스 G)의 경우 예약센터, 시내 지점, 여행사에서 사전 구매 가능 (홈페이지, 모바일 앱 구매 불가)</li>
                <li>다른 항공사에서 발권한 항공권 소지자는 사전 구매 불가능</li>
            </ul>
            
            
            
            <ul class="list-type2 last-note bg-gray5">
                <li class="list-inside-title">유의사항</li>
                <li>공동 운항편 이용 고객, Cabin Baggage (CBBG) 이용 고객, Extra Seat(EXST) 이용 고객은 듀오 좌석 이용이 제한됩니다.</li>
                <li>구매한 옆 좌석에 유아를 동반한 고객이 착석할 수 있습니다.</li>
                <li>듀오 좌석은 일반 좌석과 간격이 동일합니다.</li>
           
                <br><br><br>
                <li class="list-inside-title">환불 규정</li>
                <li>구매한 듀오 좌석은 항공기 출발 48시간 전까지 각 구매처에서 환불 가능합니다.</li>
                <li>출발 48시간 이내에는 변경 및 환불이 불가능합니다.<br/>
                	단, 항공기 결항 및 지연 등 항공사 사정에 의해 좌석 지원이 불가한 경우 환불 가능합니다.</li>
            </ul>
        </section>

        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/information.js"></script>
    </body>
</html>
