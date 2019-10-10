<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가자에어 메인</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/main.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/index.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Vendor/jqueryUI/jquery-ui.min.css" type="text/css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="<%=request.getContextPath() %>/Resources/JS/main.js"></script>
<script src="<%=request.getContextPath() %>/Vendor/backstretch/jquery.backstretch.min.js"></script>
<script src="<%=request.getContextPath() %>/Vendor/jqueryUI/jquery-ui.min.js"></script>
<script src="<%=request.getContextPath() %>/Vendor/bxSlider/jquery.bxslider.min.js"></script>
<link href="<%=request.getContextPath() %>/Vendor/bxSlider/jquery.bxslider.css" rel="stylesheet" />
<script>
$(function(){
	//배경이미지 슬라이더
     $("#main").backstretch([
        "Resources/IMG/main/mainBg1.jpg",
        "Resources/IMG/main/mainBg2.jpg",
        "Resources/IMG/main/mainBg3.jpg",
        "Resources/IMG/main/mainBg4.jpg",
        "Resources/IMG/main/mainBg5.jpg",
        "Resources/IMG/main/mainBg6.jpg",
        "Resources/IMG/main/mainBg7.jpg",
        "Resources/IMG/main/mainBg8.jpg"
        ], {
          fade: 750,
          duration: 4000
      });
      
	//배경이미지슬라이더 컨트롤러
	for(i=1; i<=8; i++){
		$('.dotsWrap').append("<img src='Resources/IMG/icon/control_dots.png'/>");
	};
	$(window).on("backstretch.after", function (e, instance, index) {
		for(i=1; i<=8; i++){
			$(".dotsWrap>img").css("top", "-15px");
		}
		$('.dotsWrap>img').eq(index).css("top", "0");
	});
	$('.playState').append("<img src='Resources/IMG/icon/pause_blue.png' title='일시정지'/>");
	$('.playState').append("<img src='Resources/IMG/icon/play_blue.png' title='재생' style='display:none'/>");
	$('.dotsWrap>img').on("click", function(){
		var idx = $(this).index();
		$("#main").backstretch("show", idx-1);
		for(i=1; i<=8; i++){
			$(".dotsWrap>img").css("top", "-15px");
		}
		$(this).css("top", "0");
	});
	
	//플레이버튼, 일시중지버튼 변경
	$('.playState').click(function(){
		$(this).find('img').toggle();
	});
	$('.playState>img').click(function(){
		if(this.title==="일시정지"){
			$("#main").backstretch("pause");
		}else{
			$("#main").backstretch("resume");
		}
	});
	
	//select 기능구현
	$(".selectFrm > p").click(function() {
	    $(this).next("ul").toggle();
	    return false;
	});
	 
	$(".selectFrm > ul > li").click(function() {
	    $(this).parent().hide().parent(".selectFrm").children("p").text($(this).text());
	});
	
	//출발지, 도착지 다이얼로그 창 표시
	$(".dialogOpen").click(function(){
		var selected_item="";
		var clickedBtn= $(this);
		
		//다이얼로그 안에 출발/도착 글자 변경
		if(clickedBtn.is(".departure")===true){
			$(".startDialog").attr("title", "출발지 선택");
		}else{
			$(".startDialog").attr("title", "도착지 선택");
		}
		
		//모달 외부 스크롤 사용 중지
		$('html, body').css({'overflow': 'hidden'}); 
		$('#element').on('scroll touchmove mousewheel', function(event) { 
			event.preventDefault();
			event.stopPropagation();
			return false;
		});
		
		//다이얼로그 호출
		$(".startDialog").dialog({
			modal: true,
			minWidth:800,
			minHeight: 500,
			close : function(){
				$('html, body').css({'overflow': 'auto'}); 
				$('#element').off('scroll touchmove mousewheel');
			}
		});
		
		//MENU 셋팅
		$(".locMenu").menu({
			select: function(event, ui){
				selected_item = ui.item.text().split("(");
				$(clickedBtn).css("font-size", "150%");
				$(clickedBtn).text(selected_item[0]);
				$(".startDialog").dialog("close");
			}
		});
	});//다이얼로그onclick
	/////////////////////////////////////////////////////////////////////
	//section best
	/////////////////////////////////////////////////////////////////////
	$(".bestBanner").bxSlider({
			mode : 'horizontal'//'horizontal', 'vertical', 'fade'
			,slideWidth : 1200 //슬라이드 폭
			,slideHeight : 400 //슬라이드 높이
			,speed: 1000 //전환속도
			,auto : false //자동시작(true, false)
			,captions : true //title 속성에 있는 문자열을 설명으로 표시하기
			,autoControls : false //정지/ 재생 컨트롤을 보여줌 = true, false : 안보임
			,pager: false
			,useCSS : true// css의 easing 사용여부(true, false)
			,infiniteLoop : true //반복여부 : true, false
			,adaptiveHeight : true // 이미지 크기에 따라 높이 조절여부
			,hideControlOnEnd : true //처음과 끝에 컨트롤 표시 여부 : infiniteLoop false
			,maxSlides: 4 // 표시되는 배너 숫자
			,moveSlides:1 // 1개씩 이동
			,slideWidth: 300 //개별배너의 좌우폭
			,slideMargin: 0 //배너간의 간격
			,autoHover:true //오버되어있을때 슬라이딩이 멈춤
	});
	$(".eventBanner").bxSlider({
		mode : 'horizontal'//'horizontal', 'vertical', 'fade'
		,slideWidth : 1200 //슬라이드 폭
		,slideHeight : 400 //슬라이드 높이
		,speed: 1000 //전환속도
		,auto : false //자동시작(true, false)
		,captions : true //title 속성에 있는 문자열을 설명으로 표시하기
		,autoControls : false //정지/ 재생 컨트롤을 보여줌 = true, false : 안보임
		,pager: false
		,useCSS : true// css의 easing 사용여부(true, false)
		,infiniteLoop : true //반복여부 : true, false
		,adaptiveHeight : true // 이미지 크기에 따라 높이 조절여부
		,hideControlOnEnd : true //처음과 끝에 컨트롤 표시 여부 : infiniteLoop false
		,maxSlides: 4 // 표시되는 배너 숫자
		,moveSlides:1 // 1개씩 이동
		,slideWidth: 300 //개별배너의 좌우폭
		,slideMargin: 0 //배너간의 간격
		,autoHover:true //오버되어있을때 슬라이딩이 멈춤
	});
	
	
});

