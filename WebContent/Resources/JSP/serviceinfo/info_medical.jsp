<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>의료도움 안내</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content info-reservation">
            <h3>의료도움이 필요한 고객</h3>
            
            <div class="tab-menu1">
                <ul class="clearfix">
                    <li class="col-half on" id='tab-1'><a href="#none" >의료 도움 안내</a></li>
                    <li class="col-half" id='tab-2'><a href="#none">서비스 및 의료 장비</a></li>
                </ul>
            </div>

            <div id="tab-1-container">
                <div class="info-banner">
                    <div class="banner-fare-1">
                        <div>
                            <p>아시아나항공은 의료 도움이 필요한 고객들에게<br/>안전한 여행을 위한 최상의 서비스를 제공해 드립니다. </p>
                        </div>
                    </div>
                </div>
            
                <p class="section-title">의사 소견서 사전 제출이 필요한 고객</p>
               	 기내 환경은 약 2000m 높이의 한라산 정상과 비슷하여, 대기압과 산소 분압이 지상에 비해 약간 떨어지는 차이가 있습니다.<br/>
				건강한 승객의 경우 기내환경으로 인한 건강문제의 발생 가능성은 적으나, 질환이 있거나 일반적으로 건강 상태가 좋지 않은 경우에는 환경변화에 따라 의학적인 문제가<br/>
 				발생할 수도 있습니다. 따라서, 평소 지병이 있거나 현재 건강에 염려가 되는 점이 있으신 경우에는 비행 전 주치의와 상담하시고 필요한 약품 등을 소지하시는 것이 좋습니다. <br/>
 				
 				<ul class="list-type2 last-note bg-gray6">
		                    <li>심근경색, 협심증, 심부전 등의 심혈관계 질환이 있는 환자 및 심장 수술을 받은 경우</li>
		                    <li>만성 폐쇄성 폐질환, 천식, 폐렴, 폐수종, 기흉 등의 호흡기계 질환이 있는 경우</li>
		                    <li>뇌졸중, 뇌종양 등의 신경계 질환이 있는 환자 및 뇌수술을 받은 경우</li>
		                    <li>최근 수술을 받은 경험이 있는 경우</li>
		                    <li>현재 입원 중이거나 지속적인 치료를 요하는 질환이 있는 경우</li>
		                    <li>급성 감염성 질환 및 전염성 질환이 있는 경우</li>
		                    <li>조절되지 않는 정신과적 질환이 있는 경우</li>
		                    <li>생후 1주 미만의 신생아</li>
		                    <li>비행 중 산소 공급을 요하거나, Stretcher 및 특수 의료장비의 사용을 요하는 경우</li>
               	</ul>
               	<p class="section-title">의사소견서 제출방법</p>
               	항공 예약 시 '특수고객 운송신청서'를 작성하시고 '항공 여행을 위한 의사소견서'를 주치의로부터 받으신 후<br/>
 				영업일 기준 출발 2일 전(기내용 침대 사용이 필요한 경우 1주일 전)까지 아시아나항공으로 제출하여 주시기 바랍니다 <br/>	
 				<a href=""><input type="button" class="blueBtn" id="purchase_list" value="양식 다운로드"></a>	
 				<p class="section-title">기타 의료 도움이 필요한 고객</p>
 				신생아, 질환을 가진 고령의 고객, 특정 물질에 대해 과민반응을 보이는 고객, 장애를 가지신 고객, 당뇨질환 고객, 비행공포증 고객, 환자 고객 등 항공여행 시 지속적인 관심과<br/> 의료 도움이 필요한 고객<br/>
 				
 				<div class="table-form2">
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
			신생아
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>신생아는 체온조절이 불안정하고, 폐기능의 미성숙 등 신체발달이 아직 미흡하기 때문에 건강하게 태어난 신생아라 하더라도<br/>
					                             생후 1주 이내에는 가급적 항공여행에 동반하지 않는 것이 좋습니다. 생후 1주 이내에 비행을 해야 할 경우 아기의 안전과 <br/>
					                             항공기 안전 운항을 위해 비행 전 아시아나항공의 사전 승인이 필요합니다. 생후 1주일 이상 영아의 비행기 탑승 시 기내용<br/>
					                              아기바구니를 사용 하실 수 있습니다. </li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       보살핌이 필요한<br/>고령의 고객
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>특별한 주의를 요하는 질환을 가지고 계신 고령의 승객의 경우에는 여행 전 주치의로부터 건강상태 및 항공여행 가능여부에<br/>
					                            대해 확인 받으실 것을 권고합니다. 휠체어나 기내 및 공항에서 특별한 보살핌이 필요한 경우에는 사전 예약단계에서<br/>
					                             아시아나항공에 알려주십시오. 필요 시 '항공 여행을 위한 의사소견서'가 요구될 수 있습니다. </li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                      과민반응(Allergy)<br/>고객
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>특정 물질 혹은 음식에 과민반응을 가진 승객께서는 예약단계에서 '특수 고객 운송 신청서'와 '항공 여행을 위한 의사소견서'를<br/>
                            	통해 상기 내용 대한 구체적인 정보를 알려주셔야 합니다. 응급상황에 대비하여, 이에 대한 약물을 항상 소지하시는 것이 좋습니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                      장애를 가지신<br/>고객
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>장애를 가진 손님의 편안한 여행을 위해 휠체어 및 Stretcher(항공후송용 침대), 공항 내 전동차, 패밀리 서비스 등 각종 지원<br/>
					                            서비스 를 제공하고 있습니다. 필요 시 사전에 예약하시면 편안하게 이용하실 수 있습니다. 다만, Stretcher(항공후송용 침대)<br/>
					                             사용을 원하시 는 경우에는 출발 1주일 이전에 '특수고객 운송 신청서'와 '항공 여행을 위한 의사소견서'와 함께 예약을 하셔야 이용 가능합니다. </li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       당뇨질환 고객
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>혈당 강하제나 인슐린 주사 등으로 혈당이 잘 조절되고, 합병증이 없는 경우에는 항공여행에 제한을 두지 않습니다. 다만,<br/>
					                             혈당조절을 위해 인슐린 주사기의 휴대 및 기내 반입이 필요한 경우에는 항공<br/>
					                              보안을 위해 의사소견서 2부를 아시아나항공 직원에게 제출하시기 바랍니다. 사용한 주사기는 안전을 위하여 본인이 소지 후 하기하시기 바랍니다. </li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                      체내 의료장비<br/>삽입고객
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>인공심박동기, 인슐린펌프, 척추자극기 등의 의료장비를 치료적 목적으로 체내에 삽입한 승객의 경우, 현재 상태가 안정적이고<br/>
					                             관련 증상 및 합병증이 없으며 기내에서 스스로 관리가 가능하다면 항공여행에 제한을 두지 않습니다. 다만, 공항에서의 보안<br/>
					                              검색 통과를 위하여 의사 소견서 2부를 제출하셔야 합니다.</li>
                        </ul>
                    </div>
                </div>
 			</div>
 		</div>
 				
 				 
                
            	
            <div id="tab-2-container"  class="hidden">
                <div class="info-banner">
                    <div class="banner-fare-2">
                        <div>
                            <p>특별한 도움이 필요한 고객님의 안전하고 편안한 여행을 돕기위해<br/>
                            	아시아나항공에서는 다양한 서비스와 의료 장비로 고객을 정성껏 모시고 있습니다. </p>
                        </div>
                    </div>
                </div>
                <p class="section-title">의료 도움이 필요한 고객을 위한 서비스</p>
                
                <div class="table-form2">
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
			인천공항 전동차<br/>서비스
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>질병, 부상, 고령으로 인하여 거동이 불편한 고객에게 휠체어, 전동차를 지원하며 탑승수속,출국수속 및 탑승을 보조해 드립니다. </li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       의료용 침대
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>신체적, 건강상의 이유로 앉은 자세로 여행이 불가한 고객을 위해 기내 의료용 침대(Stretcher)를 제공합니다.</li>
                            <li>의료용 침대(Stretcher) 고객의 경우 반드시 아시아나항공의 사전 승인 절차(Medical Clearance)가 필요하며, 최소 출발
                            	<br/> 1주일 전 사전예약 및 승인절차가 이루어져야 의료용 침대(Stretcher) 사용이 가능합니다.</li>
                        </ul>
                        <ul class="list-type2 last-note bg-gray6">
		                    <li class="list-inside-title">의료용 침대(Stretcher) 서비스를 받기 위해 준비해야 할 사항</li>
		                    <li>아시아나항공의 사전 승인 절차를 위해 '특수고객운송신청서'와 주치의에 의해 작성된 '항공여행을 위한 의사소견서' 제출이<br/>필요합니다.</li>
		                    <li>의료용 침대(Stretcher) 이용 시 반드시 의료진 동반이 필요합니다.</li>
		                    <li>의료용 침대(Stretcher) 고객의 경우 이코노미 클래스 편도 정상요금의 6배를 적용합니다.</li>
		                    <li>동반 보호자께서는 별도 운임을 지불하셔야 합니다.</li>
		                    <li>* 의사소견서 필요 고객께서는 의료 도움 안내 페이지를 참고하시기 바랍니다.</li>
               			 </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                      의료용 산소
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>심한 빈혈 환자, 최근 수술을 받은 환자, 심혈관계ㆍ호흡기계 질환을 가진 손님의 경우에는 기내에서 산소공급이 필요할 수<br/> 있습니다. </li>
                            <li>아시아나항공에서는 기내에 탑재 가능한 의료용 산소를 준비하고 있으므로, 주치의와 상담 후 산소 공급이 필요하다고 판단될<br/>
                            	 경우에는 예약 시 '특수고객 운송신청서'와 '항공 여행을 위한 의사소견서'를 보내주시기 바랍니다.</li>
                            <li>기내 산소통 사용 시 1통당 국내선은 6만원, 국제선은 USD 120 또는 그 상당액을 징수합니다. 미사용 시 환불되지 않습니다.</li>
                            <li>기내 산소 공급은 아시아나항공의 산소보유량에 따라 예약이 조절되므로 반드시 산소 제공 가능 여부를 사전에 확인<br/> 바랍니다.</li>
                            <li>기내에서 사용 할 보조호흡장비가 필요한 경우에는 출발 48시간 전까지 예약센터로 연락 주십시오.</li>
                            <li>* 의사소견서 필요 고객께서는 의료 도움 안내 페이지를 참고하시기 바랍니다.</li>
                            <li>* 일부 비즈니스석은 추가 좌석 구매 후 이용할 수 있습니다.</li>
                        </ul>
                        <ul class="list-type2 last-note bg-gray6">
		                    <li class="list-inside-title">휴대용 산소 발생기(POC, portable oxygen concentrator) </li>
		                    <li>예약 접수 단계에서 ‘특수고객 운송신청서’와 ‘항공 여행을 위한 의사소견서’ 가 필요합니다.</li>
		                    <li>사용하실 POC가 미국연방항공청( Federal Aviation Administration ,FAA ) 승인을 받은 제품인지 확인이 필요합니다. </li>
		                    <li>안전을 위해 배터리로 작동되어야 합니다. (기내의 전원을 사용할 수 없습니다.)</li>
		                    <li>배터리 수량은 환승 시간 등을 고려하여 총 비행시간의 150% 정도 작동할 수 있도록 충분히 준비하되,<br/>160Wh 미만 이하의 배터리여야 합니다.</li>
		                    <li class="list-inside-title">기타 보조호흡장비  </li>
		                    <li>수면무호흡증에 대비할 목적으로 양압기 (CPAP)가 필요한 경우, 예약 접수 단계에서 저희 직원에게 알려주시기 바랍니다.<br/>수면무호흡증 이외의 의학적 컨디션에 따라 '항공여행을 위한 의사소견서'가 필요할 수도 있습니다.</li>
		                    <li>안전을 위해 배터리로 작동되어야 합니다. (기내의 전원을 사용할 수 없습니다)</li>
		                    <li>배터리 수량은 환승 시간 등을 고려하여 총 비행시간의 150% 정도 작동할 수 있도록 충분히 준비 하되, 160Wh 이하의 배터리여야<br/> 합니다.</li>		            
               			 </ul>
                    </div>
                </div>
             </div>
             <p class="section-title">특별 기내식</p>
             
            </div>
        </section>
        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/common.js"></script>
        <script src="../../JS/information.js"></script>
    </body>
</html>