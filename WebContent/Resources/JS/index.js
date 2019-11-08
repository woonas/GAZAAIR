$(function(){

    //네비 하단 줄 없애기 (메인화면에서만 없애기)
    menuBorderRemover();

    //예약폼 활성화 비활성화 이벤트
    $("body").click(function (e) {
        var target = $(e.target);
        do {
            if (target.hasClass('reserve_wrap') === true || target.hasClass('overlay') === true || target.hasClass('centeredXY') ) {
                $(".reserve_wrap").addClass('active');
                break;
            }
            if (target.prop('tagName') === 'BODY') {
                $(".reserve_wrap").removeClass('active');
                break;
            }
            target = target.parent();
        } while(true);
    });

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
			$("#airportFrom-1").css("opacity", "0");
		}else if(fromTo =="to"){
			txt = $("#airportTo-1").val();
			var code = txt.substring(txt.indexOf('(')+1, txt.indexOf(')'));
			var name = txt.substring(0, txt.indexOf("   ("));
			$("#toText>i").text(code);
			$("#toText>div").text(name);
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
	
	//출발지, 도착지에 값이 들어오면 글자크기 변경
	$("#btn-select").click(function(){
		var preDiv = pairInput.previousElementSibling;
		
		if($("#airportFrom-1").val()!== ""){
			IATA("from");
		}
		if($("#airportTo-1").val()!== ""){
			IATA("to");
		}
		if(pairInput.value===""){
			preDiv.innerHTML = "<i></i><div></div>";
			pairInput.style.opacity = 1;
		}
		if($("#airportFrom-1").val()!== "" && $("#airportTo-1").val()!== ""){
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
	
	///////////////////////////////////////////////////////////////////////////
	openPicker('.open-airport-picker', true);
	hintWindow('num-of-passengers', true, true, true);

	/* 승객수 + - 버튼 이벤트 */
	changeNumOfPassengers();

	/* 탑승객 팝업에서 선택 클릭시 */
	const passengerNum = document.getElementById('num-of-passengers');

	/* 출발도착일 지정 달력 */
    var picker_generator = function() {
        return new Lightpick({
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
                document.querySelector('.reserve_wrap').classList.add('active');
            },
            onOpen: function(){
                document.querySelector(".lightpick").classList.add('centeredXY');
                overlay.style.display = 'block';
                setTimeout(function () {
                    document.querySelector('.reserve_wrap').classList.add('active');
                }, 20);
            },
            onClose: function() {
                overlay.style.display = 'none';
                setTimeout(function () {
                    document.querySelector('.reserve_wrap').classList.add('active');
                }, 20);
            }
        });
    };
	var picker = picker_generator();

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
        if (totalNum === "") adultNum = 1;
	    document.getElementById('numOfAdult').value = adultNum;
	    document.getElementById('numOfChild').value = childNum;
	    document.getElementById('numOfInfant').value = infantNum;
	});

	/* 탑승객 팝업에서 다른 부분 클릭시 */
    overlay.addEventListener('click', function() {
        document.getElementById('num-of-passengers-window').style.display = 'none'
    });

    overlay.addEventListener('click', () => {
        if(picker) picker.destroy();
        picker = picker_generator();
        document.querySelector(".lightpick").classList.add('centeredXY');
    });
});


