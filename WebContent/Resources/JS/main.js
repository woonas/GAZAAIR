/*navi */
//서브메뉴 마우스 오버
$(function(){
	//메뉴 호버시 패널생성/ 없애기
	$(".navMenu>li").on({"mouseenter":function(){
		$(this).children("div").css("display","block");
	}, "mouseleave":function(){
		$(this).children("div").css("display", "none");
	}});
	
	//탑버튼 누르면 부드럽게 스크롤하기
	$('.topBtn>a').click(function () {
	    $('html, body').animate({
	      scrollTop: $($.attr(this, 'href')).offset().top
	    }, 500);
	    return false;
	  });
});
//뒤로가기 기능
function goBack(){
	window.history.back();
};