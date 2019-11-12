<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>장애인 고객</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content">
            <h3>장애인 고객</h3>
            <div class="info-banner">
                    <div class="banner-fare-2">
                        <div>
                            <p>아시아나항공에서는 신체적, 건강상의 이유로 몸이 불편하여<br/>혼자 여행하기 어려운 고객께서 항공여행과 활동에 불편이 없도록<br/>다양한 서비스를 제공해 드립니다 </p>
                        </div>
                    </div>
                </div>
       
            <p class="section-title">서비스 안내</p>
            
            <div class="table-form2">
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
			이용대상
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>시각, 청각 장애를 가지신 고객</li>
                            <li>휠체어(Wheelchair)가 필요한 고객</li>
                            <font style="color:red">* 시각,청각장애인 안내견을 동반하는 시각장애 고객의 경우 안내견은 무료로 운송됩니다. 단, 다음 조건이 충족되어야 합니다.</font>
                            <li>-공인된 기관의 인증서(ID) 소지</li>
                            <li>-하네스(Harness) 착용</li>
                            <li>-목적지 또는 경유지 검역절차 기준에 부합</li>
                            <li>-장거리 여행의 경우 연결지에서 음식 공급이 가능하며, 음식물의 준비 및 비용은 고객에 의해 처리</li>
                            <li>-비행 중에는 손님의 발 아래에 위치</li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       이용안내
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li style="color:brown">시각, 청각 장애를 가지신 고객 </li>
                            <li>-고객의 편리하고 안전한 여행을 위하여 탑승수속에서 입국수속까지 안내하고 보조하는 서비스를 제공해 드립니다.</li>
                            <li>-비동반 시각장애 고객의 경우 스스로 보행이 가능하고, 제3자의 도움 없이 식사 및 개인 용무가 가능해야 하며,<br/>
								출/도착지 공항에서 고객을 보조/지원할 수 있는 보호자가 있어야 항공기 이용이 가능합니다.</li>
							<li style="color:brown">휠체어(Wheelchair)가 필요한 고객 </li>
							<li>-질병이나 상처, 고령으로 인하여 거동이 불편한 고객에게 휠체어, 전동차 (인천공항에 한함)를 지원하며 탑승수속, 출국수속<br/> 및 탑승을 전담직원이 도와드립니다.</li>
							<li>-도착시에는 공항 내 마중 나오신 분이 계신 곳 까지 이동을 도와드립니다.</li>
							<li>-휠체어 서비스는 예약센터와 공항 등 어디에서든 신청하실 수 있습니다.</li>
							<li>-휠체어를 소지하신 고객의 경우 항공기 탑승구까지 사용하여 이동하실 수 있으며, 탑승구에서 휠체어를 위탁하시면 됩니다.<br/>(단, 해외공항사정에 따라 탑승구 앞에서 휠체어 위탁 및 수취가 불가능 할 수 있습니다.)</li>
							<li>-전동휠체어를 소지하신 고객의 경우 배터리를 분리해야 하는 조치가 필요하므로 예약 시 미리 알려주시기 바랍니다.</li>
							<li style="color:brown">기내 휠체어 고객 </li>
							<li>-거동이 불편한 고객이 기내에서 자유롭게 통로 이동을 할 수 있도록 모든 항공기의 기내에 휠체어가 비치되어 있습니다.</li>
                        </ul>
                    </div>
                </div>
                    <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       신청방법
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>예약센터를 통해 신청.</li>
                            <li>또는 하단의 특별서비스 링크를 통해 신청</li>
                        </ul>
                    </div>
                </div>
            </div>
	</section>
        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/information.js"></script>
    </body>
</html>
