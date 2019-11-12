<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>이코노미 스마티움</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content">
            <h3>이코노미 스마티움</h3>
            <ul class="list-type2">
                <li>A350 이코노미 스마티움 좌석은, 일반석보다 다리 공간이 4인치 더 넓은 좌석으로 편안하고 안락한 여행을 즐기실 수 있습니다.</li>
                <li>비즈니스석 바로 뒤 10열부터 14열에 위치하고 있으며 빠른 탑승이 가능합니다.</li>
                <li>비행시간에 따라 특별한 기내 서비스를 제공 받으실 수 있습니다.</li>
                <li>이코노미 스마티움 좌석에 대한 세부 내용은 하기 안내를 참조하여 주시고 이코노미 스마티움 구매는 홈페이지/모바일에서 직접 구매 또는 아시아나 예약센터로 문의하여 주시기 바랍니다.</li>
            </ul>
            <div class="text-align-center">
                <br>
                <a href=""><input type="button" class="blueBtn" id="purchase_list" value="서비스 신청/ 구매내역 확인 페이지 이동"></a>
            </div>
            <br>
            <img src="<%=path%>/Resources/IMG/information/legroom.jpeg" alt="">
            <p class="section-title">구매 운임(편도 기준)</p>
            <p>이코노미 스마티움 좌석 구매일 기준 2019.1.25 이후</p>
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
                		<th>구분</th>
                		<th colspan="6">발권처</th>
                	</tr>
                    <tr class="bg-blue5">
                        <th>노선</th>
                        <th>한국</th>
                        <th>중국</th>
                        <th>일본</th>
                        <th>미국</th>
                        <th>영국</th>
                        <th>유럽(영국제외)</th>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-일본,중국,동북아</td>
                        <td>30,000원     </td>
                        <td>150CNY</td>
                        <td>3,000JPY</td>
                        <td>30USD </td>
                        <td>20GBP</td>
                        <td>25EUR</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-동/서남아</td>
                        <td>50,000원    </td>
                        <td>300CNY</td>
                        <td>5,000JPY</td>
                        <td>50USD</td>
                        <td>35GBP</td>
                        <td>40EUR</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-미주,유럽,시드니</td>
                        <td>170,000원   </td>
                        <td> 1,000CNY</td>
                        <td>17,000JPY</td>
                        <td> 170USD</td>
                        <td> 120GBP</td>
                        <td>140EUR</td>
                    </tr>
                </tbody>
            </table>
            <br>
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
	                	<th>구분</th>
	                	<th colspan="5">발권처</th>
	                </tr>
                    <tr class="bg-blue5">
                        <th>노선</th>
                        <th>홍콩</th>
                        <th>타이베이</th>
                        <th>태국</th>
                        <th>싱가포르</th>
                        <th>시드니</th>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-일본,중국,동북아</td>
                        <td>200HKD</td>
                        <td>800TWD</td>
                        <td>900THB</td>
                        <td>270THB</td>
                        <td>30SGD</td>
                       
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-동/서남아</td>
                        <td>350HKD    </td>
                        <td>1,400TWD</td>
                        <td> 1,400THB</td>
                        <td>60SGD</td>
                        <td>70AUD</td>
                        
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-미주,유럽,시드니</td>
                        <td>1,200HKD    </td>
                        <td>4,500TWD</td>
                        <td> 4,800THB</td>
                        <td>200SGD</td>
                        <td>210AUD</td>
                       
                    </tr>
                </tbody>
            </table>
            <ul class="list-type2">
                <li>이코노미 스마티움 좌석 구매처가 상기 표 내에 있을 경우 현지 통화를 기준으로 적용하며,  그 외 지역에서는 당일 미국 달러 환율을 적용한 현지 통화로 구매 가능합니다. </li>
            </ul>
            <p class="section-title">지역별 상세 노선</p>
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
                        <td>오사카</td>
                    </tr>
                    <tr>
                        <td class="text-align-center">중국</td>
                        <td>선전, 상하이(푸동)</td>
                    </tr>
                    <tr>
                        <td class="text-align-center">동남아</td>
                        <td>싱가폴, 호찌민 </td>
                    </tr>
                    <tr>
                        <td class="text-align-center">미주</td>
                        <td>샌프란시스코, 로스앤젤레스, 시애틀</td>
                    </tr>
                    <tr>
                        <td class="text-align-center">유럽</td>
                        <td>프랑크푸르트</td>
                    </tr>
                </tbody>
                <ul class="list-type2">
                <li>노선별 ASIANA 350 운항 스케줄은 예약 시 확인하실 수 있습니다.</li>
                <li>운항 노선은 불가피한 사유로 사전 예고 없이 변경 될 수 있습니다.</li>
            </ul>
            </table>
            
            <p class="section-title">구매 대상</p>
            <ul class="list-type2">
                <li>국제선 아시아나항공 운항편의 항공권 결제가 완료된 고객</li>
                <li>이용 제한 고객 : 공동 운항편 이용 고객, Cabin Baggage(CBBG) 이용 고객, Extra Seat(EXST) 이용 고객</li>
                <li>단체 그룹 예약(예약클래스 G)의 경우 예약센터, 시내지점, 여행사, 공항에서 구매 가능 (홈페이지, 모바일 앱 구매 불가)</li>
                <li>다른 항공사에서 발권한 항공권 소지자는 탑승 48시간 내의 항공편에 한하여 공항 현장 구매 가능 </li>
            </ul>
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
                        <td class="text-align-center">아시아나항공 예약센터, 시내 지점 및 공항 발권 카운터, 홈페이지, 모바일앱, 여행사</td>
                    </tr>   
                     <tr>
                        <td class="text-align-center">항공기 출발 48시간 ~ 탑승수속 마감 전</td>
                        <td class="text-align-center">공항 체크인 카운터</td>
                    </tr>                          
                </tbody>
            </table>
            <p class="section-title">A350-900 이코노미 스마티움 좌석 배치도 안내</p>
            <p class="section-title">이코노미 스마티움 서비스 소개</p>

            <ul class="list-type2 last-note bg-gray5">
                <li class="list-inside-title">유의사항</li>
                <li>항공기 출발 48시간 전까지 환불이 가능하며, 48시간 이내에는 변경 및 환불이 불가능합니다. 단, 항공사 사정에 의해 해당 좌석 지원이 불가능한 경우 환불 가능합니다.</li>
                <li>출발 48시간 전 예약센터, 시내지점, 공항 발권카운터, 홈페이지, 모바일 앱, 여행사에서 구매한 좌석은 각 구매처에서 환불 가능 합니다.</li>
                <li>구매한 옆 좌석에 유아를 동반한 고객이 착석할 수 있습니다.</li>
                <li>10열 좌석은 앞 여유 공간이 다른 승객의 통로로 이용될 수 있습니다.</li>
                <li>유아용 요람 (Baby Bassinet) 설치 가능한 좌석을 구매하시고 해당 서비스 예약을 원하시는 고객님은 아시아나 예약센터로 항공편 출발 72시간 전까지<br/> 신청하여 주시기 바랍니다.</li>
                <li>반려동물 동반 고객(항공기 기내로 반입하는 경우)은 맨 앞 10열 배정 불가합니다.</li>
                <li>인천 출발 장거리 (미주, 유럽, 호주) 노선 이코노미 스마티움 구매고객에게는 인천공항 비즈니스 라운지를 제공해 드립니다.</li>

            </ul>
        </section>

        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/information.js"></script>
    </body>
</html>
