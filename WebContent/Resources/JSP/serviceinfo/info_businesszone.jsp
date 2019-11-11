<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>국내선 비즈니스 존</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content">
            <h3>국내선 비즈니스 존</h3>
            <ul class="list-type2">
                <li>'19년 9월 24일 부 판매 개시하며, 9월 27일 출발 비행편부터 적용됩니다.</li>
                <li>국내선 비즈니스 존은 국제선 기종의 (A330,A321에 한정) 비즈니스 좌석으로 이코노미석 서비스가 제공되지만, 보다 쾌적한 여행을 즐기실 수 있습니다.</li>
                <li>해당 좌석은 항공편의 체크인이 시작되면 (출발 24시간 전) 잔여 좌석에 한해 무료로 배정 가능합니다.<br/>다만, 이 경우 좌석 수가 제한적일 수 있으니 사전에 좌석 점유를 원하시는 경우 구매·예약하여 주시기 바랍니다.</li>
                
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
                        <td class="bg-gray5">국내선</td>
                        <td>20,000원</td>
                        <td>120CNY</td>
                        <td>2,000JPY</td>
                        <td>20USD</td>
                        <td>15GBP</td>
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
                        <td class="bg-gray5">국내선</td>
                        <td>15EUR</td>
                        <td>140HKD</td>
                        <td>530TWD</td>
                        <td>530THB</td>
                        <td>24SGD</td>
                        <td>25AUD</td>
                    </tr>
                </tbody>
            </table>
            <ul class="list-type2">
                <li>좌석 구매처가 한국, 중국, 일본, 미국, 영국, 유럽(영국 제외), 홍콩, 타이베이, 태국, 싱가포르일 경우 출발지 현지 통화를 기준으로 적용하며, 그 외 지역은 구매 당일 미국 달러 환율을 적용한 현지 통화로 구매 가능합니다.</li>
            </ul>
            <p class="section-title">아시아나클럽 다이아몬드 이상 등급 회원의 혜택</p>
            <ul class="list-type2">
            	<li>아시아나클럽 다이아몬드, 다이아몬드플러스, 플래티늄 회원 본인은 좌석 가능 시 무료로 국내선 비즈니스 존을 예약할 수 있습니다.</li>
            </ul>
            
            <ul class="list-type2 last-note bg-gray5">
                <li class="list-inside-title">유의사항</li>
                <li>공동 운항편 이용 고객, Cabin Baggage (CBBG) 이용 고객, Extra Seat(EXST) 이용 고객은 비즈니스 존 이용이 제한됩니다.</li>
                <li>반려동물 동반 고객(항공기 기내로 반입하는 경우)은 맨 앞 열 배정 불가합니다.</li>
                <li>구매한 옆 좌석에 유아를 동반한 고객이 착석할 수 있으며 좌석 앞 여유 공간이 있는 경우 다른 승객의 이동 통로로 이용될 수 있습니다.</li>
                <li>국내선 비즈니스 존은 A330, A321 기종에 한하여 이용 가능합니다.</li>
                <li>부산 ↔ 인천 환승전용 내항기 노선은 사전 좌석 구매 불가능 합니다.</li>
                <br><br><br>
                <li class="list-inside-title">환불 규정</li>
                <li>구매한 비즈니스 존 좌석은 항공기 출발 24시간 전까지 각 구매처에서 환불 가능합니다.</li>
                <li>출발 24시간 이내에는 변경 및 환불이 불가능합니다.<br>단, 항공기 결항 및 지연 등 항공사 사정에 의해 좌석 지원이 불가한 경우 환불 가능합니다.</li>
            </ul>
        </section>

        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/information.js"></script>
    </body>
</html>