</script>
</head>
<body>
<%@ include file="Resources/JSP/nav.jspf" %>
<section id="main">
	<!-- 슬라이더 컨트롤러 -->
	<div class="slideControler">
		<div class="dotsWrap"><div class="playState"></div></div>
	</div>
	<!-- 심플예약폼 -->
	<div class="simple_reservation_wrap">
		<div class="reservation_contents">
			<div class="departure dialogOpen" title="출발지를 선택하세요">출발지<img src="<%=request.getContextPath() %>/Resources/IMG/icon/marker_black.png"/></div>
			<div class="tripDate">출발일</div>
		</div>
		<div class="reservation_contents">
			<div class="arrival dialogOpen" title="도착지를 선택하세요.">도착지<img src="<%=request.getContextPath() %>/Resources/IMG/icon/marker_black.png"/></div>
			<div class="tripDate">귀국일</div>
		</div>
		<div class="reservation_contents">
			<div class="tripType selectFrm" title="여정 종류를 선택하세요.">
				<p>왕복 여행</p>
				<ul>
					<li>왕복 여행</li>
					<li>편도 여행</li>
					<li>다구간 여행</li>
				</ul>
			</div>
		</div>
		<div class="reservation_contents">
			<div class="passenger selectFrm" title="탑승 인원을 선택하세요.">
				<p>승객 1명</p>
				<ul>
					<li>승객 1명</li>
					<li>승객 2명</li>
					<li>승객 3명</li>
					<li>승객 4명</li>
					<li>승객 5명</li>
				</ul>
			</div>
		</div>
		<div class="reservation_contents">
			<input type="submit" class="simple_reservation_submit" value="조회"/>
		</div>
	</div>
	<!-- 출발, 도착지 다이얼로그 -->
	<div class="startDialog" title="출발지 선택">
		<h2>지역과 도시를 선택하여 주십시오.</h2>
		<h4>지역</h4>
		<div class="locMenuWrap">
			<ul class="locMenu">
				<li><div>대한민국</div>
					<ul>
						<li><div>서울(SEL),모든 공항</div>
						<li><div>서울/인천(ICN)</div></li>
						<li><div>서울/김포(GMP)</div></li>
						<li><div>부산/김해(PUS)</div></li>
						<li><div>제주(CJU)</div></li>
						<li><div>광주(KWJ)</div></li>
						<li><div>군산(KUV)</div></li>
						<li><div>대구(TAE)</div></li>
						<li><div>무안(MWX)</div></li>
						<li><div>여수/순천(RSU)</div></li>
						<li><div>울산(USN)</div></li>
						<li><div>원주(WJU)</div></li>
						<li><div>진주/사천(HIN)</div></li>
						<li><div>청주(CJJ)</div></li>
						<li><div>포항(KPO)</div></li>
					</ul>
				</li>
				<li><div>동북아시아</div>
					<ul>
						<li><div>가고시마(KOJ)</div></li>
						<li><div>가오슝(KHH)</div></li>
						<li><div>고마쓰(KMQ)</div></li>
						<li><div>광저우(CAN)</div></li>
						<li><div>기타큐슈(KKJ)</div></li>
						<li><div>나고야(NGO)</div></li>
						<li><div>난닝(NNG)</div></li>
						<li><div>난징(NKG)</div></li>
						<li><div>니가타(KIJ)</div></li>
						<li><div>다롄(DLC)</div></li>
						<li><div>도쿄(TYO)</div></li>
						<li><div>도쿄/나리타(NRT)</div></li>
						<li><div>도쿄/하네다(HND)</div></li>
						<li><div>마카오(MFM)</div></li>
						<li><div>무단장(MDG)</div></li>
						<li><div>베이징(PEK),서우두</div></li>
						<li><div>삿포로(CTS),치토세</div></li>
						<li><div>상하이(SHA),모든 공항</div></li>
						<li><div>상하이/푸동(PVG)</div></li>
						<li><div>상하이/홍차오(SHA)</div></li>
						<li><div>샤먼(XMN)</div></li>
						<li><div>선양(SHE)</div></li>
						<li><div>선전(SZX)</div></li>
						<li><div>시안(XIY),셴양</div></li>
						<li><div>아사히카와(AKJ)</div></li>
						<li><div>아오모리(AOJ)</div></li>
						<li><div>옌지(YNJ)</div></li>
						<li><div>옌타이(YNT)</div></li>
						<li><div>오사카(KIX),간사이</div></li>
						<li><div>오이타(OIT)</div></li>
						<li><div>오카야마(OKJ)</div></li>
						<li><div>오키나와(OKA)</div></li>
						<li><div>우루무치(URC)</div></li>
						<li><div>우한(WUH)</div></li>
						<li><div>웨이하이(WEH)</div></li>
						<li><div>장자제(DYG)</div></li>
						<li><div>정저우(CGO)</div></li>
						<li><div>지난(TNA)</div></li>
						<li><div>창사(CSX)</div></li>
						<li><div>칭다오(TAO)</div></li>
						<li><div>쿤밍(KMG)</div></li>
						<li><div>타이베이(TPE),타오위엔</div></li>
						<li><div>톈진(TSN)</div></li>
						<li><div>항저우(HGH)</div></li>
						<li><div>허페이(HFE)</div></li>
						<li><div>홍콩(HKG)</div></li>
						<li><div>황산(TXN)</div></li>
						<li><div>후쿠오카(FUK)</div></li>
					</ul>
				</li>
				<li><div>동남아시아/서남아시아</div>
					<ul>
						<li><div>나트랑(CXR)공항</div></li>
						<li><div>다낭(DAD)공항</div></li>
						<li><div>달랏(DLI)공항</div></li>
						<li><div>덴파사르 발리(DPS)공항</div></li>
						<li><div>델리(DEL)공항</div></li>
						<li><div>마닐라(MNL)공항</div></li>
						<li><div>말레(MLE)공항</div></li>
						<li><div>뭄바이(BOM)공항</div></li>
						<li><div>방콕(BKK)공항</div></li>
						<li><div>브루나이(BWN)공항</div></li>
						<li><div>비엔티안(VTE)공항</div></li>
						<li><div>세부(CEB)공항</div></li>
						<li><div>싱가포르(SIN), 창이공항</div></li>
						<li><div>양곤(RGN)공항</div></li>
						<li><div>자카르타(CGK), 수카르노 하타공항</div></li>
						<li><div>치앙마이(CNX)공항</div></li>
						<li><div>카트만두(KTM)공항</div></li>
						<li><div>칼리보(KLO)공항</div></li>
						<li><div>코타키나발루(BKI)공항</div></li>
						<li><div>콜롬보(CMB)공항</div></li>
						<li><div>쿠알라룸푸르(KUL)공항</div></li>
						<li><div>클락/앙헬레스(CRK)공항</div></li>
						<li><div>팔라우(ROR)공항</div></li>
						<li><div>푸껫(HKT)공항</div></li>
						<li><div>프놈펜(PNH)공항</div></li>
						<li><div>하노이(HAN)공항</div></li>
						<li><div>호찌민(SGN)공항</div></li>					
					</ul>
				</li>
				<li><div>미주(북/남미)</div>
					<ul>
						<li><div>뉴욕(NYC), NY, 모든 공항2개 이상의 공항이 있습니다</div></li>
						<li><div>뉴욕/뉴어크 리버티(EWR), NJ공항</div></li>
						<li><div>뉴욕/라과디아(LGA), NY공항</div></li>
						<li><div>뉴욕/존 F. 케네디(JFK), NY공항</div></li>
						<li><div>댈러스(DFW), TX, 모든 공항2개 이상의 공항이 있습니다</div></li>
						<li><div>댈러스/러브 필드(DAL), TX공항</div></li>
						<li><div>댈러스/포트워스(DFW), TX공항</div></li>
						<li><div>디트로이트(DTW), MI, 메트로폴리탄 웨인 카운티공항</div></li>
						<li><div>라스베이거스(LAS), NV, 매캐런공항</div></li>
						<li><div>로스앤젤레스(LAX), CA공항</div></li>
						<li><div>미니애폴리스(MSP), MN공항</div></li>
						<li><div>밴쿠버(YVR), BC공항</div></li>
						<li><div>보스턴(BOS),MA공항</div></li>
						<li><div>샌프란시스코(SFO), CA공항</div></li>
						<li><div>시애틀(SEA), WA, 타코마공항</div></li>
						<li><div>시카고(CHI), IL, 모든 공항2개 이상의 공항이 있습니다</div></li>
						<li><div>시카고/미드웨이(MDW), IL공항</div></li>
						<li><div>시카고/오헤어(ORD), IL공항</div></li>
						<li><div>애틀랜타(ATL), GA, 하츠필드잭슨공항</div></li>
						<li><div>워싱턴(WAS), DC, 모든 공항2개 이상의 공항이 있습니다</div></li>
						<li><div>워싱턴/덜레스(IAD), DC공항</div></li>
						<li><div>워싱턴/레이건 내셔널(DCA), DC공항</div></li>
						<li><div>토론토(YYZ), ON, 피어슨공항</div></li>
						<li><div>호놀룰루(HNL), HI공항</div></li>
						<li><div>취항지 이외의 도시</div></li>
						<li><div>걸프포트/빌록시(GPT), MS공항</div></li>
						<li><div>게인스빌(GNV), FL공항</div></li>
						<li><div>과달라하라(GDL)공항</div></li>
						<li><div>그랑 융티온(GJT), CO공항</div></li>
						<li><div>그랜드래피즈(GRR), MI공항</div></li>
						<li><div>그랜드포크스(GFK), ND공항</div></li>
						<li><div>그렛 팔스(GTF), MT공항</div></li>
						<li><div>그린베이(GRB), WI공항</div></li>
						<li><div>그린빌(GSP), SC공항</div></li>
						<li><div>그린즈버러(GSO), NC공항</div></li>
						<li><div>내슈빌(BNA), TN공항</div></li>
						<li><div>낸터킷(ACK), MA공항</div></li>
						<li><div>너나이모(YCD), BC공항</div></li>
						<li><div>노퍽(ORF), VA공항</div></li>
						<li><div>녹스빌(TYS), TN공항</div></li>
						<li><div>뉴버그(SWF), NY공항</div></li>
						<li><div>뉴베른(EWN), NC공항</div></li>
						<li><div>뉴올리언스(MSY), LA공항</div></li>
						<li><div>뉴포트뉴스(PHF), VA공항</div></li>
						<li><div>덜루스(DLH)공항</div></li>
						<li><div>데이턴(DAY), OH공항</div></li>
						<li><div>데이토너비치(DAB), FL공항</div></li>
						<li><div>덴버(DEN), CO공항</div></li>
						<li><div>도탄(DHN), MI공항</div></li>
						<li><div>디모인(DSM), IA공항</div></li>
						<li><div>띠프 리버 팔스(TVF), MN공항</div></li>
						<li><div>라인랜더(RHI), WI공항</div></li>
						<li><div>라크로스(LSE), WI공항</div></li>
						<li><div>라피엣(LFT), LA공항</div></li>
						<li><div>래피드시티(RAP), SD공항</div></li>
						<li><div>랜싱(LAN), MI공항</div></li>
						<li><div>레드먼드(RDM), OR공항</div></li>
						<li><div>렉싱턴(LEX), KY공항</div></li>
						<li><div>로어노크(ROA), VA공항</div></li>
						<li><div>로체스터(ROC), NY공항</div></li>
						<li><div>로체스터(RST), MN공항</div></li>
						<li><div>롤리더럼(RDU), NC공항</div></li>
						<li><div>롱비치(LGB), CA공항</div></li>
						<li><div>루이빌(SDF), KY공항</div></li>
						<li><div>루이스턴(LWS), ID공항</div></li>
						<li><div>리노(RNO), NV공항</div></li>
						<li><div>리마(LIM)공항</div></li>
						<li><div>리자이나(YQR), SK공항</div></li>
						<li><div>리치먼드(RIC), VA공항</div></li>
						<li><div>리틀 록(LIT), AR공항</div></li>
						<li><div>리후에(LIH), HI공항</div></li>
						<li><div>링컨(LNK), NE공항</div></li>
						<li><div>마르케트(MQT), MI공항</div></li>
						<li><div>마서스비니어드(MVY), MA공항</div></li>
						<li><div>마이놋(MOT), ND공항</div></li>
						<li><div>마이애미(MIA), FL공항</div></li>
						<li><div>매디슨(MSN), WI공항</div></li>
						<li><div>매캘런(MFE), TX공항</div></li>
						<li><div>맨체스터(MHT), NH공항</div></li>
						<li><div>머틀(MYR), SC공항</div></li>
						<li><div>먼로(MLU), LA공항</div></li>
						<li><div>메드퍼드(MFR), OR공항</div></li>
						<li><div>멕시코 시티(MEX)공항</div></li>
						<li><div>멜번(MLB), FL공항</div></li>
						<li><div>멤피스(MEM), TN공항</div></li>
						<li><div>모빌(MOB), AL공항</div></li>
						<li><div>몬터레이(MRY), CA공항</div></li>
						<li><div>몬테레이(MTY)공항</div></li>
						<li><div>몬트로즈(MTJ), CO공항</div></li>
						<li><div>몬트리올(YUL), QC공항</div></li>
						<li><div>몰린(MLI), IL공항</div></li>
						<li><div>몽고메리(MGM), AL공항</div></li>
						<li><div>미줄라(MSO), MT공항</div></li>
						<li><div>밀워키(MKE), WI공항</div></li>
						<li><div>발도스타(VLD), GA공항</div></li>
						<li><div>배턴루지(BTR), LA공항</div></li>
						<li><div>밸퍼레이조(VPS), FL공항</div></li>
						<li><div>뱅고어(BGR), ME공항</div></li>
						<li><div>버밍엄 (BHM), AL공항</div></li>
						<li><div>버뱅크(BUR), CA공항</div></li>
						<li><div>버펄로(BUF), NY공항</div></li>
						<li><div>벌링턴(BTV), VT공항</div></li>
						<li><div>베미지(BJI), MN공항</div></li>
						<li><div>벨링햄(BLI), WA공항</div></li>
						<li><div>보고타(BOG)공항</div></li>
						<li><div>보이시(BOI), ID공항</div></li>
						<li><div>보즈만(BZN), MT공항</div></li>
						<li><div>볼티모어(BWI), MD공항</div></li>
						<li><div>부에노스아이레스(EZE), Ministro Pistarini공항</div></li>
						<li><div>뷰트(BTM), MT공항</div></li>
						<li><div>브런즈윅(BQK), GA공항</div></li>
						<li><div>브레이너드(BRD), MN공항</div></li>
						<li><div>블루밍턴 노멀(BMI), IL공항</div></li>
						<li><div>비즈마크(BIS), ND공항</div></li>
						<li><div>빅토리아(YYJ), BC공항</div></li>
						<li><div>빌링스(BIL), MT공항</div></li>
						<li><div>빙엄턴(BGM), NY공항</div></li>
						<li><div>사우스벤드(SBN), IN공항</div></li>
						<li><div>산타로사(STS), CA공항</div></li>
						<li><div>산티아고(SCL)공항</div></li>
						<li><div>산호세 델카보(SJD)공항</div></li>
						<li><div>산호세(SJC), CA공항</div></li>
						<li><div>산후안(SJU)공항</div></li>
						<li><div>새기노(MBS), MI공항</div></li>
						<li><div>새러소타(SRQ), FL공항</div></li>
						<li><div>새크라멘토(SMF), CA공항</div></li>
						<li><div>샌디에이고(SAN), CA공항</div></li>
						<li><div>샌안토니오(SAT), TX공항</div></li>
						<li><div>샌타바버라(SBA), CA공항</div></li>
						<li><div>샬럿(CLT), NC공항</div></li>
						<li><div>샬럿아말리에(STT)공항</div></li>
						<li><div>샬럿츠빌(CHO), VA공항</div></li>
						<li><div>서배너(SAV), GA공항</div></li>
						<li><div>선 밸리(SUN), ID공항</div></li>
						<li><div>세인트루이스(STL), MO공항</div></li>
						<li><div>세인트조지(SGU), UT공항</div></li>
						<li><div>세인트존스(YYT), NL공항</div></li>
						<li><div>세인트크로이섬(STX)공항</div></li>
						<li><div>솔트레이크 시티(SLC), UT공항</div></li>
						<li><div>수세인트마리(CIU), MI공항</div></li>
						<li><div>수폴스(FSD), SD공항</div></li>
						<li><div>슈리브포트(SHV), LA공항</div></li>
						<li><div>스테이트 콜리지(SCE), PA공항</div></li>
						<li><div>스포캔(GEG), WA공항</div></li>
						<li><div>스프링필드(SGF), MO공항</div></li>
						<li><div>시더래피즈(CID), IA공항</div></li>
						<li><div>시더시티(CDC), UT공항</div></li>
						<li><div>시러큐스(SYR), NY공항</div></li>
						<li><div>신시내티(CVG), OH공항</div></li>
						<li><div>싯카(SIT), AK공항</div></li>
						<li><div>아스펜(ASE), CO공항</div></li>
						<li><div>아이다호폴스(IDA), ID공항</div></li>
						<li><div>알렉산드리아(AEX), LA공항</div></li>
						<li><div>애버딘(ABR), SD공항</div></li>
						<li><div>애슈빌(AVL), NC공항</div></li>
						<li><div>애크런/캔튼(CAK), OH공항</div></li>
						<li><div>애플턴(ATW), WI공항</div></li>
						<li><div>앨런타운(ABE), PA공항</div></li>
						<li><div>앨버커키(ABQ), NM공항</div></li>
						<li><div>앨피나(APN), MI공항</div></li>
						<li><div>앵커리지(ANC), AK공항</div></li>
						<li><div>야키마(YKM), WA공항</div></li>
						<li><div>에드먼턴(YEG), AB공항</div></li>
						<li><div>에번즈빌(EVV), IN공항</div></li>
						<li><div>에스커나바(ESC), MI공항</div></li>
						<li><div>엘마이라(ELM), NY공항</div></li>
						<li><div>엘코(EKO), NV공항</div></li>
						<li><div>엘패소(ELP), TX공항</div></li>
						<li><div>오거스타(AGS), GA공항</div></li>
						<li><div>오렌지 카운티(SNA), CA공항</div></li>
						<li><div>오마하(OMA), NE공항</div></li>
						<li><div>오스틴(AUS), TX공항</div></li>
						<li><div>오클라호마 시티(OKC), OK공항</div></li>
						<li><div>오클랜드(OAK), CA공항</div></li>
						<li><div>오타와(YOW), ON공항</div></li>
						<li><div>온타리오(ONT), CA공항</div></li>
						<li><div>올랜도(MCO), FL공항</div></li>
						<li><div>올버니(ABY), GA공항</div></li>
						<li><div>올버니(ALB), NY공항</div></li>
						<li><div>왈라왈라(ALW), WA공항</div></li>
						<li><div>우스터 (ORH), MA공항</div></li>
						<li><div>워소(CWA)공항</div></li>
						<li><div>웨내치(EAT)공항</div></li>
						<li><div>웨스트 엘로스톤(WYS), MT공항</div></li>
						<li><div>웨스트팜비치(PBI), FL공항</div></li>
						<li><div>위니펙(YWG), MB공항</div></li>
						<li><div>위치토(ICT), KS공항</div></li>
						<li><div>윌리스턴(ISN), ND공항</div></li>
						<li><div>윌밍턴(ILM), NC공항</div></li>
						<li><div>윌크스배리(AVP), PA공항</div></li>
						<li><div>유진(EUG), OR공항</div></li>
						<li><div>이글(EGE)공항</div></li>
						<li><div>이런 마운틴(IMT), MI공항</div></li>
						<li><div>이리(ERI), PA공항</div></li>
						<li><div>이타카(ITH), NY공항</div></li>
						<li><div>인디애나폴리스(IND), IN공항</div></li>
						<li><div>인터내셔널폴스(INL), MN공항</div></li>
						<li><div>잭슨(JAC), WY, 잭슨 홀공항</div></li>
						<li><div>잭슨(JAN), MS, 잭슨 에버스공항</div></li>
						<li><div>잭슨빌(JAX), FL공항</div></li>
						<li><div>잭슨빌(OAJ), NC,앨버트 J.엘리스공항</div></li>
						<li><div>쥬노(JNU), AK공항</div></li>
						<li><div>질레트(GCC), WY공항</div></li>
						<li><div>찰스턴(CHS), SC공항</div></li>
						<li><div>찰스턴(CRW), WV공항</div></li>
						<li><div>채터누가(CHA), TN공항</div></li>
						<li><div>카라카스(CCS)공항</div></li>
						<li><div>카팔루아(JHM), HI공항</div></li>
						<li><div>카훌루이(OGG), HI공항</div></li>
						<li><div>칸쿤(CUN)공항</div></li>
						<li><div>칼리스펠(FCA), MT공항</div></li>
						<li><div>칼리지 스테이션(CLL), TX공항</div></li>
						<li><div>캐스퍼(CPR), WY공항</div></li>
						<li><div>캔자스시티(MCI), MO공항</div></li>
						<li><div>캘거리(YYC), AB공항</div></li>
						<li><div>캘러머주(AZO), MI공항</div></li>
						<li><div>컬럼비아(CAE), SC공항</div></li>
						<li><div>케치칸(KTN), AK공항</div></li>
						<li><div>코나(KOA), HI공항</div></li>
						<li><div>코디(COD), WY공항</div></li>
						<li><div>콜럼버스(CMH), OH, 존 글렌공항</div></li>
						<li><div>콜럼버스(CSG), GA, 메트로폴리탄공항</div></li>
						<li><div>콜럼버스(GTR), MS, 골든 트라이앵글공항</div></li>
						<li><div>콜로라도 스프링스(COS), CO공항</div></li>
						<li><div>퀘백(YQB), QC공항</div></li>
						<li><div>클리블랜드(CLE), OH공항</div></li>
						<li><div>키토(UIO)공항</div></li>
						<li><div>킬린(GRK), TX공항</div></li>
						<li><div>탤러해시(TLH), FL공항</div></li>
						<li><div>탬파(TPA), FL공항</div></li>
						<li><div>털사(TUL), OK공항</div></li>
						<li><div>테구시갈파(TGU)공항</div></li>
						<li><div>투손(TUS), AZ공항</div></li>
						<li><div>트라이시티(TRI), TN공항</div></li>
						<li><div>트래버스시티(TVC), MI공항</div></li>
						<li><div>트윈 팔스(TWF), ID공항</div></li>
						<li><div>파고(FAR), ND공항</div></li>
						<li><div>파나마 시티(ECP), FL공항</div></li>
						<li><div>파이에트빌(FAY), NC공항</div></li>
						<li><div>팜스프링스(PSP), CA공항</div></li>
						<li><div>패너마시티(PTY)공항</div></li>
						<li><div>패스코(PSC), WA공항</div></li>
						<li><div>페어뱅크스(FAI), AK공항</div></li>
						<li><div>페이엣빌(XNA), AR공항</div></li>
						<li><div>펜서콜라(PNS), FL공항</div></li>
						<li><div>펠스톤(PLN), MI공항</div></li>
						<li><div>포커텔로(PIH), ID공항</div></li>
						<li><div>포트로더데일(FLL), FL공항</div></li>
						<li><div>포트마이어스(RSW), FL공항</div></li>
						<li><div>포트맥머레이(YMM)공항</div></li>
						<li><div>포트스미스(FSM), AR공항</div></li>
						<li><div>포트웨인(FWA), IN공항</div></li>
						<li><div>포틀랜드(PDX), OR공항</div></li>
						<li><div>포틀랜드(PWM), ME, 제트포트공항</div></li>
						<li><div>푸에르토 바야르타(PVR)공항</div></li>
						<li><div>풀먼(PUW), WA공항</div></li>
						<li><div>프레즈노(FAT), CA공항</div></li>
						<li><div>프로비던스(PVD), RI공항</div></li>
						<li><div>프린스 조지(YXS), BC공항</div></li>
						<li><div>플린트(FNT), MI공항</div></li>
						<li><div>피닉스(PHX), AZ공항</div></li>
						<li><div>피오리아(PIA), IL공항</div></li>
						<li><div>피츠버그(PIT), PA공항</div></li>
						<li><div>필라델피아(PHL), PA공항</div></li>
						<li><div>하트퍼드(BDL), CT공항</div></li>
						<li><div>할링전(HRL), TX공항</div></li>
						<li><div>해리스버그(MDT), PA공항</div></li>
						<li><div>핼리팩스(YHZ), NS공항</div></li>
						<li><div>헌츠빌(HSV), AL공항</div></li>
						<li><div>헤이든(HDN), CO공항</div></li>
						<li><div>헬레나(HLN), MT공항</div></li>
						<li><div>화이트 플레인스(HPN), NY공항</div></li>
						<li><div>휴스턴(HOU), TX, 모든 공항2개 이상의 공항이 있습니다</div></li>
						<li><div>휴스턴/윌리엄 P 호비(HOU), TX공항</div></li>
						<li><div>휴스턴/조지 부시 인터콘티넨털(IAH), TX공항</div></li>
						<li><div>히빙(HIB), MN공항</div></li>
						<li><div>힐로(ITO), HI공항</div></li>
						<li><div>힐튼 헤드 아일랜드(HHH), SC</div></li>					
					</ul>
				</li>
				<li><div>유럽</div>
					<ul>
						<li><div>런던(LHR), 히드로공항</div></li>
						<li><div>로마(FCO), 다빈치공항</div></li>
						<li><div>마드리드(MAD)공항</div></li>
						<li><div>밀라노(MXP), 말펜사공항</div></li>
						<li><div>바르셀로나(BCN)공항</div></li>
						<li><div>비엔나(VIE)공항</div></li>
						<li><div>암스테르담(AMS), 스키폴공항</div></li>
						<li><div>이스탄불(IST)공항</div></li>
						<li><div>자그레브(ZAG)공항</div></li>
						<li><div>취리히(ZRH)공항</div></li>
						<li><div>파리(CDG), 샤를 드 골공항</div></li>
						<li><div>프라하(PRG)공항</div></li>
						<li><div>프랑크푸르트(FRA)공항</div></li>
						<li><div>취항지 이외의 도시</div></li>
						<li><div>고센버그(GOT)공항</div></li>
						<li><div>그라나다(GRX)공항</div></li>
						<li><div>그라츠(GRZ)공항</div></li>
						<li><div>그란카나리아(LPA)공항</div></li>
						<li><div>글래스고(GLA)공항</div></li>
						<li><div>나폴리(NAP)공항</div></li>
						<li><div>낭트(NTE)공항</div></li>
						<li><div>뉘른베르크(NUE)공항</div></li>
						<li><div>뉴캐슬(NCL)공항</div></li>
						<li><div>니스(NCE)공항</div></li>
						<li><div>더블린(DUB)공항</div></li>
						<li><div>두브로브니크(DBV)공항</div></li>
						<li><div>뒤셀도르프(DUS)공항</div></li>
						<li><div>라코루냐(LCG)공항</div></li>
						<li><div>레이캬비크(KEF)공항</div></li>
						<li><div>렌(RNS)공항</div></li>
						<li><div>룩셈부르크(LUX)공항</div></li>
						<li><div>류블랴나(LJU)공항</div></li>
						<li><div>리가(RIX)공항</div></li>
						<li><div>리스본(LIS)공항</div></li>
						<li><div>리옹(LYS)공항</div></li>
						<li><div>린츠(LNZ)공항</div></li>
						<li><div>마르세유(MRS)공항</div></li>
						<li><div>말라가(AGP)공항</div></li>
						<li><div>맨체스터(MAN)공항</div></li>
						<li><div>몰타(MLA)공항</div></li>
						<li><div>몽펠리에(MPL)공항</div></li>
						<li><div>뮌헨(MUC)공항</div></li>
						<li><div>바르샤바(WAW)공항</div></li>
						<li><div>바리(BRI)공항</div></li>
						<li><div>바젤(BSL)공항</div></li>
						<li><div>발렌시아(VLC)공항</div></li>
						<li><div>버밍엄(BHX)공항</div></li>
						<li><div>베니스(VCE)공항</div></li>
						<li><div>베로나(VRN)공항</div></li>
						<li><div>베르겐(BGO)공항</div></li>
						<li><div>베를린(BER), 모든 공항2개 이상의 공항이 있습니다</div></li>
						<li><div>베를린/쇠네펠트(SXF)공항</div></li>
						<li><div>베를린/테겔(TXL)공항</div></li>
						<li><div>벨그라드(BEG)공항</div></li>
						<li><div>벨파스트(BHD)공항</div></li>
						<li><div>보르도(BOD)공항</div></li>
						<li><div>볼로냐(BLQ)공항</div></li>
						<li><div>부다페스트(BUD)공항</div></li>
						<li><div>부카레스트(OTP)공항</div></li>
						<li><div>브레멘(BRE)공항</div></li>
						<li><div>브레스트(BES)공항</div></li>
						<li><div>브뤼셀(BRU)공항</div></li>
						<li><div>비고(VGO)공항</div></li>
						<li><div>빌니우스(VNO)공항</div></li>
						<li><div>빌룬(BLL)공항</div></li>
						<li><div>빌바오(BIO)공항</div></li>
						<li><div>소피아(SOF)공항</div></li>
						<li><div>슈투트가르트(STR)공항</div></li>
						<li><div>스타방에르(SVG)공항</div></li>
						<li><div>스톡홀름(ARN)공항</div></li>
						<li><div>스트라스부르(SXB)공항</div></li>
						<li><div>스플리트(SPU)공항</div></li>
						<li><div>아테네(ATH)공항</div></li>
						<li><div>에든버러(EDI)공항</div></li>
						<li><div>에버딘(ABZ)공항</div></li>
						<li><div>오슬로(OSL)공항</div></li>
						<li><div>오슬로(TRF)공항</div></li>
						<li><div>올레순(AES)공항</div></li>
						<li><div>올보르(AAL)공항</div></li>
						<li><div>이비사(IBZ)공항</div></li>
						<li><div>잘츠부르크(SZG)공항</div></li>
						<li><div>제네바(GVA)공항</div></li>
						<li><div>제노아(GOA)공항</div></li>
						<li><div>카타니아(CTA)공항</div></li>
						<li><div>코시체(KSC)공항</div></li>
						<li><div>코펜하겐(CPH)공항</div></li>
						<li><div>크리스티안산(KRS)공항</div></li>
						<li><div>클레르몽(CFE)공항</div></li>
						<li><div>테네리페 노르테(TFN)공항</div></li>
						<li><div>투린(TRN)공항</div></li>
						<li><div>툴루즈(TLS)공항</div></li>
						<li><div>트론헤임(TRD)공항</div></li>
						<li><div>트리에스테(TRS)공항</div></li>
						<li><div>티라나(TIA)공항</div></li>
						<li><div>팔레르모(PMO)공항</div></li>
						<li><div>팔마데마요르카(PMI)공항</div></li>
						<li><div>포(PUF)공항</div></li>
						<li><div>포르투(OPO)공항</div></li>
						<li><div>플로렌스(FLR)공항</div></li>
						<li><div>피사(PSA)공항</div></li>
						<li><div>하노버(HAJ)공항</div></li>
						<li><div>함부르크(HAM)공항</div></li>
						<li><div>헬싱키(HEL)</div></li>			
					</ul>
				</li>
				<li><div>대양주/괌</div>
					<ul>
						<li><div>괌(GUM)공항</div>
						<li><div>난디(NAN)공항</div>
						<li><div>브리즈번(BNE)공항</div>
						<li><div>시드니(SYD), 킹즈퍼드 스미스공항</div>
						<li><div>오클랜드(AKL)</div>
					</ul>
				</li>
				<li><div>러시아/몽골/중앙아시아</div>
					<ul>
						<li><div>모스크바(SVO), 셰레메체보공항</div></li>
						<li><div>블라디보스토크(VVO)공항</div></li>
						<li><div>상트페테르부르크(LED), 풀코보공항</div></li>
						<li><div>울란바타르(ULN)공항</div></li>
						<li><div>유즈노사할린스크(UUS)공항</div></li>
						<li><div>이르쿠츠크(IKT)공항</div></li>
						<li><div>타슈켄트(TAS)공항</div></li>
						<li><div>하바롭스크(KHV)</div></li>
					</ul>
				</li>
				<li><div>중동/아프리카</div>
					<ul>
						<li><div>두바이(DXB)공항</div></li>
						<li><div>아부다비(AUH)공항</div></li>
						<li><div>텔아비브(TLV), 벤 구리온</div></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</section>

