<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등급안내</title>
<link rel="stylesheet" href="../../CSS/information.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<%@ include file="../common/nav.jspf" %>
	<section class="content">
		<div><h3>회원 안내</h3></div>
		<div class="tab-menu1">
	       <ul class="clearfix">
	           <li class="col-half on" id='tab-1'><a href="#none" onclick="return false;">우수회원 승급/자격유지 기준</a></li>
	           <li class="col-half" id='tab-2'><a href="#none" onclick="return false;">우수회원 등급별 혜택</a></li>
	       </ul>
	    </div>
	    <div id="tab-1-container" class="tab-content-container">
			<ul class="list-type2 last-note bg-gray6">
				<li>GAZA 클럽 우수회원이란 실버등급을 제외한 골드 이상 회원을 뜻합니다.</li>
				<li>2018년 10월 1일부터는 ‘기준일’로부터 매 24개월간의 자격 조건 및 자격 유지 조건에 아시아나 제휴카드 이용 실적이 반영되어 우수회원 자격을 보다 쉽게 획득하실 수 있도록 하였습니다.</li>
			</ul>
			<br><br>
			<div class="h2Text"><h2>승급 기준</h2></div>
			<br>
			<table class="table-list">
	            <col-group>
	                <col style="width: 30%">
	                <col style="width: 60%">
	                <col>
	            </col-group>
	            <tbody>
	                <tr class="bg-blue5">
	                    <th>구분</th>
	                    <th>자격조건</th>
	                    <th>유지 기간</th>
	                </tr>
	                <tr>
	                    <td class="bg-gray5 gradeimg"><img src="../../IMG/mypage_Img/platinum.jpg"/></td>
	                    <td>가입일로부터 다음의 어느 한 조건을 충족할 경우<br/>
							1) 100만 탑승 마일 적립<br/>
							2) 아시아나항공 1,000회 탑승
						</td>
	                    <td rowspan="2" class="text-align-center">평생</td>
	                </tr>
	                <tr>
	                    <td rowspan="2" class="bg-gray5"><img src="../../IMG/mypage_Img/diamondplus.jpg"/></td>
	                    <td>가입일로부터 다음의 어느 한 조건을 충족할 경우<br/>
							1) 50만 탑승 마일 적립<br/>
							2) 아시아나항공 500회 탑승
						</td>
	                </tr>
	                <tr>
	                    <td>‘기준일*’로부터 매 24개월간 다음의 어느 한 조건을 충족할 경우<br/>
							1) 10만 탑승 마일 적립<br/>
							2) 아시아나항공 100회 탑승<br/>
							3) 탑승 마일이 7만 5천 마일 이상이면서 아시아나 제휴카드 이용 실적과 합하여 10만 마일 적립
						</td>
						<td rowspan="3" class="text-align-center">조기 승급 기간<br/>+24개월</td>
	                </tr>
	                <tr>
	                    <td class="bg-gray5"><img src="../../IMG/mypage_Img/diamond.jpg"/></td>
	                    <td>‘기준일*’로부터 매 24개월간 다음의 어느 한 조건을 충족할 경우<br/>
							1) 4만 탑승 마일 적립<br/>
							2) 아시아나항공 50회 탑승<br/>
							3) 탑승 마일이 3만 마일 이상이면서 아시아나 제휴카드 이용 실적과 합하여 4만 마일 적립
						</td>
	                </tr>
	                <tr>
	                    <td class="bg-gray5"><img src="../../IMG/mypage_Img/gold.jpg"/></td>
	                    <td>‘기준일*’로부터 매 24개월간 다음의 어느 한 조건을 충족할 경우<br/>
							1) 2만 탑승 마일 적립<br/>
							2) 아시아나항공 30회 탑승<br/>
							3) 탑승 마일이 1만 5천 마일 이상이면서 아시아나 제휴카드 이용 실적과 합하여 2만 마일 적립
						</td>
	                </tr>
	                
	            </tbody>
	        </table>
	        <br><br>
	        <div class="h2Text"><h2>자격 유지 기준</h2></div>
	        <br>
	        <table class="table-list">
	        	<col-group>
	        		<col style="width:30%">
	        		<col style="width:60%">
	        		<col>
	        	</col-group>
	        	<tbody>
	        		<tr class="bg-blue5">
	        			<th>구분</th>
	        			<th>자격 조건</th>
	        			<th>유지 기간</th>
	        		</tr>
	        		<tr>
	                    <td class="bg-gray5"><img src="../../IMG/mypage_Img/diamondplus.jpg"/></td>
	                    <td>‘기준일*’로부터 매 24개월간 다음의 어느 한 조건을 충족할 경우<br/>
							1) 7만 5천 탑승 마일 적립<br/>
							2) 아시아나항공편 60회 탑승<br/>
							3) 탑승 마일이 5만 마일 이상이면서 아시아나 제휴카드 이용 실적과 합하여 7만 5천 마일 적립
						</td>
	                    <td rowspan="3" class="text-align-center">조기 승급 기간<br/>+24개월</td>
	                </tr>
	                <tr>
	                    <td class="bg-gray5"><img src="../../IMG/mypage_Img/diamond.jpg"/></td>
	                    <td>‘기준일*’로부터 매 24개월간 다음의 어느 한 조건을 충족할 경우<br/>
							1) 3만 탑승 마일 적립<br/>
							2) 아시아나항공 30회 탑승<br/>
							3) 탑승 마일이 2만 마일 이상이면서 아시아나 제휴카드 이용 실적과 합하여 3만 마일 적립
						</td>
	                </tr>
	                <tr>
	                    <td class="bg-gray5"><img src="../../IMG/mypage_Img/gold.jpg"/></td>
	                    <td>‘기준일*’로부터 매 24개월간 다음의 어느 한 조건을 충족할 경우<br/>
							1) 1만 5천 탑승 마일 적립<br/>
							2) 아시아나항공편 20회 탑승<br/>
							3) 탑승 마일이 1만 마일 이상 이면서 아시아나 제휴카드 이용 실적과 합하여 1만 5천 마일 적립
						</td>
	                </tr>
	        	</tbody>
	        </table>
        </div>
        <div id="tab-2-container" class="tab-content-container hidden">
        	<ul class="list-type2 last-note bg-gray6">
				<li>GAZA 클럽 우수회원이란 실버등급을 제외한 골드 이상 회원을 뜻합니다.</li>
				<li>2018년 10월 1일부터는 ‘기준일’로부터 매 24개월간의 자격 조건 및 자격 유지 조건에 아시아나 제휴카드 이용 실적이 반영되어 우수회원 자격을 보다 쉽게 획득하실 수 있도록 하였습니다.</li>
			</ul>
			<br><br>
			<div class="h2Text"><h2>승급 기준</h2></div>
			<br>
			<table class="table-list">
	            <col-group>
	                <col style="width: 20%">
	                <col style="width: 16%">
	                <col style="width: 16%">
	                <col style="width: 16%">
	                <col style="width: 16%">
	                <col>
	            </col-group>
	            <tbody>
	                <tr class="bg-blue5">
	                    <th>구분</th>
	                    <th>골드</th>
	                    <th>다이아몬드</th>
	                    <th colspan="2">다이아몬드 플러스</th>
	                    <th>플래티늄</th>
	                </tr>
	                <tr>
	                    <td class="bg-gray5">회원자격 유지기간</td>
	                    <td class="text-align-center">24개월</td>
	                    <td class="text-align-center">24개월</td>
	                    <td class="text-align-center">24개월</td>
	                    <td class="text-align-center">평생</td>
	                    <td class="text-align-center">평생</td>
	                </tr>
	                
	                <tr>
	                    <td class="bg-gray5">공제 마일리지 할인쿠폰<br>(승급 후)</td>
	                    <td class="text-align-center">-</td>
	                    <td class="text-align-center">-</td>
	                    <td class="text-align-center">-</td>
	                    <td class="text-align-center">매 24개월간 아시아나항공편 및 스타얼라이언스 항공편 10만 탑승마일 적립 또는 아시아나항공 100회 탑승시 2매 (좌석 승급 공제마일 50% 할인 또는 마일리지 항공권 1만 마일 할인)</td>
	                    <td class="text-align-center">아시아나항공편 10만 탑승마일 적립 시 마다 2매 (좌석 승급 공제마일 50% 할인 또는 마일리지 항공권 1만 마일 할인)</td>
	                </tr>
	                
	                <tr>
	                    <td class="bg-gray5" rowspan="2">한국 소재 라운지 이용</td>
	                    <td class="text-align-center" rowspan="2">비즈니스 클래스라운지 이용권 2매(승급 및 자격 유지실적 충족 시)</td>
	                    <td class="text-align-center" rowspan="2">비즈니스 클래스라운지(동반자 1인 포함)</td>
	                    <td class="text-align-center">소지하신 항공권의차상위라운지(동반자 1인 포함)</td>
	                    <td class="text-align-center">2018.12.31. 까지승급 시 최상위라운지 이용2019.1.1. 부터승급 시 차상위라운지 이용</td>
	                    <td class="text-align-center">최상위 라운지(동반자 1인 포함)</td>
	                </tr>
	                
	                <tr>
	                	<td class="text-align-center" colspan="3">2018. 7. 1. 부터 인천공항 최상위 라운지 이용 우수회원 혜택은아시아나항공이 운항하는 정기 항공편 탑승 시에만 가능</td>
	                </tr>
	                
	                <tr>
	                    <td class="bg-gray5">해외 소재 라운지 이용</td>
	                    <td class="text-align-center">-</td>
	                    <td class="text-align-center" colspan="4">스타얼라이언스 골드 비즈니스 라운지, 계약 비즈니스 라운지</td>
	                </tr>
	                
	                <tr>
	                    <td class="bg-gray5"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                </tr>
	                
	                <tr>
	                    <td class="bg-gray5"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                </tr>
	                
	                <tr>
	                    <td class="bg-gray5"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                </tr>
	                
	                <tr>
	                    <td class="bg-gray5"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                </tr>
	                
	                <tr>
	                    <td class="bg-gray5"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                </tr>
	                
	                <tr>
	                    <td class="bg-gray5"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                    <td class="text-align-center"></td>
	                </tr>
	                
	                
	                
	               
	                
	            </tbody>
	        </table>
        </div>
        		
	</section>
    <%@ include file="../common/footer.jspf" %>
    <script src="../../JS/common.js"></script>
	<script src="../../JS/information.js"></script>
</body>
</html>