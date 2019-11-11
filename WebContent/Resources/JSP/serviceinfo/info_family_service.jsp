<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>패밀리 서비스</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content">
            <h3>패밀리 서비스</h3>
            <div class="info-banner">
                    <div class="banner-fare-2">
                        <div>
                            <p>7세 미만의 유아나 소아를 2명 이상 동반한 1인 손님,<br/>보호자 없이 여행하는 만 70세 이상의 노약자 손님은<br/>누구나 이용하실 수 있습니다.  </p>
                        </div>
                    </div>
                </div>
       
            <p class="section-title">패밀리 서비스</p>
            
            <div class="table-form2">
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
			이용대상
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>보호자 없이 여행하는 만 70세 이상의 손님</li>
                            <li>7세 미만의 유/소아 2명 이상을 혼자서 동반한 1인 손님</li>
                            <font style="color:red">* 만 12세 이상 ~ 만 17세 미만의 청소년은 패밀리 서비스 대상에서 제외</font>
                            <li>-당사의 혼자 여행하는 청소년 유료서비스 (YPTA - Young Passenger Traveling Alone) 신청하여 주십시오.</li>
                            <li>-이용 요금으로 편도당 USD 150 또는 그 상당액을 징수합니다.</li>
                            
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       서비스 내용
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>출발지 공항에서 좌석배정과 수하물 수속을 받게 되며 전담 직원의 안내에 따라 출국 심사 후 출발편 탑승구까지 안내해 드립니다. </li>
                            <li>몸이 불편하신 경우에는 출국장에서 전동차나 휠체어 등을 이용하여 이동하실 수 있습니다.</li>
                            <li>기내에서는 목적지 공항의 입국서류 작성을 보조해 드립니다.</li>
							<li >도착지 공항에서는 탑승구에서 대기하고 있는 담당 직원이 입국수속 및 수하물 찾는 일을 안내해 드립니다.</li>
							<li>아시아나항공 전 노선(공동운항편 제외) 이용 가능합니다.</li>
                        </ul>
                        <ul class="list-type2 last-note bg-gray6">
		                    <li class="list-inside-title">유의사항</li>
		                    <li>패밀리 서비스는 아시아나항공 운항편에 한하여 제공되며, 카운터에 도착하신 시점부터 직원의 안내 서비스가 제공됩니다.</li>
		                    <li>패밀리 서비스는 승객의 수하물 운반을 대행하는 서비스가 아니며, 국내/외 공항에서 수하물 취급에 따르는 제반 비용 발생 시<br/> 승객이 부담하셔야 합니다.</li>
		                    <li>일반 고객과 동일한 출입국 및 세관 심사대를 이용하므로 특별히 시간이 단축되는 것은 아닙니다.</li>
		                    <li>서비스는 공항 아시아나항공 카운터부터 제공됩니다. 따라서 해외에서 다른 항공사를 이용하여 아시아나항공으로 갈아타시는<br/>
		                    	 경우 아시아나항공 카운터까지 오셔야 서비스가 시작됨을 인지하시고 이용에 차질이 없으시기 바랍니다.</li>
		                    <li>패밀리 서비스 신청 손님 중 당일 타 항공사로 연결되는 손님은 연결편 항공사의 탑승수속 카운터 또는 탑승구까지 안내하여<br/> 드립니다.</li>
		                    <li>대상 연결편 공항시설 또는 이민국 규정에 따라 서비스 범위는 변경될 수 있음을 참고하여 주시기 바랍니다.</li>
		                    <li>해외공항의 경우 공항사정에 따라 당일 현장에서 서비스 신청이 불가할 수도 있습니다.</li>
		                    <li>서비스 신청고객의 경우 공항에서 배포해 드리는 패밀리 서비스 목걸이를 서비스 종료 시까지 착용하여 주시기 바랍니다.</li>
               			 </ul>
                    </div>
                </div>
      			<p class="section-title">신청방법</p>
            </div>
	</section>
        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/information.js"></script>
    </body>
</html>
