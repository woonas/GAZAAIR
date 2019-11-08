<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운항노선도</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/layout.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script async defer src="http://maps.googleapis.com/maps/api/js?region=KR&key=AIzaSyD-r87drTCRcQGSXESQUSisAXRA4cTmIbk&callback=initMap"></script>
<style>
#main{
	max-width:1200px;
	margin:0px auto;
	height: 730px;
}
#map{
	width: 1000px;
	height: 600px;
	float: left;
}
#localWrap{
	width: 200px;
	float: left;
}
.localList>div{
	width: 150px;
	height: 50px;
	font-size: 110%;
	line-height: 50px;
	text-align: center;
	margin: 10px auto;
	background-color: #fff;
	border-radius : 10px;
	border: 1px solid #ccc;
}
.localList>div:hover{
	background-color: #ccc !important;
}
.localList>div:first-child{
	background-color: #36f;
	color: #fff;
}
footer{
	margin-top: 50px;
}

</style>
<script>
	var latitude = 37.448546;//위도
	var logitude = 126.451134;//경도
	function initMap(){
		//LatLog : 지도의 중심위치
		var myCenter = new google.maps.LatLng(latitude, logitude);//인천공항
		var mapProperty = {
			//변수  : 상수
			center : myCenter,
			zoom : 4, //0~21사이의 값을 사용. 값이 클수록 확대.
			mapTypeId : google.maps.MapTypeId.ROADMAP //ROADMAP, HYBRID, STELLITE, TERRAIN				
		}
		//맵 객체 생성
		//							  						지도표시할 div, 옵션
		var map = new google.maps.Map(document.getElementById("map"), mapProperty);
		
		//마커 표시하기
		var markerProperty = {
				position : myCenter,
				map : map,
				icon : "../../../IMG/icon/marker_blue2.png", //마커로 표시할 이미지.
				title : "인천(ICN)"
		};
		var marker = new google.maps.Marker(markerProperty);
		marker.setMap(map);
		
		var la = [
				34.858618, 37.558797, 37.459224, 36.721960, 35.899478, 35.925899, 35.593110, 35.984635, 35.139808, 34.993547,
				34.840152, 35.092319, 35.173202, 33.510619, 31.802871, 22.574718, 36.394702, 23.396134, 
				33.839219, 34.858571, 22.609813, 37.954993, 35.772004, 35.549384, 22.157856, 44.524327, 
				40.079816, 42.782129, 31.144307, 31.192402, 24.539129, 41.635435, 22.636986, 34.437314, 
				43.670949, 40.736398, 42.888149, 37.658833, 34.432307, 33.478644, 34.757754, 26.206451,
				43.907346, 30.776765, 37.187270, 29.104072, 34.525536, 36.857346, 28.196856, 36.266847, 
				25.096763, 25.079612, 39.130539, 30.235726, 31.987047, 22.307958, 29.728385, 33.590306, 
				
				12.010720, 16.056266, 11.750090, -8.746791, 28.556021, 14.512139, 4.188858, 19.089347, 
				13.690062, 4.944086, 17.975720, 17.975720, 1.364474, 16.902541, -6.127165, 18.767749, 
				27.697852, 11.686006, 5.923215, 7.180145, 2.745811, 15.184638, 7.364313, 8.110968, 
				11.552849, 21.218775, 10.818379, 40.641327, 32.899899, 42.216347, 36.083939, 33.942224, 
				44.884915, 49.197615, 42.365574, 37.621287, 47.450402, 41.974170, 33.640862, 38.953250, 
				43.677904, 21.324523,
				
				51.470494, 41.799815, 40.498193, 45.629980, 41.297501, 48.115812, 52.310571, 41.260316,
				45.740646, 47.458245, 49.009990, 50.101798, 50.038001,
				
				13.485214, -17.753553, -27.394001, -33.939789, -37.008239, 
				55.973594, 43.394884, 59.802902, 47.852186, 46.886972, 52.268475, 41.261116, 48.527185, 
				25.253155, 24.441909, 32.005505
				];
		
		var lo = [
				136.811189, 126.802898, 127.977151, 127.495889, 128.638397, 126.615666, 129.355594, 129.433908, 126.810934, 126.387823,
				127.614014, 128.086461, 128.946470, 126.491300, 130.718013, 120.344764, 136.407580, 113.307970, 
				131.033048, 136.811421, 108.172152, 139.110744,	140.392786, 139.779753, 113.576273, 129.569318, 
				116.603209, 141.688994, 121.808348, 121.334147, 118.134411, 123.496835, 113.814992, 108.758005, 
				142.454346, 140.691913, 129.446990, 120.991621, 135.231110, 131.735727, 133.854453, 127.646649, 
				87.474521, 114.212718, 122.229114, 110.451577, 113.846371, 117.216357, 113.221370, 120.383531, 
				102.928620, 121.234271, 117.359694, 120.439052, 116.969715, 113.918513, 118.259032, 130.446677, 
				
				109.216689, 108.200737, 108.368169, 115.166680, 77.099958, 121.016433, 73.528634, 72.865689, 
				100.750059, 114.932484, 102.568210, 102.568349, 103.991348, 96.135454, 106.653738, 98.964030, 
				85.359223, 122.380786, 116.050931, 79.884252, 101.707128, 120.557031, 134.532966, 98.306540, 
				104.844948, 105.804300, 106.658921, -73.778300, -97.040239, -83.355534, -115.153567, -118.405561, 
				-93.222317, -123.181805, -71.009700, -122.378837, -122.308902, -87.907300, -84.427797, -77.456539, 
				-79.624959, -157.925052,
				
				-0.452402, 12.246313, -3.567663, 8.725552, 2.083380, 16.566575, 4.768307, 28.742821,
				16.067608, 8.555282, 2.547826, 14.263106, 8.562302, 
				144.800844, 177.450591, 153.121864, 151.175266, 174.785057,
				37.412482, 132.147785, 30.267850, 106.761933, 142.723812, 104.383337, 69.278824, 135.172513,
				55.365684, 54.650052, 34.885400
				
				];
		titleList = ['나고야(NGO)', '서울/김포(GMP)', '원주(WJU)', '청주(CJJ)', '대구(TAE)', '군산(KUV)', '울산(USN)', '포항(KPO)', '광주(KWJ)', '무안(MWX)', 
					'여수/순천(RSU)', '진주/사천(HIN)', '부산/김해(PUS)', '제주(CJU)', '가고시마(KOJ)', '가오슝(KHH)', '고마스(KMQ)', '광저우(CAN)', 
					'기타큐슈(KKJ)', '나고야(NGO)', '난닝(NNG)', '니가타(KIJ)', '도쿄/나리타(NRT)', '도쿄/하네다(HND)', '마카오(MFM)', '무단장(MDG)', 
					'베이징(PEK)', '삿포로(CTS)', '상하이/푸동(PVG)', '상하이/홍차오(SHA)', '샤먼(XMN)', '선양(SHE)', '선전(SZX)', '시안(XIY)', 
					'아사히카와(AKJ)', '아오모리(AOJ)', '옌지(YNJ)', '옌타이(YNT)', '오사카(KIX)', '오이타(OIT)', '오카야마(OKJ)', '오키나와(OKA)', 
					'우루무치(URC)', '우한(WUH)', '웨이하이(WEH)', '장자제(DYG)', '정저우(CGO)', '지난(TNA)', '창사(CSX)', '칭다오(TAO)', 
					'쿤밍(KMG)', '타이베이(TPE)', '텐진(TSN)', '항저우(HGH)', '허페이(HFE)', '홍콩(HKG)', '황산(TXN)', '후쿠오카(FUK)', 
					
					'나트랑(CXR)', '다낭(DAD)', '달랏(DLI)', '덴파사르 발리(DPS)', '델리(DEL)','마닐라(MNL)', '말레(MLE)', '뭄바이(BOM)', 
					'방콕(BKK)', '브루나이(BWN)', '비에티안(VTE)', '세부(CEB)', '싱가포르(SIN)', '양곤(RGN)','자카르타(CGK)', '치앙마이(CNX)', 
					'카트만두(KTM)', '칼리보(KLO)', '코타키나발루(BKI)', '콜롬보(CMB)', '쿠알라룸푸르(KUL)', '클락/앙헬레스(CRK)', '팔라우(ROR)', '푸껫(HKT)',
					'프놈펜(PNH)', '하노이(HAN)', '호찌민(SGN)', '뉴욕/존 F.케네디(JFK)', '댈러스/포트워스(DFW)','디트로이트(DTW)', '라스베이거스(LAS)', '로스앤젤레스(LAX)',
					'미니애폴리스(MSP)', '벤쿠버(YVR)', '보스턴(BOS)', '샌프란시스코(SFO)', '시애틀(SEA)', '시카고/오헤어(ORD)', '애틀랜타(ATL)', '워싱턴/덜레스(IAD)', 
					'토론토(YYZ)', '호놀룰루(HNL)',
					
					'런던(LHR)', '로마(FCO)', '마드리드(MAD)', '밀라노(MXP)', '바르셀로나(BCN)', '비엔나(VIE)', '암스테르담(AMS)', '이스탄불(IST)',
					'자그레브(ZAG)', '취리히(ZRH)', '파리(CDG)', '프라하(PRG)', '프랑크푸르트(FRA)',
					
					'괌(GUM)', '나디(NAN)', '브리즈번(BNE)', '시드니(SYD)', '오클랜드(AKL)',
					
					'모스크바(SVO)', '블라디보스토크(VVO)', '상트페테르부르크(LED)', '울란바타르(ULN)', '유즈노사할린스크(UUS)', '이르쿠츠크(IKT)', '타슈켄트(TAS)', '하바롭스크(KMV)',
					'두바이(DXB)', '아부다비(AUH)', '텔아비브(TLV)'
					];
		
		//다중 마커
		var marker2;
		for(i=0; i<la.length; i++){
				marker2 = new google.maps.Marker({
					position:new google.maps.LatLng(la[i], lo[i]),
					title : titleList[i],
					icon : "../../../IMG/icon/marker_blue2.png"
				
			});
			marker2.setMap(map);	
		};
		
		//클릭이벤트
		var moveLat = [37.448546, 10.633564, 39.963307, 48.091176, -27.460786, 50.894497, 14.265327];
		var moveLng = [126.451134, 112.727658, -98.127786, 14.552380, 153.027773, 78.540042, 39.362423];
		
		$(".localList>div").on("click", function(){
			var idx = $(this).index();
			var move = new google.maps.LatLng(moveLat[idx], moveLng[idx]);
			map.setCenter(move);
		});
	}//initMap
	
	$(function(){
		var btnName = ["동북아시아", "동남/서남아시아", "미주", "유럽", "대양주/괌", "러시아/중앙아시아", "중동/아프리카"];

		for(i=0; i<7; i++){
			$('.localList').append("<div>"+btnName[i]+"</div>");
		};
		var key = false;
		$(".localList>div").on("click", function(){
			$(".localList>div").css("background-color", "#fff");
			$(".localList>div").css("color", "#555");
			
			$(this).css("background-color", "#36f");
			$(this).css("color", "#fff");
			
		});
	});
</script>
</head>
<body>
<%@ include file="../../common/nav.jspf" %>
<div id="main">
	<h3>운항노선도</h3>
	<div id="contents">
		<div id="map"></div>
		<div id="localWrap">
			<div class="localList">
			</div>
		</div>
	</div>
</div>
<%@ include file="../../common/footer.jspf" %>

</body>
</html>