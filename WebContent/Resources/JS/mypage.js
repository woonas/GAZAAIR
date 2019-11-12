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


/**********************************************************************/

/* 좌석 선택 */

function drawSeatImg() {
    var seatList = "";
    var alphabet = ["A","B","C","D","E","F","G","H","J","K"];

    for(j=1;j<3;j++){
        seatList += "<div class='busiseat-row'>";
        for(i=0;i<alphabet.length;i++){
            seatList += `<span><img src='../../IMG/mypage_Img/seat_default.png' id='${j}${alphabet[i]}' onclick=\"change(this.id)\"/></span>`;
        }
        seatList += "</div>";
    }
    document.getElementById("frontBusi-seat").innerHTML = seatList;

    seatList = "";
    for(j=3; j<16; j++) {
        seatList += "<div class='seat-row'>";
        for(i=0; i<alphabet.length;i++){
            seatList += `<span><img src='../../IMG/mypage_Img/seat_default.png' id='${j}${alphabet[i]}' onclick=\"change(this.id)\"/></span>`;

        }
        seatList += "</div>";
    }
    document.getElementById("frontEco-seat").innerHTML = seatList;

    seatList = "";
    for(j=16; j<27; j++) {
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
    var selectedSeat = document.querySelector('img[src$="seat_red.png"]');
    if (imgSrc.indexOf('red') !== -1)
        document.getElementById(targetId).src = "../../IMG/mypage_Img/seat_default.png";
    else if (imgSrc.indexOf('default') !== -1) {
        if (selectedSeat) selectedSeat.src = "../../IMG/mypage_Img/seat_default.png";
        document.getElementById(targetId).src = "../../IMG/mypage_Img/seat_red.png";
    }
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
     }

     else if(location.pathname.indexOf('interested_route') !== -1) {
         openPicker('.open-airport-picker', true);
     }


     //Todo 나중에 함수하고 다시 체크
     else if(location.pathname.indexOf('reservation_detail') !== -1){
         drawSeatImg();
         hintWindow('membership-hint');

         hintWindow('selectFood', true, true, true);
         hintWindow('selectSeat', true, true, true);
         hintWindow('selectClass', true, true, true);
         overlay.addEventListener('click', () => {
             const popups = document.querySelectorAll('.pop-up-window-type1');
             popups.forEach(popup => popup.style.display = 'none');
             overlay.style.display = 'none';
         });

         birth_option_generator();
     }
})();