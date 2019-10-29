/**
 * 
 */


(() => {
	 if(location.pathname.indexOf('mypage_Main') !== -1) {
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
 })();

