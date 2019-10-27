/**
 * 
 */

/* 좌석 선택 */
function selectModal() {
	document.getElementById("modal").style.display="block";
	resizeModal();

	document.getElementById("seatsSelect").style.display ="block";
	/*document.documentElement.scrollTop =  winHeight+200+"px"*/
}

function resizeModal(){
	var winWidth = window.innerWidth/2;
	var winHeight = window.innerHeight/2;
	
	document.getElementById("seatsSelect").style.left = winWidth-500+"px";
	document.getElementById("seatsSelect").style.top = winHeight-550+"px";
}

function seatsSelcetClose(){
	document.getElementById("seatsSelect").style.display = "none";
	document.getElementById("modal").style.display="none"
	
}

function drawBusinessSeatImg(){
	var seatList="";
	var alphabet  = ["A","B","C","D","E","F","G","H","J","K"];
	for(j=1;j<3;j++){
		seatList += "<div class='Busiseat-row'>";
		for(i=0;i<alphabet.length;i++){
			seatList += `<span><img src='../../IMG/mypage_Img/seat_default.png' id='${j}${alphabet[i]}' onclick=\"change(this.id)\"/></span>`; 
		}
		seatList += "</div>";
	}
	document.getElementById("frontBusi-seat").innerHTML = seatList;
			
}

function drawEconomiSeatImg() {
	var seatList = "";
	var alphabet = ["A","B","C","D","E","F","G","H","J","K"];
	for(j=3; j<15; j++) {
		seatList += "<div class='seat-row'>";
		for(i=0; i<alphabet.length;i++){
			seatList += `<span><img src='../../IMG/mypage_Img/seat_default.png' id='${j}${alphabet[i]}' onclick=\"change(this.id)\"/></span>`;
			
		}
		seatList += "</div>";
	}
	document.getElementById("frontEco-seat").innerHTML = seatList;
	
}

function drawEconomiBackSeatImg() {
	var seatList = "";
	var alphabet = ["A","B","C","D","E","F","G","H","J","K"];
	for(j=15; j<25; j++) {
		seatList += "<div class='seat-row'>";
		for(i=0; i<alphabet.length;i++){
			seatList += `<span><img src='../../IMG/mypage_Img/seat_default.png' id='${j}${alphabet[i]}' onclick=\"change(this.id)\"/></span>`;
			
		}
		seatList += "</div>";
	}
	document.getElementById("back-seat").innerHTML = seatList;
	
}

function change(targetId){
	var imgSrc = document.getElementById(targetId).src;
	var imgNew = "../.."+imgSrc.substring(imgSrc.indexOf("/IMG/"));
	if (imgNew === "../../IMG/mypage_Img/seat_red.png"){
		document.getElementById(targetId).src = "../../IMG/mypage_Img/seat_default.png";
	} else {
		document.getElementById(targetId).src="../../IMG/mypage_Img/seat_red.png";
	}
}

/* 기내식 선택*/
function selectFoodModal() {
	document.getElementById("modal").style.display="block";
	resizeFoodModal();

	document.getElementById("foodSelect").style.display ="block";
	/*document.documentElement.scrollTop =  winHeight+200+"px"*/
}

function resizeFoodModal(){
	var winWidth = window.innerWidth/2;
	var winHeight = window.innerHeight/2;
	
	document.getElementById("foodSelect").style.left = winWidth-800+"px";
	document.getElementById("foodSelect").style.top = winHeight-350+"px";
}

function foodSelcetClose(){
	document.getElementById("foodSelect").style.display = "none";
	document.getElementById("modal").style.display="none";
	
}

/* 클래스 선택*/
function selectClassModal() {
	document.getElementById("modal").style.display="block";
	resizeClassModal();

	document.getElementById("classSelect").style.display ="block";
	/*document.documentElement.scrollTop =  winHeight+200+"px"*/
}

function resizeClassModal(){
	var winWidth = window.innerWidth/2;
	var winHeight = window.innerHeight/2;
	
	document.getElementById("classSelect").style.left = winWidth-550+"px";
	document.getElementById("classSelect").style.top = winHeight-350+"px";
}
function classSelcetClose(){
	document.getElementById("classSelect").style.display = "none";
	document.getElementById("modal").style.display="none";
	
}

(() => {
	if(location.pathname.indexOf('reserveStatus') !== -1){
		drawBusinessSeatImg();
		drawEconomiSeatImg();
		drawEconomiBackSeatImg();
	}
 })();
		