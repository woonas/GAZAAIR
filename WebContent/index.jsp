<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가자에어 메인</title>
<!-- css -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/layout.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/main.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/index.css" type="text/css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="<%=request.getContextPath() %>/Resources/JS/main.js"></script>
<script src="<%=request.getContextPath() %>/Vendor/backstretch/jquery.backstretch.min.js"></script>
<script src="<%=request.getContextPath() %>/Vendor/bxSlider/jquery.bxslider.min.js"></script>
<link href="<%=request.getContextPath() %>/Vendor/bxSlider/jquery.bxslider.css" rel="stylesheet" />
<script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
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
		
		//모달 외부 스크롤 사용 중지
		$('html, body').css({'overflow': 'hidden'}); 
		$('#element').on('scroll touchmove mousewheel', function(event) { 
			event.preventDefault();
			event.stopPropagation();
			return false;
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
	});
	//이벤트
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
<div class="overlay"></div>
<section class="content">
<section id="main">
	<!-- 슬라이더 컨트롤러 -->
	<div class="slideControler">
		<div class="dotsWrap"><div class="playState"></div></div>
	</div>
	<!-- 심플예약폼 -->
	<div class="reserve_wrap">
		<div class="reserveBox">
			<div>
        		<input type="text" id="airportFrom-1" name="airportFrom-1" class="open-airport-picker tripLoc" readonly placeholder="출발지">
       		</div>
       		<div class="tripDate">출발일</div>
       	</div>
		<div class="reserveBox">
			<div>
				<input type = "text" id="airportTo-1" name="airportTo-1" class="open-airport-picker tripLoc" readonly placeholder="도착지">
			</div>
			<div class="tripDate">귀국일</div>
		</div>
		<div class="reserveBox">
			<div id="waySelect">
				<div class="col-third">
					<input type="radio" class="radio1" name="trip-type" value="round-way" id="round-way" checked>
					<label for="round-way" class="firstRadio">왕복</label>
				</div>
				<div class="col-third">
					<input type="radio" class="radio1" name="trip-type" value="single-way" id="single-way">
					<label for="single-way">편도</label>
				</div>
				<div class="col-third">
					<input type="radio" class="radio1 lastRadio" name="trip-type" value="multi-way" id="multi-way">
					<label for="multi-way">다구간</label>
				</div>
			</div>
			<div>
				
			</div>
		</div>
		<div class="reserveBox">
			<input type="submit" class="simple_reservation_submit" value="조회"/>
		</div>
	</div>
</section>

<section id="best">
	<div>
		<div><p>베스트 상품</p><a href="<%=path %>/Resources/HTML/prd_BestProduct.html">&nbsp;전체보기 +&nbsp;</a></div>
		<div id="bestBannerWrap">
			<ul id="bestBanner">
				<li>
					<a href="<%=path %>/Resources/HTML/prd_BestProduct.html">
						<div class="imgTag">미주</div>
						<div class="imgFrame">
							<img src='<%=path %>/Resources/IMG/main/newyork.jpg'/>
						</div>
						<div class="textBox">
							<div>
								<h5>가자에어의 뉴욕 여행기</h5>
								<div>인플루언서가 추천한 뉴욕의 핫플레이스, 나도 가보고 싶은 사람 손~들~어~요~</div>
								<h6>더 보기-></h6>
							</div>
						</div>
					</a>
				</li>
				<li><a href="<%=path %>/Resources/HTML/prd_BestProduct.html">
					<div class="imgTag">동남아</div>
					<div class="imgFrame">
						<img src='<%=path %>/Resources/IMG/main/bangkok.jpg' title="서울/인천 ＜＝＞ 홍콩 KRW 205,000 ~"/>
					</div>
					<div class="textBox">
						<div>
							<h5>FUN한 동남아 여행</h5>
							<div>뻔한 여행 말고 FUN한 동남아 여행, A380타고 동남아 가자!</div>
							<h6>더 보기-></h6>
						</div>
					</div>
					</a>
				</li>
				<li><a href="<%=path %>/Resources/HTML/prd_BestProduct.html">
					<div class="imgTag">유럽</div>
					<div class="imgFrame">
						<img src='<%=path %>/Resources/IMG/main/paris.jpg' title="서울/김포 ＝＞ 제주 KRW 19,500 ~"/>
					</div>
					<div class="textBox">
						<div>
							<h5>감성충만 파리 여행</h5>
							<div>예술가들의 발자취를 따라 걸으며 파리갬성 가득한 인생샷 찍으러!</div>
							<h6>더 보기-></h6>
						</div>
					</div>
					</a>
				</li>
				<li><a href="<%=path %>/Resources/HTML/prd_BestProduct.html">
					<div class="imgTag">국내</div>
					<div class="imgFrame">
						<img src='<%=path %>/Resources/IMG/main/jeju.jpg' title="서울/인천 ＜＝＞ 팔라우 KRW 756,000 ~"/>
					</div>
					<div class="textBox">
						<div>
							<h5>나만 간직하고 싶은 제주</h5>
							<div>나 홀로 떠나는 제주여행, 어디를 가도 시원하고 높은 하늘과 선선한 바람을 느끼자</div>
							<h6>더 보기-></h6>
						</div>
					</div>
					</a>
				</li>
				
			</ul>
		</div>
	</div>
</section>
<section id="event">
	<div>
		<div><p>이벤트</p><a href="<%=path %>/Resources/HTML/prd_alliance_event.html">&nbsp;진행중인 이벤트 전체보기 +&nbsp;</a></div>
		<div class="eventBannerWrap">
			<ul class="eventBanner">
				<li><a href="prd_alliance_event.html">
					<img src='<%=path %>/Resources/IMG/event/event1.jpeg' title="가자에어 X 스무디킹 할인 제휴 기념 이벤트"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<img src='<%=path %>/Resources/IMG/event/event2.jpeg' title="KB국민카드 결제 금액의 5%, 돌려드리는 Special"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<img src='<%=path %>/Resources/IMG/event/event3.jpeg' title="나의 해외여행 동반자 My Trip 카드 이벤트"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<img src='<%=path %>/Resources/IMG/event/event4.jpeg' title="뉴욕의 낮과 밤을 가자에어와 함께"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<img src='<%=path %>/Resources/IMG/event/event5.jpeg' title="AJ렌터카 마일리지 더블적립 이벤트"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<img src='<%=path %>/Resources/IMG/event/event6.jpeg' title="안녕, 몽골!, 반가워, 골드! 우수회원 체험 이벤트"/></a>
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
						<td><a href="<%=path %>/Resources/HTML/notice.html">더 보기</a></td>
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
						<td><a href="<%=path %>/Resources/HTML/review.html">더 보기</a></td>
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
</section>
<%@ include file="Resources/JSP/footer.jspf" %>
<script src="<%=request.getContextPath() %>/Resources/JS/common.js"></script>
<script src="<%=request.getContextPath() %>/Resources/JS/airportpicker.js"></script>

<script>
openPicker('.open-airport-picker', true);


</script>

</body>
</html>