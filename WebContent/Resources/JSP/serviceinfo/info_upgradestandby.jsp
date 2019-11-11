<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>업그레이드 스탠바이</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content">
            <h3>업그레이드 스탠바이</h3>
            <ul class="list-type2">
                <li>아시아나항공이 운항하는 국제선 노선에 대하여, 항공편 예약상황에 따라 특별한 가격으로 좌석을 업그레이드 하실 수 있는 서비스 입니다.</li>
                <li>본 서비스는 모든 항공편에 적용되는 것은 아니며, 예약상황에 따라 선정된 일부 항공편에 한하여 적용됩니다.<br/>
			                 따라서, 본 서비스를 신청하기 위해 상위 운임의 항공권을 구매하더라도, 해당 항공편이 서비스 대상편으로 선정되지 않으면 서비스 신청 자체가 불가하오니, <br/>
			                 항공권 구매 및 서비스 신청 시 유의하여 주시기 바랍니다.</li>
                <li>본 서비스는 항공편 출발 96시간 ~ 24시간 전 사이에 신청하실 수 있습니다.</li>
                <li>결제를 통해 '업그레이드 대기'를 접수하신 후, 항공편 출발 3시간 전에 홈페이지/모바일을 통해 업그레이드 확정 여부를 확인 하셔야 합니다.</li>
                <li>본 서비스는 비즈니스 좌석 및 비즈니스 기내식만을 제공하는 서비스로, 그 외 모든 서비스는 이코노미 서비스와 동일합니다.<br/>
                (* 라운지 미제공, 이코노미 기준 무료수하물 적용, 이코노미 기준 마일리지 적립 등) </li>
                <li>결제 완료 후 승객 변심에 의해 환불하는 경우 또는 대기 결과 업그레이드가 되지 않은 경우에도 취소 수수료 및 위약금 없이 전액 환불이 가능합니다.</li>             
                
            </ul>
            <div class="text-align-center">
                <br>
                <a href=""><input type="button" class="blueBtn" id="purchase_list" value="서비스 신청/ 구매내역 확인 페이지 이동"></a>
            </div>
            <br>
            <img src="<%=path%>/Resources/IMG/information/legroom.jpeg" alt="">
            <p class="section-title">구매 운임(편도 기준)</p>
            <p>업그레이드 스탠바이 서비스 구매일 기준 2019.3.4 이후</p>
            <table class="table-list">
                <col-group>
                    <col style="width: 28.6%">
                   <col style="width: 17.85%">
                   <col style="width: 17.85%">
                   <col style="width: 17.85%">
                   <col style="width: 17.85%">
                </col-group>
                <tbody>
                	<tr class="bg-blue5">
                		<th rowspan="2">구분</th>
                		<th colspan="2">한국 -<br/>일본,중국,동북아</th>
                		<th colspan="2">한국 -<br/> 동/서남아</th>
                		<th colspan="2">한국 -<br/> CDG, FCO, BCN, VCE, IST, SYD, HNL</th>
                		<th colspan="2">한국 -<br/> LAX, SFO, JFK, SEA, FRA, LHR</th>
                	</tr>
                    <tr class="bg-blue5">
                        <th>Y,B,M</th>
                        <th>H,E,Q,K,S,V</th> 
                        <th>Y,B,M</th>
                        <th>H,E,Q,K,S,V</th> 
                        <th>Y,B,M</th>
                        <th>H,E,Q,K,S,V</th> 
                        <th>Y,B,M</th>
                        <th>H,E,Q,K</th>  
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국</td>
                        <td>60,000원 </td>
                        <td>100,000원</td>
                        <td>120,000원</td>
                        <td>180,000원</td>
                        <td>450,000원</td>
                        <td>600,000원</td>
                        <td>450,000원</td>
                        <td>600,000원</td>
                    </tr>
                </tbody>
                <tr>
                        <td class="bg-gray5">중국(홍콩제외)</td>
                        <td>400CNY</td>
                        <td>700CNY</td>
                        <td>800CNY</td>
                        <td>1,100CNY</td>
                        <td>2,800CNY</td>
                        <td>3,600CNY</td>
                        <td>2,800CNY</td>
                        <td>3,600CNY</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">일본</td>
                        <td>6,000JPY</td>
                        <td>10,000JPY</td>
                        <td>12,000JPY</td>
                        <td>18,000JPY</td>
                        <td>45,000JPY</td>
                        <td>60,000JPY</td>
                        <td>45,000JPY</td>
                        <td>60,000JPY</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">미국</td>
                        <td>60USD</td>
                        <td>100USD</td>
                        <td>120USD</td>
                        <td>180USD</td>
                        <td>450USD</td>
                        <td>600USD</td>
                        <td>450USD</td>
                        <td>600USD </td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">한국</td>
                        <td>60,000원 </td>
                        <td>100,000원</td>
                        <td>120,000원</td>
                        <td>180,000원</td>
                        <td>450,000원</td>
                        <td>600,000원</td>
                        <td>450,000원</td>
                        <td>600,000원</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">영국</td>
                        <td>48GBP</td>
                        <td>70GBP</td>
                        <td>96GBP</td>
                        <td>125GBP</td>
                        <td>330GBP</td>
                        <td>410GBP</td>
                        <td>330GBP</td>
                        <td>410GBP</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">유럽(영국제외)</td>
                        <td>60EUR</td>
                        <td>80EUR</td>
                        <td>120EUR</td>
                        <td>150EUR</td>
                        <td>360EUR</td>
                        <td>470EUR</td>
                        <td>360EUR</td>
                        <td>470EUR</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">홍콩</td>
                        <td>450HKD</td>
                        <td>700HKD</td>
                        <td>900HKD</td>
                        <td>1,300HKD</td>
                        <td>3,400HKD</td>
                        <td>4,200HKD</td>
                        <td>3,400HKD</td>
                        <td>4,200HKD</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">대만</td>
                        <td>1,650TWD</td>
                        <td>2,800TWD</td>
                        <td>3,300TWD</td>
                        <td>5,000TWD</td>
                        <td>12,400TWD</td>
                        <td>16,500TWD</td>
                        <td>12,400TWD</td>
                        <td>16,500TWD</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">태국</td>
                        <td>1,800THB</td>
                        <td>2,800THB</td>
                        <td>3,600THB</td>
                        <td>5,000THB</td>
                        <td>13,500THB</td>
                        <td>17,000THB</td>
                        <td>13,500THB</td>
                        <td>17,000THB</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">싱가포르</td>
                        <td>75SGD</td>
                        <td>125SGD</td>
                        <td>150SGD</td>
                        <td>225SGD</td>
                        <td>560SGD</td>
                        <td>750SGD</td>
                        <td>560SGD</td>
                        <td>750SGD</td>
                    </tr>
                    <tr>
                        <td class="bg-gray5">시드니</td>
                        <td>75AUD</td>
                        <td>125AUD</td>
                        <td>150AUD</td>
                        <td>225AUD</td>
                        <td>560AUD</td>
                        <td>750AUD</td>
                        <td>560AUD</td>
                        <td>750AUD</td>
                    </tr>
            </table>
            <ul class="list-type2">
                <li>구매처가 한국, 중국, 일본, 미국, 영국, 유럽(영국제외), 홍콩, 타이베이, 방콕, 싱가포르일 경우 출발지 현지 통화를 기준으로 적용합니다.</li>
                <li>그 외 지역은 구매 당일 미국 달러 환율을 적용한 현지 통화로 구매 가능합니다.</li>
                <li>판매 시점은 불가피한 사유로 사전 예고 없이 변경될 수 있습니다.</li>
            </ul>
            <p class="section-title">구매대상</p>
            <p>업그레이드 스탠바이 서비스 구매일 기준 2019.3.4 이후</p>
            <ul class="list-type2">
            	<li>아시아나항공 정규편의 이코노미좌석 항공권 결제가 완료된 승객 중 아래 운임조건에 부합하는 승객 </li>
            	<li>'988'로 시작하는 당사 항공권 외에, 타사 항공권을 소지하신 고객은 서비스 이용이 불가합니다.</li>
            	<li>이용 제한 승객: 공동운항편 이용 승객, 선호좌석 서비스 구매승객, 영유아(Infant)동반승객, 어린이(Child)승객 및 보호자, 특별기내식 신청승객, 반려동물 동반승객<br/>
            		(항공기 기내로 반입하는 경우), 비동반소아 서비스(UM:Unaccompanied Minor서비스) 이용승객, Cabin Baggage(CBBG) 이용승객, Extra Seat(EXST) 이용승객</li>
            	<li>※ 여행사를 통해 구매한 일부 그룹성 예약은 구매가 제한됩니다.</li>
            	<li>※ 구매 대상 고객 중 온라인 체크인을 완료한 고객은 본 서비스 구매가 불가합니다. 온라인 체크인을 완료하신 고객 중 본 서비스에 대한 구매의사가 있는 고객은 체크인을<br/> 취소하신 후 구매를 시도해 주시기 바랍니다.</li>
            </ul>
            
            <p class="section-title">제공 서비스</p>
            <ul class="list-type2">
            	<li>비즈니스 좌석 및 비즈니스 기내식 서비스 </li>
            	<li>그 외 모든 서비스는 이코노미 서비스와 동일<br/>(라운지 미제공, 이코노미 기준 무료수하물 적용, 이코노미 기준 마일리지 적립 등)</li>
            </ul>
            
            <p class="section-title">구매 절차</p>
            	※ 구매TIP : 항공권 구매시 아시아나클럽 회원 번호를 함께 입력하시고, 홈페이지 회원정보 내 '마케팅 수신동의'를 선택하시면 '업그레이드 스탠바이' 구매가 보다 편리해집니다.
            <p class="section-title">구매 가능 시간 및  구매처</p>
            <table class="table-list">
                <col-group>
                    <col style="width: 33.3%">
                    <col style="width: 33.3%">
                    <col style="width: 33.3%">
                </col-group>
                <tbody>
                    <tr class="bg-blue5">
        
                        <th>구매 시간</th>
                        <th>구매처</th>
                    </tr>
                    <tr>
                        <td class="text-align-center">출발 96시간 ~ 24시간 까지</td>
                        <td class="text-align-center">홈페이지 및 모바일앱</td>
                    </tr>   
                     <tr>
                        <td class="text-align-center">출발 24시간 ~ 0시간 까지 판매 불가</td>
                        <td class="text-align-center">-</td>
                    </tr>                          
                </tbody>
            </table>
            <p class="section-title">환불 규정</p>
            <table class="table-list">
                <col-group>
                    <col style="width: 33.3%">
                    <col style="width: 33.3%">
                    <col style="width: 33.3%">
                </col-group>
                <tbody>
                    <tr class="bg-blue5">
        
                        <th>환불 시간</th>
                        <th>환불 가능 채널</th>
                    </tr>
                    <tr>
                        <td class="text-align-center">결제완료(발권)시점부터 출발 24시간 전</td>
                        <td class="text-align-center">홈페이지, 모바일앱, 아시아나항공 예약센터</td>
                    </tr>   
                     <tr>
                        <td class="text-align-center">출발 24시간 ~ 수속 당일</td>
                        <td class="text-align-center">공항 발권 카운터</td>
                    </tr>                          
                    <tr>
                    	 <td class="text-align-center">출발 이후</td>
                        <td class="text-align-center">아시아나항공 예약센터</td>
                    </tr>
                </tbody>
            </table>
            <p class="section-title">지역별 상세 노선 구분표</p>
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
                        <td>광저우, 구이린, 난징, 다롄, 베이징, 사할린, 상하이, 선양, 선전, 시안, 옌지, 옌청, 옌타이, 웨이하이, 창사, 창춘, 청두, 충칭,<br/>
                        	 칭다오, 타이베이, 텐진, 하바로프스크, 하얼빈, 항저우, 홍콩, 울란바타르</td>
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
            <ul class="list-type2 last-note bg-gray5">
                <li class="list-inside-title">유의사항</li>
                <li>본 서비스는 결제를 통해 '업그레이드 대기'를 접수하는 서비스로, 결제가 완료되었다고 하여 업그레이드가 확정되는 것은 아닙니다.</li>
                <li>본 서비스는 비즈니스 좌석 및 비즈니스 기내식만을 제공하는 서비스로, 그 외 모든 서비스는 이코노미 서비스와 동일합니다.<br/>
                	(라운지 미제공, 이코노미 기준 무료수하물 적용, 이코노미 기준 마일리지 적립 등)</li>
                <li>사전좌석배정이 되어있는 상태에서 업그레이드가 될 경우, 기존 배정 좌석은 자동 취소되며, 비즈니스 좌석이 임의로 배정됩니다.</li>
                <li>본 서비스는 일부 승객에 대하여 판매가 제한되오니 판매 제한 규정을 확인하여 주시기 바랍니다.</li>
                <li>사전에 업그레이드 확약 안내를 받았다 하더라도, 항공사 사정에 의해 수속당일 업그레이드가 불가 할 수 있습니다. 또한, 탑승수속 중 규정 위반사항이 확인 될 경우 업그레이드가<br/> 제한 됩니다. </li>
                <li>본 서비스 결제 완료 후 홈페이지를 통해 여행 스케줄 변경 시 업그레이드 스탠바이 서비스는 자동 취소 및 환불 처리됩니다.</li>
                <li>여행사를 통해 구매하신 항공권의 경우, 여행사를 통해 여행 스케줄을 변경하실 경우, 아시아나항공 예약센터에 본 서비스에 대한 환불 신청을 별도로 접수하여야 합니다.</li>
            </ul>
        </section>

        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/information.js"></script>
    </body>
</html>
