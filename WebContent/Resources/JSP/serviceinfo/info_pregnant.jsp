<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>임신 중 여행</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content">
            <h3>임신 중 여행</h3>
            <div class="info-banner">
                    <div class="banner-fare-2">
                        <div>
                            <p>아시아나항공에서는 임신부 고객께서 편안하고<br/>안전한 여행이 될 수 있도록 세심한 서비스로 모십니다.<br/>뱃 속의 아기와 함께 더욱 편안한 여행이 되세요. </p>
                        </div>
                    </div>
                </div>
            
            <ul class="list-type2 last-note bg-gray5">
                <li class="list-inside-title">유의사항</li>
                <li>임신과 관련된 합병증이 있거나 유산, 조기 출산의 가능성이 있는 경우에는 임신 기간에 관계없이 승객의 안전과 항공기 안전운항을 위해 비행 전 아시아나항공으로부터 항공 여행에 대한 사전 승인이 필요합니다.</li>
                <li>전문가들은 임신 초 3개월까지와 임신 36주 이후에는 항공여행을 피할 것을 권고하고 있습니다.</li>
                <li>사이판으로 여행 시 임신 6개월 이상 임신부는 임신 기간 및 항공여행 가능여부가 명기된 의사소견서(영문)를 준비하여야 하며,<br/> 사이판 이민국은 임신 8개월 이상의 경우는 항공여행을 피할 것을 권고하고 있습니다.</li>              
            </ul>
            <p class="section-title">임신 기간별 항공여행 안내</p>
            
            <div class="table-form2">
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                        임신 32주 미만
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>임신관련 합병증 (임신성 고혈압, 당뇨 등) 및 유산, 조기출산 가능성이 확인된 경우를 제외하고는 제한 없이 여행이<br/> 가능합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       임신 32주 ~ 37주
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>탑승수속 시 서약서 제출 및 증빙서류 제출이 필요합니다.</li>
                            <li>증빙서류 : 탑승일 기준 7일 이내에 작성된 진단서나 소견서(Medical Certificate) 원본 1부, 사본 2부</li>
                            <li>기재내용 : 항공여행의 적합 여부, 분만(출산) 예정일<br/>- 주수포함, 초산 여부, 분만 징후 및 임신 관련 합병증 유무, 기내 주의사항에 대한 확인</li>
                        </ul>
                    </div>
                </div>
                    <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       임신 37주 이상
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>고객의 안전을 위하여 항공기에 탑승하실 수 없습니다.</li>
                            <li>다태 임신일 경우 33주 이상부터 탑승하실 수 없습니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <p class="section-title">임신 중 여행 서비스 이용 안내</p>
            <div class="table-form2">
                <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       이용대상
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>혼자 여행하는 임신부 고객</li>
                        </ul>
                    </div>
                </div>
                    <div class="row clearfix">
                    <div class="col-fourth table-row-title">
                       신속한 탑승수속 서비스
                    </div>
                    <div class="col-three-fourth">
                        <ul class="list-type2">
                            <li>서비스 내용 </li>
                            <li>-항공기 우선 탑승</li>
                            <li>-도착지에서의 위탁수하물 우선 하기</li><br/>
                            <li>적용노선</li>
                            <li>-전 국제선 노선</li>
                        </ul>
                    </div>
                </div>
            </div>
            <p class="section-title">서비스 신청방법</p>
          		  공항 내 임신 중 여행/해피맘/패밀리 카운터에서 산모수첩을 제시하고 서비스 신청.<br/>
					* 인천공항을 제외한 전 국제선 공항은 해피맘 전용 카운터를 이용
            
	</section>
        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/information.js"></script>
    </body>
</html>
