<%--
  Created by IntelliJ IDEA.
  User: gyzz
  Date: 11/8/19
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>레그룸 좌석</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content">
            <h3>레그룸 좌석</h3>
            <ul class="list-type2">
                <li>레그룸 좌석은 일반 좌석 대비 다리 공간이 더 여유로운 좌석입니다.</li>
                <li>해당 좌석은 일반 좌석에 비해 최소 16cm 더 넓으며 이코노미 클래스 각 구역별 가장 앞 열에 위치하고 있습니다.</li>
                <li>기종별 해당 좌석 위치 및 특이 사항은 기종별 레그룸 좌석 안내를 참조하여 주시기 바랍니다.</li>
                <li>비상구석도 사전에 예매하여 편리하게 이용하실 수 있습니다.</li>
            </ul>
            <div class="text-align-center">
                <br>
                <a href=""><input type="button" class="blueBtn" id="purchase_list" value="서비스 신청/ 구매내역 확인 페이지 이동"></a>
            </div>
            <br>
            <img src="<%=path%>/Resources/IMG/information/legroom.jpeg" alt="">
            <p class="section-title">구매 운임(편도 기준)</p>
            <p>레그룸 좌석 발권일 기준 19.1.25. 이후</p>
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
                        <td>30,000원</td>
                        <td>150CNY</td>
                        <td>3,000JPY</td>
                        <td>30USD</td>
                        <td>20GBP</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-동/서남아</td>
                        <td>50,000원</td>
                        <td>300CNY</td>
                        <td>5,000JPY</td>
                        <td>50USD</td>
                        <td>35GBP</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-미주, 유럽, 시드니</td>
                        <td>150,000원</td>
                        <td>900CNY</td>
                        <td>15,000JPY</td>
                        <td>150USD</td>
                        <td>105GBP</td>
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
                        <td>25EUR</td>
                        <td>200HKD</td>
                        <td>800TWD</td>
                        <td>900THB</td>
                        <td>30SGD</td>
                        <td>40AUD</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-일본, 중국, 동북아</td>
                        <td>40EUR</td>
                        <td>350HKD</td>
                        <td>1,400TWD</td>
                        <td>1,400THB</td>
                        <td>60SGD</td>
                        <td>70AUD</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국-일본, 중국, 동북아</td>
                        <td>120EUR</td>
                        <td>1,000HKD</td>
                        <td>4,000TWD</td>
                        <td>4,300THB</td>
                        <td>180SGD</td>
                        <td>190AUD</td>
                    </tr>
                </tbody>
            </table>
            <ul class="list-type2">
                <li>레그룸 좌석 구매처가 한국, 중국, 일본, 미국, 영국, 유럽(영국제외), 홍콩, 타이베이, 태국, 싱가포르일 경우 출발지 현지 통화를 기준으로 적용하며, 그 외 지역은 구매 당일 미국 달러 환율을 적용한 현지 통화로 구매 가능합니다.</li>
            </ul>
            <p class="section-title">지역별 상세 노선 구분 표</p>
            <p>레그룸 좌석 발권일 기준 19.1.25. 이후</p>
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
                        <td>나고야, 도쿄, 미야자키, 삿포로, 센다이, 오사카, 오키나와, 후쿠오카</td>
                    </tr>
                    <tr>
                        <td class="text-align-center">중국/동북아</td>
                        <td>광저우, 구이린, 난징, 다롄, 베이징, 사할린, 상하이, 선양, 선전, 시안, 옌지, 옌청, 옌타이, 웨이하이, 창사, 창춘, 청두, 충칭, 칭다오, 타이베이, 텐진, 하바로프스크, 하얼빈, 항저우, 홍콩,울란바타르</td>
                    </tr>
                    <tr>
                        <td class="text-align-center">동남아/사이판</td>
                        <td>다낭, 마닐라, 방콕, 사이판, 세부, 싱가포르, 자카르타, 클라크필드, 팔라우, 푸껫, 프놈펜, 하노이, 호찌민</td>
                    </tr>
                    <tr>
                        <td class="text-align-center">서남아</td>
                        <td>델리, 알마티, 타슈켄트</td>
                    </tr>
                    <tr>
                        <td class="text-align-center">미주</td>
                        <td>뉴욕, 로스앤젤레스, 샌프란시스코, 시애틀, 시카고, 호놀룰루</td>
                    </tr>
                    <tr>
                        <td class="text-align-center">유럽</td>
                        <td>런던, 로마, 바르셀로나, 베네치아, 이스탄불, 파리, 프랑크푸르트</td>
                    </tr>
                    <tr>
                        <td class="text-align-center">대양주</td>
                        <td>시드니</td>
                    </tr>
                </tbody>
            </table>
            
            <p class="section-title">구매 시간 및 구매처</p>
            <table class="table-list">
                <col-group>
                    <col style="width: 50%">
                    <col style="width: 50%">
                </col-group>
                <tbody>
                    <tr class="bg-blue5">
                        <th>구매시간</th>
                        <th>구매처</th>
                    </tr>
                    <tr>
                        <td >항공기 출발 361일전 ~ 출발 48시간 전	</td>
                        <td class="text-align-center">가자에어 예약센터, 시내 지점 및 공항 발권 카운터, 홈페이지, 모바일앱, 여행사</td>
                    </tr>
                    <tr>
                        <td class="text-align-center">항공기 출발 48시간 ~ 탑승수속 마감 전	</td>
                        <td class="text-align-center">공항 체크인 카운터</td>
                    </tr>
                </tbody>
            </table>
            <ul class="list-type2">
                <li>단체 그룹 예약(예약 클래스 G)의 경우 예약 센터, 시내 지점, 여행사, 공항에서 구매 가능 (홈페이지, 모바일 앱 구매 불가)</li>
                <li>다른 항공사에서 발권한 항공권 소지자는 출발 48시간 이내 공항 현장에서 구매 가능</li>
            </ul>
            
            <p class="section-title">기종별 레그룸 좌석 배치도 안내</p>
            <table class="table-list airplane-table">
                <col-group>
                    <col style="width: 25%">
                    <col style="width: 25%">
                    <col style="width: 25%">
                    <col style="width: 25%">
                </col-group>
                <tbody>
                    <tr>
                        <td class="text-align-center">
                            <img src="../../IMG/information/airplane/img_airplain_A380-800.png" alt="">
                            <br>
                            <div>
                                <div>A380-800</div>
                                <br>
                                <a href=""><input type="button" value="배치도" class="whiteBtn"></a>
                                <br>
                            </div>
                        </td>
                        <td class="text-align-center">
                            <img src="../../IMG/information/airplane/img_airplain_B747-400_B747400COMBI.png" alt="">
                            <br>
                            <div>
                                <div>B747-400 / B747-400COMBI</div>
                                <br>
                                <a href=""><input type="button" value="배치도" class="whiteBtn"></a>
                                <br>
                            </div>
                        </td>
                        <td class="text-align-center">
                            <img src="../../IMG/information/airplane/img_airplain_a350.png" alt="">
                            <br>
                            <div>
                                <div>A350-900</div>
                                <br>
                                <a href=""><input type="button" value="배치도" class="whiteBtn"></a>
                                <br>
                            </div>
                        </td>
                        <td class="text-align-center">
                            <img src="../../IMG/information/airplane/img_airplain_B777.png" alt="">
                            <br>
                            <div>
                                <div>B777</div>
                                <br>
                                <input type="button" value="배치도" class="whiteBtn">
                                <br>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-align-center">
                            <img src="../../IMG/information/airplane/img_airplain_A330-300.png" alt="">
                            <br>
                            <div>
                                <div>A330-300</div>
                                <br>
                                <a href=""><input type="button" value="배치도" class="whiteBtn"></a>
                                <br>
                            </div>
                        </td>
                        <td class="text-align-center">
                            <img src="../../IMG/information/airplane/img_airplain_B767-300.png" alt="">
                            <br>
                            <div>
                                <div>B767-300</div>
                                <br>
                                <a href=""><input type="button" value="배치도" class="whiteBtn"></a>
                                <br>
                            </div>
                        </td>
                        <td class="text-align-center">
                            <img src="../../IMG/information/airplane/img_airplain_A321-100_A321-200.png" alt="">
                            <br>
                            <div>
                                <div>A321-neo</div>
                                <br>
                                <a href=""><input type="button" value="배치도" class="whiteBtn"></a>
                                <br>
                            </div>
                        </td>
                        <td class="text-align-center">
                            <img src="../../IMG/information/airplane/img_airplain_A321-100_A321-200.png" alt="">
                            <br>
                            <div>
                                <div>A321-100 / A321-200</div>
                                <br>
                                <input type="button" value="배치도" class="whiteBtn">
                                <br>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-align-center">
                            <img src="../../IMG/information/airplane/img_airplain_A320-200.png" alt="">
                            <br>
                            <div>
                                <div>A320-200</div>
                                <br>
                                <input type="button" value="배치도" class="whiteBtn">
                                <br>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            
            <ul class="list-type2 last-note bg-gray5">
                <li class="list-inside-title">유의사항</li>
                <li>공동 운항편 이용 고객, Cabin Baggage (CBBG) 이용 고객, Extra Seat(EXST) 이용 고객, 반려동물 동반 고객(항공기 기내로 반입하는 경우)은 레그룸 좌석 이용이 제한됩니다.</li>
                <li>만 15세 미만, 한국어나 영어로 의사소통이 불가능한 손님, 임산부 손님, 유소아 동반 손님, 노약자 등 비상시 승무원의 지시에 따르기 어려움이 있는 손님은 비상구 좌석 배정이 불가합니다.</li>
                <li>구매한 옆 좌석에 유아를 동반한 고객이 착석할 수 있으며 앞 여유 공간은 다른 승객의 이동 통로로 이용될 수 있습니다.</li>
                <li>유아용 요람 (Baby Bassinet) 설치 가능한 레그룸 좌석을 구매하시고 해당 서비스 예약을 원하시는 고객님은 아시아나 예약 센터로 출발 72시간 전까지 신청하여 주시기 바랍니다.</li>
                <br><br><br>
                <li class="list-inside-title">환불 규정</li>
                <li>출발 48시간 전까지 레그룸 좌석 환불이 가능합니다. <br>
                예약 센터, 시내 지점, 공항 발권 카운터, 홈페이지, 모바일 앱, 여행사에서 구매한 레그룸 좌석은 각 구매처에서 환불 가능합니다.</li>
                <li>출발 48시간 이내에는 변경 및 환불이 불가능합니다. <br>
                    단, 항공기 결항 및 지연 등 항공사 사정에 의해 좌석 지원이 불가한 경우 환불 가능합니다.</li>
                <li class="font-red">비상구 좌석 구매 후 공항 및 기내에서 해당 좌석 이용이 불가능한 승객이라고 판단할 경우 현장에서 임의로 좌석 배정을 취소할 수 있습니다.</li>
            </ul>
        </section>

        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/information.js"></script>
    </body>
</html>
