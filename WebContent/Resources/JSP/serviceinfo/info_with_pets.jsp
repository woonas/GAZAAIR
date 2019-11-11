<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>반려동물 동반</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content">
            <h3>반려동물 동반</h3>
            <div class="info-banner">
                    <div class="banner-fare-2">
                        <div>
                            <p>반려동물과 함께 항공여행 계획 중인 고객께서는 신청방법,<br/>반려동물 가이드를 사전에 꼭 확인해 주시기 바랍니다. </p>
                        </div>
                    </div>
                </div>
       
            <p class="section-title">반려동물 동반</p>
            
            <div class="table-form2">
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
			운송 가능한 동물
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>운송 가능한 동물의 종류 : 개, 고양이, 애완용 새</li>
                            <li>운송 가능한 동물의 수 : 성인 탑승객 1인당 기내 반입 1마리, 위탁수하물 2마리, 소아는 반려동물 운송불가<br/>(단, 새는 1Cage 당 한 쌍 가능)</li>
                          
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       기내 반입 가능한<br/>경우
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>케이지를 포함한 반려 동물의 무게가 7kg 이하인 경우</li>
                            <li>운반 용기의 삼변의 길이의 합이 115cm 이하이며, 케이지의 높이는 최대 21cm 이내인 경우 (소프트케이스는 26cm까지로<br/>반드시 좌석 밑 보관이 가능해야 합니다.)</li>
                            <li>1인당 케이지 1개, 1마리만 반입 가능 (단, 아직 성견이 되지 않은 6개월 미만의 강아지 2마리 또는 고양이 2마리-어미와 어린 새끼,<br/> 새 1쌍인 경우 같이 넣을 수 있음)</li>
							<li >반려동물은 안전 운항을 위해 반드시 케이지 내에서 보관되어야 하며, 꺼내는 행위는 엄격히 금지되어 있습니다.</li>
							<li>항공기 좌석 구조 및 안전 규정에 따라 비즈니스 석(비즈니스 스위트 포함) 좌석 하단에 반려동물의 운송용기 보관이 불가하여<br/> 활주 및 이착륙 시 승무원의 안내에 따라 다른 공간에 보관할 수 있음을 알려드립니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                      수하물로 위탁하는<br/>경우
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>반려 동물의 크기가 기내 수하물 규격을 넘는 경우</li>
                            <li>운반 용기를 포함한 동물의 무게가 45kg 이하이고 운반 용기의 3면 길이의 합이 285cm, 높이 84cm 이하인 경우</li>
                            <li>항공기 기종 및 운항 구간에 따라, 기내 반입 또는 수하물로 위탁할 수 있는 두수 제한 또는 탑재가 거절될 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                      운반 용기의 조건
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>잠금 장치가 장착되어 있어야 하며, 바닥이 밀폐되어 있어야 합니다.</li>
                            <li>반려 동물이 서거나 움직이는 데 불편이 없을 정도의 충분한 공간이 있어야 합니다.</li>
                            <li>새를 운반하실 경우 비행 중 외부로 드러나지 않도록 천으로 가려져 있어야 합니다.</li>
							<li>운반 용기는 금속, 목재 및 플라스틱 등의 견고한 재질이어야 합니다.</li>
							<li>기내로 반입하는 경우 천, 가죽 재질도 가능하나 프레임 등으로 일정한 모양이 유지되어야 합니다.</li>
							<li>1개의 운반 용기에 2마리의 반려동물을 넣을 수 없습니다.<br/>(단, 아직 성견이 되지 않은 6개월 미만의 강아지 2마리 또는 고양이2마리, 새 1쌍인 경우는 예외)</li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       운송 제한되는 경우
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>여행목적지 도시 또는 국가의 관련 규정과 법령으로 제한되는 경우에는 불가합니다.</li>
                            <li>운항 기종별 허용 두수를 초과하는 경우에는 불가합니다.</li>
                            <li>운반 용기가 운송 기준을 충족하지 못하는 경우에는 불가합니다.</li>
							<li>운반 용기의 삼면의 합 285cm 또는 반려동물과 운반 용기의 총 중량 45kg 초과하는 경우에는 불가합니다.<br/>
							 	*일부국가와 도시의 경우 총 중량 32kg 이내인 경우에만 허용되거나 중량 또는 크기에 관계없이 여객기운송이 제한될 수 있습니다.</li>
							<li>생후 16주 미만, 안정제/수면제가 투여된 반려동물은 운송이 불가합니다.</li>
							<li>임신 중이거나 악취가 심한 경우, 맹견(투견 등 사나운 동물), 맹금류는 운송이 불가합니다.</li>
							<li>운송이 제한되는 맹견의 종류 <br/>-도사견과 그 잡종의 개-아메리칸 핏불 테리어와 그 잡종의 개<br/>-아메리칸 스태퍼드셔 테리어와 그 잡종의 개<br/>-스태퍼드셔 불 테리어와 그 잡종의 개<br/>
								-로트와일러와 그 잡종의 개<br/>-마스티프와 그 잡종의 개<br/>-라이카와 그 잡종의 개<br/>-오브차카와 그 잡종의 개<br/>-캉갈과 그 잡종의 개<br/>-울프독과 그 잡종의 개<br/>
									-아메리칸 불리, 카네코르소 등 유사의 견종<br/></li>
							<li>혹한기에는 반려 동물의 건강과 안전을 위해 위탁이 제한될 수 있습니다.</li>
							<li>에어 부산 공동 운항편은 저희 아시아나항공에서 직접 운행하지 않으므로 반려 동물 위탁 서비스를 제공하지 못하오니 양해<br/> 부탁 드립니다.</li>
							<li>단두종 반려동물(Short-nosed Animals)의 경우 건강과 안전에 영향이 있으므로 위탁 운송이 중단됩니다. (2019년 7월 1일 부)</li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                      장애고객 보조견<br/>(Service Dogs)
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>보조견으로 훈련받은 공인 인증서를 부착했으며, Harness를 착용하고, 장애고객과 동행 할 경우, 기내 탑승 가능합니다.</li>
                            <li>정신적/감성적 장애고객 보조견은 미주 출/도착편에 한하여 가능하며, 1년 이내 발급된 의사 진단서를 지참해 주시기<br/> 바랍니다.</li>
                            <li>자세한 사항은 예약센터로 문의해 주시기 바랍니다.</li>
							
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                    이용방법
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>반려동물과 함께 항공여행 계획 중인 고객님께서는 이용절차를 확인해 주세요.</li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       반려동물 요금표
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>반려동물 동반 여행 시 승객의 수하물 소지 여부와 관계없이 별도의 요금이 부과 됩니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
	</section>
        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/information.js"></script>
    </body>
</html>