<section id="best">
	<div>
		<div><p>베스트 상품</p><a href="prd_BestProduct.html">&nbsp;베스트상품 전체보기 +&nbsp;</a></div>
		<div class="bestBannerWrap">
			<ul class="bestBanner">
				<li><a href="prd_BestProduct.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/product_Img/hanoi.jpg' title="서울/인천 ＜＝＞ 하노이 KRW 195,000 ~"/></a>
				</li>
				<li><a href="prd_BestProduct.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/product_Img/hongkong.jpg' title="서울/인천 ＜＝＞ 홍콩 KRW 205,000 ~"/></a>
				</li>
				<li><a href="prd_BestProduct.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/product_Img/jejudo.jpg' title="서울/김포 ＝＞ 제주 KRW 19,500 ~"/></a>
				</li>
				<li><a href="prd_BestProduct.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/product_Img/palau.jpg' title="서울/인천 ＜＝＞ 팔라우 KRW 756,000 ~"/></a>
				</li>
				<li><a href="prd_BestProduct.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/product_Img/sanghai.jpg' title="서울/인천 ＜＝＞ 하노이 KRW 195,000 ~"/></a>
				</li>
				<li><a href="prd_BestProduct.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/product_Img/hanoi.jpg' title="서울/인천 ＜＝＞ 하노이 KRW 195,000 ~"/></a>
				</li>
				<li><a href="prd_BestProduct.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/product_Img/hongkong.jpg' title="서울/인천 ＜＝＞ 홍콩 KRW 205,000 ~"/></a>
				</li>
				<li><a href="prd_BestProduct.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/product_Img/jejudo.jpg' title="서울/김포 ＝＞ 제주<br/>KRW 19,500 ~"/></a>
				</li>
			</ul>
		</div>
	</div>
