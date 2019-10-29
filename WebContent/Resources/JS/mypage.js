/**
 * 
 */


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
         for (let i = 1; i<=6; i++)
            calendar[i-1] = cal_generator('flightDate-' + i);
         document.querySelectorAll(".lightpick").forEach(lightpick => lightpick.classList.add('centeredXY') );
     }
>>>>>>> aa242d3b41836629f80970d2ca543d1cb7663d57
 })();