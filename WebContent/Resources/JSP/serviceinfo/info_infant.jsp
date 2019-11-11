<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>유아여행 안내</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content info-reservation">
            <h3>유아여행 안내</h3>
            
            <div class="tab-menu1">
                <ul class="clearfix">
                    <li class="col-half on" id='tab-1'><a href="#none" >유아여행 안내</a></li>
                    <li class="col-half" id='tab-2'><a href="#none">해피맘 서비스</a></li>
                </ul>
            </div>

            <div id="tab-1-container">
                <div class="info-banner">
                    <div class="banner-fare-1">
                        <div>
                            <p>유아를 동반할 때, 안심하고 여행하실 수 있도록 안내 드립니다.<br/>
                           	생후 7일 ~ 만 2세 미만 유아를 동반하는 항공 여행을 준비하실 때는<br/>아래 내용을 확인해 주시기 바랍니다. </p>
                            
                        </div>
                    </div>
                </div>
            
                <p class="section-title">유아 항공 요금</p>
                <ul class="list-type2">
                <li>유아 나이 기준 : 생후 7일 ~ 만 2세 미만</li>
                <li>유아는 별도의 좌석이 제공되지 않습니다. (단, 소아 운임을 지불하신 경우는 좌석이 제공됩니다)</li>
                <li>본 서비스는 항공편 출발 96시간 ~ 24시간 전 사이에 신청하실 수 있습니다.</li>
                <li>승객 한 분이 2명의 유아를 동반하실 경우, 1명의 유아는 소아 항공권을 구매해야 하며, 소아운임이 적용된 유아에게는 좌석이 제공됩니다.</li>
            </ul>
            	<p class="section-title">신생아(생후 1주 미만) 동반 고객</p>
            	<p>건강하게 태어난 신생아일지라도 체온 조절이 불안정하고 폐 기능의 미성숙 등 신체발달이 아직 미흡하기 때문에 지상과는 다른 기내환경에 적응하기가 어렵습니다.<br/>
					따라서 생후 1주일 미만의 신생아는 가급적 항공여행에 동반하지 않는 것이 좋으며, 부득이하게 여행을 해야 할 경우에는 당사의 사전 승인절차 (Medical Clearance)가 <br/>필요합니다.
            	</p>
            	
            	<p class="section-title">유모차 위탁서비스 절차</p>
            	<p>전 국제선 가능 (해외공항사정에 따라 탑승구 앞에서 유모차 수취가 불가능할 수 있습니다.)</p>
            </div>
            	
            <div id="tab-2-container"  class="hidden">
                <div class="info-banner">
                    <div class="banner-fare-2">
                        <div>
                            <p>유아를 동반하여 혼자 여행하시는 여성 고객님께서도<br/>편안하고 행복한 여행이 될 수 있도록 해피맘 서비스를 제공합니다 </p>
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