</section>
<section id="event">
	<div>
		<div><p>이벤트</p><a href="prd_alliance_event.html">&nbsp;진행중인 이벤트 전체보기 +&nbsp;</a></div>
		<div class="eventBannerWrap">
			<ul class="eventBanner">
				<li><a href="prd_alliance_event.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/event/event1.jpeg' title="가자에어 X 스무디킹 할인 제휴 기념 이벤트"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/event/event2.jpeg' title="KB국민카드 결제 금액의 5%, 돌려드리는 Special"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/event/event3.jpeg' title="나의 해외여행 동반자 My Trip 카드 이벤트"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/event/event4.jpeg' title="뉴욕의 낮과 밤을 가자에어와 함께"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/event/event5.jpeg' title="AJ렌터카 마일리지 더블적립 이벤트"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<img src='<%=request.getContextPath() %>/Resources/IMG/event/event6.jpeg' title="안녕, 몽골!, 반가워, 골드! 우수회원 체험 이벤트"/></a>
				</li>
			</ul>
		</div>
	</div>
</section>
<section id="info">
	<div id="infoWrap">
		<div id="notice">
			<p>공지사항</p>
			<table class="table">
				<thead>
					<tr>
						<td><a href="notice.html">더 보기</a></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="#">[공지] 제 13호 태풍 '링링'으로 인한 국제선 결항 안내</a></td>
					</tr>
					<tr>
						<td><a href="#">[공지] 제 13호 태풍 '링링'으로 인한 국내선 결항 안내</a></td>
					</tr>
					<tr>
						<td><a href="#">[공지] KB국민카드 서비스 일시중단 안내</a></td>
					</tr>
					<tr>
						<td><a href="#">[국내선] 추석연휴 기간 김포-부산(GMP-PUS) 노 ...</a></td>
					</tr>
					<tr>
						<td><a href="#">[국제선] 청주-타이베이(CJJ-TPE) 운항시간 변경 ...</a></td>
					</tr>
					<tr>
						<td><a href="#">2019년 9월 신용카드 할부 서비스 안내</a></td>
					</tr>
					<tr>
						<td><a href="#">[공지] 말레이시아 출국세 부과 안내 (2019.09.01~)</a></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="review">
			<p>고객의말씀</p>
			<table class="table">
				<thead>
					<tr>
						<td><a href="review.html">더 보기</a></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="#">9월 날씨, 인천-다낭 가자에어 탑승 후기, 포켓 와이파이</a></td>
					</tr>
					<tr>
						<td><a href="#">[모스크바/러시아] 항공리뷰 : 가자에어(GAZA Air)...</a></td>
					</tr>
					<tr>
						<td><a href="#">동유럽 여행 :) 가자에어 KE0935, KE0938</a></td>
					</tr>
					<tr>
						<td><a href="#">방콕 항공권, 가자에어 KE657 후기! 태국 수완나폼 고고</a></td>
					</tr>
					<tr>
						<td><a href="#">라운지, 가자에어 기내식 과일식 (feat. 공항철도는 어디에서..</a></td>
					</tr>
					<tr>
						<td><a href="#">괌여행 - 가자에어 프레스티지석 / 웨스틴호텔</a></td>
					</tr>
					<tr>
						<td><a href="#">유럽 비행기표예약 & 인천-비엔나 대한항공 KE937 탑승과 근황</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</section>
<%@ include file="Resources/JSP/footer.jspf" %>
</body>
</html>