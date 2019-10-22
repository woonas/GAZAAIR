/**
 * 
 */

/* */
function selectModal() {
	document.getElementById("modal").style.display="block"
	resizeModal()

	document.getElementById("seatsSelect").style.display ="block";
	document.documentElement.scrollTop =  winHeight+200+"px"
};



function resizeModal(){
	var winWidth = window.innerWidth/2;
	var winHeight = window.innerHeight/2;
	
	document.getElementById("seatsSelect").style.left = winWidth-500+"px";
	document.getElementById("seatsSelect").style.top = winHeight-550+"px";
};


function seatsSelcetClose(){
	document.getElementById("seatsSelect").style.display = "none"
	document.getElementById("modal").style.display="none"
	
};

function drawSeatImg() {
	var seatList = "";
	for(j=1; j<12; j++) {
		seatList += "<div class='seat-row'>";
		for(i='A'; i<='K';i++){
			seatList += `<span><img src='../../IMG/mypage_Img/seat_default.png' id='${j}${i}' onclick=\"change("+i+")\"/></span>`;
		}
		seatList += "</div>";
	}
	document.getElementById("front-seat").innerHTML = seatList;
}

/* A~C 3줄짜리 1 ~ 36석 */
function seatImgAC136(){
	
	var seatList = "";
	for(i=1; i<=36;i++){
		seatList += "<span><img src='../../IMG/mypage_Img/seat_default.png' id='s"+i+"' onclick=\"change("+i+")\"/></span>"
		
	}
	console.log(seatList)
	document.getElementById("sl1").innerHTML = seatList;
	
};
/* A~C 3줄짜리 37 ~ 69석 */
function seatImgAC3769(){
	
	var seatList = "";
	for(i=37; i<=69;i++){
		seatList += "<span><img src='../../IMG/mypage_Img/seat_default.png' id='s"+i+"' onclick=\"change("+i+")\"/></span>"
		
	}
	console.log(seatList)
	document.getElementById("sl4").innerHTML = seatList;
	
};
/* A~C 3줄짜리 70 ~ 93석 */
function seatImgAC7093(){
	
	var seatList = "";
	for(i=70; i<=93;i++){
		seatList += "<span><img src='../../IMG/mypage_Img/seat_default.png' id='s"+i+"' onclick=\"change("+i+")\"/></span>"
		
	}
	console.log(seatList)
	document.getElementById("sl5").innerHTML = seatList;
	
};
function change(i){
		var imgSrc = document.getElementById("s"+i).src;
		var imgNew = "../.."+imgSrc.substring(imgSrc.indexOf("/IMG/"));
		if (imgNew === "../../IMG/mypage_Img/seat_gray.png"){
			document.getElementById("s"+i).src = "../../IMG/mypage_Img/seat_default.png";
		} else {
			document.getElementById("s"+i).src="../../IMG/mypage_Img/seat_gray.png";
		}
};


/* D~G 4줄짜리  94 ~ 141석*/
function seatImgDG94141(){
	var seatList = "";
	for(i=94; i<=141;i++){
		seatList += "<span><img src='../../IMG/mypage_Img/seat_default.png' id='s"+i+"' onclick=\"change("+i+")\"/></span>"
	}
	document.getElementById("sl2").innerHTML = seatList;

};

/* D~G 4줄짜리  142 ~ 185석*/
function seatImgDG142185(){
	var seatList = "";
	for(i=142; i<=185;i++){
		seatList += "<span><img src='../../IMG/mypage_Img/seat_default.png' id='s"+i+"' onclick=\"change("+i+")\"/></span>"
	}
	document.getElementById("sl6").innerHTML = seatList;

};

/* D~G 4줄짜리  186 ~ 217석*/
function seatImgDG186217(){
	var seatList = "";
	for(i=186; i<=217;i++){
		seatList += "<span><img src='../../IMG/mypage_Img/seat_default.png' id='s"+i+"' onclick=\"change("+i+")\"/></span>"
	}
	document.getElementById("sl7").innerHTML = seatList;

};



/* H~K 3줄짜리  218 ~ 249석*/
function seatImgHK218253(){
	
	var seatList = "";
	for(i=218; i<=253;i++){
		seatList += "<span><img src='../../IMG/mypage_Img/seat_default.png' id='s"+i+"' onclick=\"change("+i+")\"/></span>"
		
	}
	console.log(seatList)
	document.getElementById("sl8").innerHTML = seatList;
	
};

/* H~K 3줄짜리  250 ~ 282석*/
function seatImgHK250282(){
	
	var seatList = "";
	for(i=250; i<=282;i++){
		seatList += "<span><img src='../../IMG/mypage_Img/seat_default.png' id='s"+i+"' onclick=\"change("+i+")\"/></span>"
		
	}
	console.log(seatList)
	document.getElementById("sl9").innerHTML = seatList;
	
};


/* H~K 3줄짜리  283 ~ 306석*/
function seatImgHK283306(){
	
	var seatList = "";
	for(i=283; i<=306;i++){
		seatList += "<span><img src='../../IMG/mypage_Img/seat_default.png' id='s"+i+"' onclick=\"change("+i+")\"/></span>"
		
	}
	console.log(seatList)
	document.getElementById("sl10").innerHTML = seatList;
	
};


(() => {
	if(location.pathname.indexOf('reserveStatus') !== -1){
		drawSeatImg();
	}
 })();
		