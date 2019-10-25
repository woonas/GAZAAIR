<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page errorPage="/Resources/JSP/error/error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가자에어 메인</title>
<!-- css -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/layout.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/main.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/index.css" type="text/css"/>
<!-- Lightpick CSS -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/Vendor/javascript-datepicker-lightpick/css/lightpick.css">
<!-- js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/Resources/JS/main.js"></script>
<script src="<%=request.getContextPath() %>/Vendor/backstretch/jquery.backstretch.min.js"></script>
<script src="<%=request.getContextPath() %>/Vendor/bxSlider/jquery.bxslider.min.js"></script>
<link href="<%=request.getContextPath() %>/Vendor/bxSlider/jquery.bxslider.css" rel="stylesheet" />
<script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
 <!-- Moment Js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<!-- Lightpick JS -->
<script src="<%=request.getContextPath() %>/Vendor/javascript-datepicker-lightpick/js/lightpick.js"></script>
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
	
	//이벤트배너 BX슬라이더
	$(".eventBanner").bxSlider({
		mode : 'horizontal'//'horizontal', 'vertical', 'fade'
		,slideWidth : 1200 //슬라이드 폭
		,slideHeight : 238
		,speed: 1000 //전환속도
		,auto : true //자동시작(true, false)
		,captions : true //title 속성에 있는 문자열을 설명으로 표시하기
		,autoControls : false //정지/ 재생 컨트롤을 보여줌 = true, false : 안보임
		,pager: false
		,useCSS : true// css의 easing 사용여부(true, false)
		,infiniteLoop : true //반복여부 : true, false
		,adaptiveHeight : true // 이미지 크기에 따라 높이 조절여부
		,hideControlOnEnd : true //처음과 끝에 컨트롤 표시 여부 : infiniteLoop false
		,maxSlides: 3 // 표시되는 배너 숫자
		,moveSlides:1 // 1개씩 이동
		,slideWidth: 370 //개별배너의 좌우폭
		,slideMargin: 45 //배너간의 간격
		,autoHover:true //오버되어있을때 슬라이딩이 멈춤
	});
	
	//출발지, 도착지 글자 디자인 변경
	function IATA(fromTo){
		var txt = "";
		if(fromTo =="from"){
			txt = $("#airportFrom-1").val();
			var code = txt.substring(txt.indexOf('(')+1, txt.indexOf(')'));
			var name = txt.substring(0, txt.indexOf("   ("));
			$("#fromText>i").text(code);
			$("#fromText>div").text(name);
			$("#airportFrom-1").css("font-size", "140%");
			$("#airportFrom-1").css("background-image", "none");
			$("#airportFrom-1").css("opacity", "0");
		}else if(fromTo =="to"){
			txt = $("#airportTo-1").val();
			var code = txt.substring(txt.indexOf('(')+1, txt.indexOf(')'));
			var name = txt.substring(0, txt.indexOf("   ("));
			$("#toText>i").text(code);
			$("#toText>div").text(name);
			$("#airportTo-1").css("font-size", "140%");
			$("#airportTo-1").css("background-image", "none");
			$("#airportTo-1").css("opacity", "0");
		}else if(fromTo =="both"){
			txt1 = $("#airportFrom-1").val();
			var code1 = txt1.substring(txt1.indexOf('(')+1, txt1.indexOf(')'));
			var name1 = txt1.substring(0, txt1.indexOf("   ("));
			txt2 = $("#airportTo-1").val();
			var code2 = txt2.substring(txt2.indexOf('(')+1, txt2.indexOf(')'));
			var name2 = txt2.substring(0, txt2.indexOf("   ("));
			$("#fromText>i").text(code1);
			$("#fromText>div").text(name1);
			$("#toText>i").text(code2);
			$("#toText>div").text(name2);
		}
	}
	
	//출발지, 도착지에 값이 들어오면 글자크기 변경, 이미지 삭제.
	$("#btn-select").click(function(){
		if($("#airportFrom-1").val()!== ""){
			IATA("from");
		}
		if($("#airportTo-1").val()!== ""){
			IATA("to");
		}
		if($("#airportFrom-1").val()!=="" && $("#airportTo-1").val()!==""){
			$(".reserveBox:last-child img").css("visibility", "visible");
		}
	});
	//로드 됐을 때 출발지, 도착지에 값이 있으면 글자 디자인 변경.
	if($("#airportFrom-1").val()!== ""){
		IATA("from");
	}
	if($("#airportTo-1").val()!== ""){
		IATA("to");
	}
	if($("#airportFrom-1").val()!=="" && $("#airportTo-1").val()!==""){
		$(".reserveBox:last-child img").css("visibility", "visible");
	}
	//출도착 스왑 버튼 이벤트
	$(".reserveBox:last-child img").click(function(){
		var temp = $("#airportFrom-1").val();
		$("#airportFrom-1").val($("#airportTo-1").val());
		$("#airportTo-1").val(temp);
		
		IATA("both");
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
				<div id="fromText" class="locText">
					<i></i>
					<div></div>
				</div>
        		<input type="text" id="airportFrom-1" name="airportFrom-1" class="open-airport-picker tripLoc" readonly placeholder="출발지">
       		</div>
       		<div class="tripDate">
       			<input type="text" id="fromDate" name="fromDate" placeholder="출발일" readonly>
       		</div>
       	</div>
		<div class="reserveBox">
			<div>
				<div id="toText" class="locText">
					<i></i>
					<div></div>
				</div>
				<input type = "text" id="airportTo-1" name="airportTo-1" class="open-airport-picker tripLoc" readonly placeholder="도착지">
			</div>
			<div class="tripDate">
				<input type="text" id="toDate" name="toDate" placeholder="도착일" readonly>
			</div>
		</div>
		<div class="reserveBox">
			<div id="waySelect">
				<div class="col-third">
					<input type="radio" class="radio1" name="trip-type" value="round-way" id="round-way" checked>
					<label for="round-way" class="firstRadio radioLabel">왕복</label>
				</div>
				<div class="col-third">
					<input type="radio" class="radio1" name="trip-type" value="single-way" id="single-way">
					<label for="single-way" class="radioLabel">편도</label>
				</div>
				<div class="col-third">
					<input type="radio" class="radio1 lastRadio" name="trip-type" value="multi-way" id="multi-way">
					<label for="multi-way"  class="radioLabel">다구간</label>
				</div>
			</div>
			<div id="passengerWrap">
				<input type="text" id="num-of-passengers" name="num-of-passengers" readonly>
			</div>
		</div>
		<div class="reserveBox">
			<img src="<%=path %>/Resources/IMG/icon/both_arrow2.png" title="출발지, 도착지 반대로 변경.">
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
								<h6>더 보기<img src="<%=path %>/Resources/IMG/icon/ico_arrow_gray.png"/></h6>
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
							<h6>더 보기<img src="<%=path %>/Resources/IMG/icon/ico_arrow_gray.png"/></h6>
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
							<h6>더 보기<img src="<%=path %>/Resources/IMG/icon/ico_arrow_gray.png"/></h6>
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
							<h6>더 보기<img src="<%=path %>/Resources/IMG/icon/ico_arrow_gray.png"/></h6>
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
		<div><p>이벤트</p><a href="<%=path %>/Resources/HTML/prd_alliance_event.html">&nbsp;전체보기 +&nbsp;</a></div>
		<div class="eventBannerWrap">
			<ul class="eventBanner">
				<li><a href="prd_alliance_event.html">
					<div class="eventDetail">
						<p>가자에어 X 스무디킹 할인 제휴 기념 이벤트</p>
						<div>더 보기</div>
						<p>2019.10.24~2019.11.24</p>
					</div>
					<img src='<%=path %>/Resources/IMG/event/event1.jpeg' title="가자에어 X 스무디킹 할인 제휴 기념 이벤트"/>
					</a>
				</li>
				<li><a href="prd_alliance_event.html">
					<div class="eventDetail">
						<p>KB국민카드 결제 금액의 5%, 돌려드리는 Special</p>
						<div>더 보기</div>
						<p>2019.10.24~2019.11.24</p>
					</div>
					<img src='<%=path %>/Resources/IMG/event/event2.jpeg' title="KB국민카드 결제 금액의 5%, 돌려드리는 Special"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<div class="eventDetail">
						<p>나의 해외여행 동반자 My Trip 카드 이벤트</p>
						<div>더 보기</div>
						<p>2019.10.24~2019.11.24</p>
					</div>
					<img src='<%=path %>/Resources/IMG/event/event3.jpeg' title="나의 해외여행 동반자 My Trip 카드 이벤트"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<div class="eventDetail">
						<p>뉴욕의 낮과 밤을 가자에어와 함께</p>
						<div>더 보기</div>
						<p>2019.10.24~2019.11.24</p>
					</div>
					<img src='<%=path %>/Resources/IMG/event/event4.jpeg' title="뉴욕의 낮과 밤을 가자에어와 함께"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<div class="eventDetail">
						<p>AJ렌터카 마일리지 더블적립 이벤트</p>
						<div>더 보기</div>
						<p>2019.10.24~2019.11.24</p>
					</div>
					<img src='<%=path %>/Resources/IMG/event/event5.jpeg' title="AJ렌터카 마일리지 더블적립 이벤트"/></a>
				</li>
				<li><a href="prd_alliance_event.html">
					<div class="eventDetail">
						<p>안녕, 몽골!, 반가워, 골드! 우수회원 체험 이벤트</p>
						<div>더 보기</div>
						<p>2019.10.24~2019.11.24</p>
					</div>
					<img src='<%=path %>/Resources/IMG/event/event6.jpeg' title="안녕, 몽골!, 반가워, 골드! 우수회원 체험 이벤트"/></a>
				</li>
			</ul>
		</div>
	</div>
</section>
<section id="info">
	<div id="infoWrap">
		<div id="notice">
			<table>
				<thead>
					<tr>
						<td>공지사항</td>
						<td><a href="<%=path %>/Resources/HTML/notice.html"><img title="더 보기" src="<%=path %>/Resources/IMG/icon/plus_box_ccc.png"/></a></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="#">[공지] 제 13호 태풍 '링링'으로 인한 국제선 결항 안내</a></td>
						<td>10.24</td>
					</tr>
					<tr>
						<td><a href="#">[공지] 제 13호 태풍 '링링'으로 인한 국내선 결항 안내</a></td>
						<td>10.24</td>
					</tr>
					<tr>
						<td><a href="#">[공지] KB국민카드 서비스 일시중단 안내</a></td>
						<td>10.24</td>
					</tr>
					<tr>
						<td><a href="#">[국내선] 추석연휴 기간 김포-부산(GMP-PUS) 노 ...</a></td>
						<td>10.24</td>
					</tr>
					<tr>
						<td><a href="#">[국제선] 청주-타이베이(CJJ-TPE) 운항시간 변경 ...</a></td>
						<td>10.24</td>
					</tr>
					<tr>
						<td><a href="#">2019년 9월 신용카드 할부 서비스 안내</a></td>
						<td>10.24</td>
					</tr>
					<tr>
						<td><a href="#">[공지] 말레이시아 출국세 부과 안내 (2019.09.01~)</a></td>
						<td>10.24</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="review">
			<table>
				<thead>
					<tr>
						<td>고객의말씀</td>
						<td><a href="<%=path %>/Resources/HTML/notice.html"><img title="더 보기" src="<%=path %>/Resources/IMG/icon/plus_box_ccc.png"/></a></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><div class="boardTag bt_best">best</div><a href="#">9월 날씨, 인천-다낭 가자에어 탑승 후기, 포켓 와이파이 챙겨서 출발</a></td>
						<td>10.24</td>
					</tr>
					<tr>
						<td><div class="boardTag bt_new">new</div><a href="#">[모스크바/러시아] 항공리뷰 : 가자에어(GAZA Air)...</a></td>
						<td>10.24</td>
					</tr>
					<tr>
						<td><a href="#">동유럽 여행 :) 가자에어 KE0935, KE0938</a></td>
						<td>10.24</td>
					</tr>
					<tr>
						<td><a href="#">방콕 항공권, 가자에어 KE657 후기! 태국 수완나폼 고고</a></td>
						<td>10.24</td>
					</tr>
					<tr>
						<td><a href="#">라운지, 가자에어 기내식 과일식 (feat. 공항철도는 어디에서..</a></td>
						<td>10.24</td>
					</tr>
					<tr>
						<td><a href="#">괌여행 - 가자에어 프레스티지석 / 웨스틴호텔</a></td>
						<td>10.24</td>
					</tr>
					<tr>
						<td><a href="#">유럽 비행기표예약 & 인천-비엔나 대한항공 KE937 탑승과 근황</a></td>
						<td>10.24</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</section>
</section>
           <!--탑승객 팝업-->
            <div class="pop-up-window-type1" id="num-of-passengers-window">
                <div class="itinerary">
                    <div class="row">
                        <p class="window-title">
                            탑승객 선택
                            <i class="fas fa-times btn-close"></i>
                        </p>
                    </div>
                    <br>
                    <div class="row clearfix book-input-form2">
                        <div class="col-third passenger-select number-box">
                            <p>성인 <span>(만 13세 이상)</span></p>
                            <button class="minus">-</button>

                            <input type="number" value="1" id="numOfAdult">
                            <button class="plus">+</button>
                        </div>
                        <div class="col-third passenger-select number-box">
                            <p>소아 <span>(만 2세 ~ 13세 미만)</span></p>
                            <button class="minus">-</button>
                            <input type="number" value="0" id="numOfChild">
                            <button class="plus">+</button>
                        </div>
                        <div class="col-third passenger-select number-box">
                            <p>유아 <span>(만 2세 미만)</span></p>
                            <button class="minus">-</button>
                            <input type="number" value="0" id="numOfInfant">
                            <button class="plus">+</button>
                        </div>
                    </div>
                    
                    <div class="row clearfix">
                        <ul class="list-type2">
                            <br>
                            <li class="passengerInfo">예약인원은 성인,소아, 유아를 포함하여 총 9명까지 선택 가능합니다.</li>
                          
                        </ul>
                    </div>
                </div>
                
                <div class="btn-area">
                    <button class="blueBtn" id="selectBtn">선택</button>
                </div>
            </div>


<%@ include file="Resources/JSP/footer.jspf" %>
<script src="<%=request.getContextPath() %>/Resources/JS/common.js"></script>
<script src="<%=request.getContextPath() %>/Resources/JS/airportpicker.js"></script>

<script>
openPicker('.open-airport-picker', true);
hintWindow('num-of-passengers', true, true, true);



/* 승객수 + - 버튼 이벤트 */
changeNumOfPassengers();

/* 탑승객 팝업에서 선택 클릭시 */
const passengerNum = document.getElementById('num-of-passengers');

/* 출발도착일 지정 달력 */
var picker = new Lightpick({
	    field: document.getElementById('fromDate'),
	    secondField: document.getElementById('toDate'),
	    numberOfMonths: 2,
	    minDate: new Date(),
	    format: 'YYYY-MM-DD',
	    singleDate: false,
	    hideOnBodyClick: false,
	    locale: {
	        buttons: {
	            prev: '〈',
	            next: '〉',
	            close: '✕',
	            reset: '⟳'
	        },
	        tooltip: {
	            day: '일'
	        },
	        pluralize: function(i, locale) {
	            if ('day' in locale) return locale.day;
	            return '';
	        }
	    },
	    onSelect: function(start, end){
	        var str = '';
	        str += start ? start.format('YYYY-MM-DD') + ' to ' : '';
	        str += end ? end.format('YYYY-MM-DD') : '...';
	        document.getElementById('fromDate').innerHTML = str;
	    },
	    onOpen: function(){
	    	document.querySelector(".lightpick").classList.add('centeredXY');
	        overlay.style.display = 'block';
        },
        onClose: function() {
            overlay.style.display = 'none';
        }
	})

document.querySelector('#selectBtn').addEventListener('click', function() {
    const adultNum = parseInt(document.getElementById('numOfAdult').value);
    const childNum = parseInt(document.getElementById('numOfChild').value);
    const infantNum = parseInt(document.getElementById('numOfInfant').value);
    let totalNum = "";

    if(totalPassengers()) {
        if(adultNum > 0) totalNum += "성인 "+adultNum;
        if(childNum > 0) totalNum += ", 소아 "+childNum;
        if(infantNum > 0) totalNum += ", 유아 "+infantNum;
        passengerNum.value = totalNum;
        document.getElementById('num-of-passengers-window').style.display = 'none';
        overlay.style.display = 'none';
    }
});

/* 탑승객 팝업 오픈시 입력된 값 가져오기 */
passengerNum.addEventListener('click', function() {
    const totalNum = passengerNum.value;

    let adultNum = totalNum.charAt(totalNum.indexOf('성인')+3);
    let childNum = totalNum.charAt(totalNum.indexOf('소아')+3);
    let infantNum = totalNum.charAt(totalNum.indexOf('유아')+3);
    if (totalNum.indexOf('성인') === -1) adultNum = 0;
    if (totalNum.indexOf('소아') === -1) childNum = 0;
    if (totalNum.indexOf('유아') === -1) infantNum = 0;
    document.getElementById('numOfAdult').value = adultNum;
    document.getElementById('numOfChild').value = childNum;
    document.getElementById('numOfInfant').value = infantNum;
});

/* 탑승객 팝업에서 다른 부분 클릭시 */
	overlay.addEventListener('click', function() {
		document.getElementById('num-of-passengers-window').style.display = 'none'
	});

</script>

</body>
</html>