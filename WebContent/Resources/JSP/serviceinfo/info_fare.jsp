<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>운임안내</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content info-reservation">
            <h3>운임안내</h3>
            
            <div class="tab-menu1">
                <ul class="clearfix">
                    <li class="col-half on" id='tab-1'><a href="#none">국내선</a></li>
                    <li class="col-half" id='tab-2'><a href="#none">국제선</a></li>
                </ul>
            </div>

            <div id="tab-1-container">
                <div class="info-banner">
                    <div class="banner-fare-1">
                        <div>
                            <p class="banner-title">국내선 일반운임</p>
                            <p>운임표 금액은 성인 기준의 편도 운임이며 사전 고지 없이 변동될 수 있습니다.
                               할인운임 및 초특가운임은 예매단계에서 확인하실 수 있습니다.</p>
                            <a href="../booking/booking1.html"><button class="whiteBtn">국내선 일반운임</button></a>
                        </div>
                    </div>
                </div>
                
                <p class="section-title">할인대상</p>
                <p>소아/경로우대/군인</p>
                <table class="table-list">
                    <col-group>
                        <col style="width: 15%">
                        <col style="width: 22%">
                        <col style="width: 16%">
                        <col style="width: 22%">
                        <col style="width: 22%">
                    </col-group>
                    <tbody>
                        <tr class="bg-blue5">
                            <th>대상</th>
                            <th>조건</th>
                            <th>정상운임 할인율</th>
                            <th>증빙서류</th>
                            <th>비고</th>
                        </tr>
                        <tr>
                            <td class="bg-gray5">소아</td>
                            <td>만 2세 이상 ~ 만 13세 미만</td>
                            <td class="text-align-center">25%</td>
                            <td>생년월일 확인 가능한 서류<br>(주민등록등본, 건강보험증 등)</td>
                            <td>공항이용료 50% 할인</td>
                        </tr>
                        <tr>
                            <td class="bg-gray5">경로우대</td>
                            <td>만 65세 이상</td>
                            <td class="text-align-center">10%</td>
                            <td>연령 확인 가능한 서류<br>(주민등록증, 운전면허증, 여권 등)</td>
                            <td class="font-red">에어부산(BX) 공동운항편 미적용</td>
                        </tr>
                        <tr>
                            <td class="bg-gray5">군인</td>
                            <td>단기하사 이하 의무 복무사병 <br>(휴가여행에 한함)</td>
                            <td class="text-align-center">10%</td>
                            <td>1. 휴가증/외박증/외출증/전역증<br>2. 일일복무상황부(공익요원)<br>3. 입영통지서(입영일 3일이내)	</td>
                            <td>전역증은 전역 당일에 한함</td>
                        </tr>
                    </tbody>
                </table>
                
                <p class="section-title">장애인</p>
                <table class="table-list">
                    <col-group>
                        <col style="width: 15%">
                        <col style="width: 20%">
                        <col style="width: 15%">
                        <col style="width: 25%">
                        <col style="width: 22%">
                    </col-group>
                    <tbody>
                        <tr class="bg-blue5">
                            <th>대상</th>
                            <th>조건</th>
                            <th>정상운임 할인율</th>
                            <th>증빙서류</th>
                            <th>비고</th>
                        </tr>
                        <tr>
                            <td rowspan="2" class="bg-gray5">장애인<br>(성인/소아/유아)</td>
                            <td>중증 (혹은 1~3급)<br>복지카드 소지자</td>
                            <td class="text-align-center">50%</td>
                            <td rowspan="2">시/군/구청 발행 복지카드<br>(보건복지부장관명의)</td>
                            <td rowspan="2">공항이용료 50% 할인</td>
                        </tr>
                        <tr>
                            <td>경증 (혹은 4~6급)<br>복지카드 소지자</td>
                            <td class="text-align-center">30%</td>
                        </tr>
                        <tr>
                            <td class="bg-gray5">장애인 동반자</td>
                            <td>중증 (혹은 1~3급) 승객과<br>동반하는 보호자 1인</td>
                            <td class="text-align-center">50%</td>
                            <td>신분증</td>
                            <td>공항이용료 50% 할인</td>
                        </tr>
                    </tbody>
                </table>
                <div>장애인 소아의 경우 일반 장애인의 경우와 동일한 기준으로 단순 중증/경증 등급에 따라 할인율 적용
                    <br>(예:  중증 장애인 소아일 경우 정상 운임의  50%  할인율 적용 / 경증 장애인 소아는 정상 운임의 30% 할인율 적용)</div>
                
                <p class="section-title">보훈대상자</p>
                <table class="table-list">
                    <col-group>
                        <col style="width: 15%">
                        <col style="width: 20%">
                        <col style="width: 15%">
                        <col style="width: 25%">
                        <col style="width: 22%">
                    </col-group>
                    <tbody>
                        <tr class="bg-blue5">
                            <th>대상</th>
                            <th>조건</th>
                            <th>정상운임 할인율</th>
                            <th>증빙서류</th>
                            <th>비고</th>
                        </tr>
                        <tr>
                            <td rowspan="2" class="bg-gray5">국가유공자</td>
                            <td>국가유공자 및 유족</td>
                            <td class="text-align-center" rowspan="2">30%</td>
                            <td rowspan="2">국가보훈처 발행 유공자증 또는 유족증<br>(유족의 경우 소지수권 유족 1인, 유족원증 증빙불가)</td>
                            <td rowspan="2">-</td>
                        </tr>
                        <tr>
                            <td>5.18 민주유공자 및 유족</td>
                        </tr>
                        <tr>
                            <td class="bg-gray5">고엽제 후유증 환자</td>
                            <td>고엽제 후유증 환자</td>
                            <td class="text-align-center">30%</td>
                            <td>고엽제 유공자증	</td>
                            <td>공항이용료 50% 할인</td>
                        </tr>
                        <tr>
                            <td rowspan="2" class="bg-gray5">국가유공상이자</td>
                            <td>국가유공상이자</td>
                            <td class="text-align-center" rowspan="2">50%</td>
                            <td>국가보훈처 발행 상이군경 회원증 및<br>상이등급이 명기된 국가유공자</td>
                            <td rowspan="2">공항이용료 50% 할인</td>
                        </tr>
                        <tr>
                            <td>5.18민주유공부상자	</td>
                            <td>국가보훈처 발행 상이군경 회원증 및<br>상이등급이 명기된 국가유공자 또는<br>5.18민주유공자증</td>
                        </tr>
                        <tr>
                            <td rowspan="4" class="bg-gray5">국가유공상이자 동반자</td>
                            <td>국가유공상이자 1~3급<br>동반 보호자 1인</td>
                            <td class="text-align-center" rowspan="4">50%</td>
                            <td rowspan="4">신분증</td>
                            <td>공항이용료 50% 할인</td>
                        </tr>
                        <tr>
                            <td>국가유공상이자 4급<br>동반 보호자 1인</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>5.18민주유공부상자 1~4급<br>동반 보호자 1인</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>동반 소아 1인</td>
                            <td>공항이용료 50% 할인</td>
                        </tr>
                        <tr>
                            <td rowspan="3" class="bg-gray5">독립유공자</td>
                            <td>독립유공자	</td>
                            <td class="text-align-center" rowspan="3">50%</td>
                            <td>독립유공자증</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>독립유공자의 동반 보호자 1인</td>
                            <td rowspan="2">동반자는 신분증</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>동반 소아 1인</td>
                            <td>공항이용료 50% 할인</td>
                        </tr>
                        <tr>
                            <td class="bg-gray5">독립유공자 유족</td>
                            <td>독립유공자 유족 수권자</td>
                            <td class="text-align-center">30%</td>
                            <td>독립유공자 유족증</td>
                            <td>-</td>
                        </tr>
                    </tbody>
                </table>
                
                <p class="section-title">제주도민</p>
                <table class="table-list">
                    <col-group>
                        <col style="width: 15%">
                        <col style="width: 20%">
                        <col style="width: 15%">
                        <col style="width: 25%">
                        <col style="width: 22%">
                    </col-group>
                    <tbody>
                        <tr class="bg-blue5">
                            <th>대상</th>
                            <th>조건</th>
                            <th>정상운임 할인율</th>
                            <th>증빙서류</th>
                            <th>비고</th>
                        </tr>
                        <tr>
                            <td rowspan="2" class="bg-gray5">제주도민<br>(재외 제주도민 포함)</td>
                            <td>제주도민<br>(제주도 거주자)</td>
                            <td class="text-align-center" rowspan="2">10%</td>
                            <td>주민등록증, 운전면허증 등<br>(현 주소가 제주도로 명시)</td>
                            <td rowspan="2">제주 출/도착 노선에 한정</td>
                        </tr>
                        <tr>
                            <td>재외 제주도민증 소지자</td>
                            <td>제주도지사 발급 재외 제주도민증</td>
                        </tr>
                        <tr>
                            <td class="bg-gray5">제주명예도민</td>
                            <td>제주명예도민,<br>제주명예도민 배우자</td>
                            <td class="text-align-center">10%</td>
                            <td>제주도지사가 발급한 명예도민증 소지자<br>제주 명예도민 배우자증 소지자</td>
                            <td>제주 출/도착 노선에 한정<br>주중운임만 적용<br>(주말, 성수기 불가)</td>
                        </tr>
                    </tbody>
                </table>
                
                <ul class="list-type2 last-note bg-gray6">
                    <li class="list-inside-title">안내사항</li>
                    <li>서울 ↔ 부산, 대구, 울산 노선은 에어부산 공동운항편이며, 제주 ↔ 부산, 대구, 서울 노선은 에어부산 공동운항편과 아시아나항공 단독운항편이 있습니다.</li>
                    <li>에어부산(BX) 공동운항에 대한 상세내용 및 할인율은 에어부산 홈페이지에서 확인하십시오.</li>
                    <li>인천  부산 노선은 국제선 환승 전용 내항기로 국제선으로 24시간 이내 국내선으로 환승하는 고객에 한해 이용가능합니다.</li>
                    <li>상세 할인율은 항공권 예매 시 확인하십시오. <a href="#" onclick="return false;">국내선 예매</a></li>
                    <li>유류할증료는 항공권 구매 시점에 따라 변경될 수 있으며, 할인운임 및 초특가운임은 예매 단계에서 확인하실 수 있습니다. <a href="#" onclick="return false;">유류할증료 안내</a></li>
                </ul>
            </div>

            <div id="tab-2-container"  class="hidden">
                <div class="info-banner">
                    <div class="banner-fare-2">
                        <div>
                            <p class="banner-title">국제선 일반운임</p>
                            <p>국제선 일반 운임표 금액은 고객 참고용으로 사전 고지 없이 변동될 수 있습니다.
                               여행 시 부과될 수 있는 초과 수하물 요금에 대해 참고하시기 바랍니다.</p>
                            <a href="../booking/booking1.html"><button class="whiteBtn">국제선 일반운임</button></a>
                            <a href="../booking/booking1.html"><button class="whiteBtn">초과수하물 요금표</button></a>
                        </div>
                    </div>
                </div>
                <br>
                <ul class="list-type2 last-note bg-gray6">
                    <li class="list-inside-title">안내사항</li>
                    <li>유류할증료 변경 또는 환율의 영향으로 항공권 금액은 출발 및 발권일에 따라 변동 가능하오니 예매 시 확인하여 주시기 바랍니다.</li>
                    <li>운임표 금액은 사전고지 없이 변경될 수 있습니다.</li>
                    <li>항공권의 운임 및 규정, 기타 자세한 내용은 항공권 구입처 또는 아시아나항공(1588-8000/02-2669-8000)에 문의하여 주시기 바랍니다.</li>
                </ul>
            </div>
        </section>
        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/common.js"></script>
        <script src="../../JS/information.js"></script>
    </body>
</html>