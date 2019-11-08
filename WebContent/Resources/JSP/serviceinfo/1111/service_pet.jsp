<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반려동물 동반</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>s"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../../HTML/not_using/main.js"></script>
<style>
hr{
	margin:15px 0 15px 0;
	height: 1px;
	border: none;
	background-color: #aaa;
}
h4 {
	float: left;
	font-weight: bold;
	color: black;
	font-size:25px;
}
nav {
	width: 100%;
	height: 70px;
	background-color: gray;
}

#warp {
	width: 100%;
}

#contents {
	max-width: 1200px;
	margin: 0px auto;
}

#title {
	height: 200px;
	text-align: center;
}

#title h1 {
	margin: 55px 0;
}

.onContent {
	display: none;
	padding: 100px 20px;
	height: 100%;
}
.name{
	float:left;
	font-size:20px;
	
}
.write{
	float:right;
	margin-bottom:10px;
}
.li{
	list-style-type:none;
	margin-left:10px;
	margin-bottom:10px;
}
</style>
<script>
</script>
</head>
<body>
<%@ include file="../../common/nav.jspf" %>

		<div id="contents">
			<section id="title">
				<h3>반려동물 동반</h3>
			</section>
			<section>
				<div><img src="../../../IMG/service/petMain.png" style="width:100%; margin-top:-70px;"/></div>
				<div style="float:left; margin-top:12px;"><h4>반려동물 동반</h4></div><br/><br/>
				<hr/>
				<div style="margin-left:25px;">
					<h4>운송 가능한 동물</h4><br/><br/>
					<ul>
						<li>· 운송 가능한 동물의 종류 : 개, 고양이, 애완용 새</li>
						<li>· 운송 가능한 동물의 수 : 성인 탑승객 1인당 기내 반입 1마리, 위탁수하물 2마리, 소아는 반려동물 운송불가 (단, 새는 1Cage 당 한 쌍 가능)</li>
					</ul><br/>
				</div><hr/>
				
				<div style="margin-left:25px;">
					<h4>기내반입 가능한 경우</h4><br/><br/>
					<ul>
						<li>· 케이지를 포함한 반려 동물의 무게가 7kg 이하인 경우</li>
						<li>· 운반용기의 삼변의 길이의 합이 115cm 이하이며, 케이지의 높이는 최대 21cm 이내인 경우 (소프트케이스는 26cm까지로 반드시 좌석 밑 보관이 가능해야 합니다.)</li>
						<li>· 1인당 케이지1개, 1마리만 반입 가능(단, 아직 성견이 되지 않은 6개월 미만의 강아지 2마리 또는 고양이 2마리-어미와 어린 새끼, 새 1쌍인 경우 같이 넣을 수 있음)</li>
						<li>· 반려동물은 안전 운항을 위해 반드시 케이지 내에서 보관되어야 하며, 꺼내는 행위는 엄격히 금지되어 있습니다.</li>
						<li>· 항공기 좌석 구조 및 안전 규정에 따라 좌석 하단에 반려동물의 운송용기 보관이 불가하여 활주 및 이착륙 시 승무원의 안내에 따라 다른 공간에 보관할 수 있음을 알려드립니다.</li>
						
					</ul><br/>
				</div><hr/>
				
				<div style="margin-left:25px;">
					<h4>수하물로 위탁하는 경우</h4><br/><br/>
					<ul>
						<li>· 반려 동물의 크기가 기내 수하물 규격을 넘는 경우</li>
						<li>· 운반 용기를 포함한 동물의 무게가 45kg 이하이고 운반 용기의 3면 길이의 합이 285cm, 높이 84cm 이하인 경우</li>
						<li>· 항공기 기종 및 운항 구간에 따라, 기내 반입 또는 수하물로 위탁할 수 있는 두수 제한 또는 탑재가 거절될 수 있습니다.</li>
					</ul><br/>
				</div><hr/>
				
				<div style="margin-left:25px;">
					<h4>운반 용기의 조건</h4><br/><br/>
					<ul>
						<li>· 잠금 장치가 장착되어 있어야 하며, 바닥이 밀폐되어 있어야 합니다.</li>
						<li>· 반려 동물이 서거나 움직이는 데 불편이 없을 정도의 충분한 공간이 있어야 합니다.</li>
						<li>· 새를 운반하실 경우 비행 중 외부로 드러나지 않도록 천으로 가려져 있어야 합니다.</li>
						<li>· 운반 용기는 금속, 목재 및 플라스틱 등의 견고한 재질이어야 합니다.</li>
						<li>· 기내로 반입하는 경우 천, 가죽 재질도 가능하나 프레임 등으로 일정한 모양이 유지되어야 합니다.</li>
						<li>· 1개의 운반 용기에 2마리의 반려동물을 넣을 수 없습니다.<br/>&nbsp;(단, 아직 성견이 되지 않은 6개월 미만의 강아지 2마리 또는 고양이2마리, 새 1쌍인 경우는 예외)</li>
					</ul><br/>
				</div><hr/>
					
				<div style="margin-left:25px;">
					<h4>운송 제한되는 경우</h4><br/><br/>
					<ul>
						<li>· 여행목적지 도시 또는 국가의 관련 규정과 법령으로 제한되는 경우에는 불가합니다.</li>
						<li>· 운항 기종별 허용 두수를 초과하는 경우에는 불가합니다.</li>
						<li>· 운반 용기가 운송 기준을 충족하지 못하는 경우에는 불가합니다</li>
						<li>· 운반 용기의 삼면의 합 285cm 또는 반려동물과 운반 용기의 총 중량 45kg 초과하는 경우에는 불가합니다. <br/> &nbsp;*일부 국가와 도시의 경우 총 중량 32kg 이내인 경우에만 허용되거나 중량 또는 크기에 관계없이 여객기 운송이 제한될 수 있습니다.</li>
						<li>· 생후 16주 미만, 안정제/수면제가 투여된 반려동물은 운송이 불가합니다.</li>
						<li>· 임신 중이거나 악취가 심한 경우, 맹견(투견 등 사나운 동물), 맹금류는 운송이 불가합니다.</li>
						<li>· 운송이 제한되는 맹견의 종류 </li>
						<li>· 혹한기에는 반려 동물의 건강과 안전을 위해 위탁이 제한될 수 있습니다.</li>
						<li>· 에어 부산 공동 운항편은 저희 가자항공에서 직접 운행하지 않으므로 반려 동물 위탁 서비스를 제공하지 못하오니 양해 부탁 드립니다.</li>
					</ul><br/>
				</div>
			</section>
		</div>
		
		</div>
		<%@ include file="../../common/footer.jspf" %>
</body>
</html>