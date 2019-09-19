/*navi */
//서브메뉴 마우스 오버
$(function(){
	$(".navMenu>li").on({"mouseenter":function(){
		$(this).children("div").css("display","block");
	}, "mouseleave":function(){
		$(this).children("div").css("display", "none");
	}})
});