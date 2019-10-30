/*navi */
//서브메뉴 마우스 오버
$(function(){
	//메뉴 호버시 패널생성/ 없애기
    // common.js로 옮김
	// $("#mainMenu>ul>li").hover(function(){
	// 	$("#subMenu").css("height", "220px");
	// 	$("#menuBg").css("height", "220px");
	// }, function(){
	// 	$("#subMenu").css("height", "0");
	// 	$("#menuBg").css("height", "0");
	// });
	
	//탑버튼 누르면 부드럽게 스크롤하기
	$('.topBtn>a').click(function () {
	    $('html, body').animate({
	      scrollTop: $($.attr(this, 'href')).offset().top
	    }, 500);
	    return false;
	  });
});

//뒤로가기 기능
// common.js로 옮김
// function goBack(){
// 	window.history.back();
// };