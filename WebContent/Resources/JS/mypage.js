/**
 * 
 */

const print = () => {
    var headstr = "<html><head><title></title></head><body>";
    var footstr = "</body>";
    var newstr = document.getElementById('result').innerHTML;
    document.body.innerHTML = headstr + newstr + footstr;
    window.print();
    location.reload();
    return false;
};

const calendarEvent = () => {
    const inputs = document.querySelectorAll('input[type=text][id^=flightDate-');
    for (let i = 1; i<=inputs.length; i++)
        calendar[i-1] = cal_generator('flightDate-' + i);
    document.querySelectorAll(".lightpick").forEach(lightpick => lightpick.classList.add('centeredXY') );
    overlay.addEventListener('click', () => {
        for (let i = 1; i<=inputs.length; i++) cal_init(i);
        document.querySelectorAll(".lightpick").forEach(lightpick => lightpick.classList.add('centeredXY') );
    });
};

function periodInit(months) {
	const date1 = document.getElementById('flightDate-1');
	const date2 = document.getElementById('flightDate-2');
	
	if (months === "custom") {
		date1.value = date2.value = "";
		date1.removeAttribute('disabled');
		date1.removeAttribute('disabled');
	} else {
		const now = new Date();
		date2.value = `${now.getFullYear()}-${now.getMonth()+1}-${now.getDate()}`;
		const tempDate = new Date(now.getFullYear(), now.getMonth()-months, now.getDate());
		date1.value = `${tempDate.getFullYear()}-${tempDate.getMonth()+1}-${tempDate.getDate()}`;
		date1.setAttribute('disabled' , 'disabled');
		date2.setAttribute('disabled' , 'disabled');
		
		
	}
};



/**********************************************************************/

/* 좌석 선택 */
function selectModal() {
    document.getElementById("modal").style.display="block";
    resizeModal();

    document.getElementById("seatsSelect").style.display ="block";
    
}

function resizeModal(){
    var winWidth = window.innerWidth/2;
    var winHeight = window.innerHeight/2;
    
    document.getElementById("seatsSelect").style.left = winWidth-500+"px";
    document.getElementById("seatsSelect").style.top = winHeight-100+"px";
    document.documentElement.scrollTop =  winHeight+200+"px"
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
    
}

function resizeFoodModal(){
    var winWidth = window.innerWidth/2;
    var winHeight = window.innerHeight/2;

    document.getElementById("foodSelect").style.left = winWidth-800+"px";
    document.getElementById("foodSelect").style.top = winHeight-350+"px";
    document.documentElement.scrollTop =  winHeight+200+"px";
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
    document.documentElement.scrollTop =  winHeight+200+"px"
}

function resizeClassModal(){
    var winWidth = window.innerWidth/2;
    var winHeight = window.innerHeight/2;

    document.getElementById("classSelect").style.left = winWidth-550+"px";
    document.getElementById("classSelect").style.top = winHeight-350+"px";
    document.documentElement.scrollTop =  winHeight+200+"px"
}
function classSelcetClose(){
    document.getElementById("classSelect").style.display = "none";
    document.getElementById("modal").style.display="none";

}

/***********************************************************/







(() => {
	 if(location.pathname.indexOf('myhome') !== -1) {
         const my_mileage = 23433;
         const add_num = Math.round(my_mileage/70);
         //메인 상단부 마일리지 원형 그래프
         setTimeout(() => {
             $('.circle').circleProgress({
                 value: 0.8,
                 size: 300,
                 thickness: 15,
                 fill: { color: '#36f' },
                 startAngle: -Math.PI / 2,
             }).on('circle-animation-progress', function() {
                 $(this).find('strong').text(parseInt($(this).find('strong').text()) + add_num);
             }).on('circle-animation-end', function () {
                 $(this).find('strong').text(my_mileage);
             });
         }, 1000)
     }

     else if(location.pathname.indexOf('mileage') !== -1) {
         hintWindow('mileage-expiration', true, true, true);
         tabEvent('.tab-menu1');
         calendarEvent();

         document.getElementById('mileage-print').addEventListener('click', print);
     }

     else if(location.pathname.indexOf('reservation_list') !== -1) {
         calendarEvent();
    	
     }

     else if(location.pathname.indexOf('purchase_list') !== -1) {
         calendarEvent();
         let checkedPeriod = document.querySelector('input[type=radio][name=period]:checked');
    	 periodInit(checkedPeriod.id.split('-')[2]);
    	 
    	 const periodRadios = document.querySelectorAll('input[type=radio][name=period]');
    	 periodRadios.forEach(periodRadio => {
    		periodRadio.addEventListener('change', () => {
    			checkedPeriod = document.querySelector('input[type=radio][name=period]:checked');
    	    	periodInit(checkedPeriod.id.split('-')[2]);
    		}); 
    	 });
     }

     else if(location.pathname.indexOf('interested_route') !== -1) {
         openPicker('.open-airport-picker', true);
     }
	 

     //Todo 나중에 함수하고 다시 체크
     else if(location.pathname.indexOf('reserveStatus') !== -1){
         drawBusinessSeatImg();
         drawEconomiSeatImg();
         drawEconomiBackSeatImg();
     }
})();