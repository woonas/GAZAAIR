//signup3, idsearch, pwsearch 공통 부분
const verification = () => {
    //팝업창 이벤트
    hintWindow('phone-verification', true, true, true);
    hintWindow('ipin-verification', true, true, true);

    const content1 = document.getElementById('phone-verification-content1');
    const content2 = document.getElementById('phone-verification-content2');

    //폰인증 팝업창 실행시 폰인증1번화면으로 보이기
    document.getElementById('phone-verification').addEventListener('click', () => {
        content1.classList.remove('hidden');
        content2.classList.add('hidden');
    })

    //폰인증 팝업창에서 다음버튼 이벤트
    const nextBtn = document.getElementById('window-next');
    nextBtn.addEventListener('click', () => {
        if (nextBtn.value === "다음") {
            if (document.querySelectorAll('input[type="radio"]:checked').length > 0) {
                if (checkbox1.checked && checkbox2.checked && checkbox3.checked && checkbox4.checked) {
                    content1.classList.add('hidden');
                    content2.classList.remove('hidden');
                    nextBtn.value = "확인";
                } else
                    alert("필수 입력 항목에 대하여 모두 동의해주시기 바랍니다.");
            } else {
                alert("통신사를 선택하여주십시오.");
            }
        } else {
            nextBtn.value = "다음";
        }
    });

    //탭메뉴 이벤트
    const types = document.querySelectorAll('.verification-type>input');
    document.querySelector('.verification-type').addEventListener('click', e => {
        if(e.target.tagName !== "INPUT") return false;

        types.forEach(elem => {
            document.getElementById(elem.id + "-tab").classList.add('hidden');
            document.getElementById(elem.id + "-tab").classList.remove('active');
        });
        document.getElementById(e.target.id + "-tab").classList.remove('hidden');
        document.getElementById(e.target.id + "-tab").classList.add('active');
        clearInterval(timer);
    });

    //QR코드 타이머 이벤트
    const maxTime = 300;
    let timeRemained;
    let timer;
    document.getElementById('qr').addEventListener('change', () => {
        timeRemained = maxTime;
        const txtTimer = document.getElementById('timer');
        txtTimer.innerHTML = '6 : 00';
        timer = setInterval(() => {
            if (timeRemained <= 0 )
                timer.innerHTML = "EXPIRED!";
            else {
                timeRemained--;
                if (timeRemained%60 < 10) txtTimer.innerHTML = `${Math.round(timeRemained/60)} : 0${timeRemained%60}`;
                else txtTimer.innerHTML = `${Math.round(timeRemained/60)} : ${timeRemained%60}`;
            }
        }, 1000);

        //QR코드 숫자 랜덤 생성
        document.querySelector('#qr-wrapper input').value = Math.round(Math.random()*10000000);
    });


    // 팝업창 필요항목 입력되었는지 확인 + 인증완료 이벤트처리
    const phone_window = '#phone-verification-window';
    $(phone_window + ' input[type="submit"]').click(function(){
        if(grecaptcha && grecaptcha.getResponse().length === 0 && input_check(phone_window + ' div.active input')) {
            alert('모든 항목을 완료해주세요.')
        } else {
            const _window = $(phone_window);
            eventHandler(_window, 'step2');
            setTimeout(function(){
                _window.removeClass('step1')
                $(phone_window + '>div').fadeOut(123);
            },2800);
            setTimeout(function(){
                $(phone_window + ' .success').fadeIn();
            },3100);
        }
    });

    const ipin_window = '#ipin-verification-window';
    $(ipin_window +' input[type="submit"]').click(function(){
        if(input_check(ipin_window + ' input[type="text"]')){
            alert('모든 항목을 완료해주세요.');
        } else {
            const _window = $(ipin_window);
            eventHandler(_window, 'step2-2');
            setTimeout(function(){
                _window.removeClass('step1')
                $(ipin_window + '>div').fadeOut(123);

                const inputs = document.querySelectorAll(name + ' input[type="text"]');
                inputs.forEach(input => input.value = "" );
                _window.css('background-image','none');
            },2800);
            setTimeout(function(){
                $(ipin_window + ' .success').fadeIn();
            },3100);
        }
    });  
}

//달력용
function onChangeCallback(ctr){
    document.getElementById('country').value = ctr;
}

//signup3에서 필요정보가 모두 입력되었는지 확인
const input_check = (name) => {
    const inputs = document.querySelectorAll(name);
    let result = false;
    inputs.forEach(input => {
        if (input.value === "") result =  true;
    });
    return result;
}

//signup3에서 인증성공 이펙트
const eventHandler = (_window, step2) => {
    const authent = $('.authent');

    _window.addClass('step1')
    setTimeout(function(){
        _window.addClass(step2)
    },300);  // 
    setTimeout(function(){
        authent.show().animate({right:-320},{easing : 'easeOutQuint' ,duration: 600, queue: false });
        authent.animate({opacity: 1},{duration: 200, queue: false }).addClass('visible');
    },500);
    setTimeout(function(){
        authent.show().animate({right:90},{easing : 'easeOutQuint' ,duration: 600, queue: false });
        authent.animate({opacity: 0},{duration: 200, queue: false }).addClass('visible');
        _window.removeClass(step2)
    },2500);
    setTimeout(function(){
        location.href= 'signup4.html';
    }, 4500);
}


(() => {
    /* signup1 */
    if(location.pathname.indexOf('signup1') !== -1)
        hintWindow('underage-hint', true, true, true); //팝업창 이벤트
    
    /* signup2 */
    else if(location.pathname.indexOf('signup2') !== -1) {
        const check_all = document.getElementById('agree_all');

        //체크박스 전체선택
        check_all.addEventListener('click', () => {
            if(check_all.checked) {
                const checkboxes = document.querySelectorAll('input[type="checkbox"]');
                
                checkboxes.forEach(box => {
                    box.checked = 'checked'; 
                });
            }
        });
        
        //필수 체크 항목이 체크되었는지 확인
        const nextBtn = document.querySelector('.right');
        nextBtn.addEventListener('click', () => {
            if (agree_personalTransferToAbroad.checked && agree_personalCollection.checked && agree_hompageUse.checked) location.replace('signup3.html');
            else
                alert("필수 입력 항목에 대하여 모두 동의해주시기 바랍니다.")
        });
    }
    
    /* signup3 */
    else if(location.pathname.indexOf('signup3') !== -1) 
        verification(); 
    
    /* signup4 */
    else if(location.pathname.indexOf('signup4') !== -1) {
        hintWindow('btn-dupCheck', true, true, true); //팝업창 이벤트

        /* 달력 */
        cal_generator('birthdate', new Date('1950', '01' - 1), 1);
        new NiceCountryInput($(".countryPicker")).init();
        const temp = document.querySelector('.warning');
        document.querySelector('.login-link').addEventListener('click', () => temp.classList.remove('hidden'));
        
        /*아이디 중복체크*/
        const id = document.getElementById('username');
        const insideId = document.getElementById('txtID');
        let result = '';
        document.getElementById('btn-dupCheck').addEventListener('click', () => {
            document.querySelector('.result-wrapper').classList.add('hidden');
            insideId.value = id.value;
        });
        
        document.getElementById('btn-dupCheck2').addEventListener('click', () => {
            if (insideId.value.length !== 0) {
                result = '사용할 수 있습니다.'; // 나중에 DB작업하고 결과값에 따라 사용가능불가능 바꾸기
                const target = document.querySelector('.result-wrapper');
                target.classList.remove('hidden');
                target.textContent = `'${insideId.value}' 는 ${result}`;
            } else {
                alert('아이디를 입력해주십시오.');
            }
        });
        
        document.getElementById('btn-use').addEventListener('click', () => { 
            if(result.length ===0) alert('중복검사를 해주십시오.')
            else if(result === "사용할 수 있습니다.") {
                id.value = insideId.value;
                document.getElementById('btn-dupCheck-window').style.display = 'none';
                document.querySelector('.overlay').style.display = 'none';
                result = '';
            }
        });
        
        /*우편번호 검사*/
        document.getElementById('btn-postalSearch').addEventListener('click', addrSearch);
    }
    
    /* idsearch */
    else if(location.pathname.indexOf('idsearch') !== -1) {
        verification();
        tabEvent('.tab-menu1');
    }
    
    /* pwsearch */
    else if(location.pathname.indexOf('pwsearch') !== -1) {
        verification();
        tabEvent('.tab-menu1');
    }
    
    /* login */ 
    else if(location.pathname.indexOf('login') !== -1) {
        //달력
        cal_generator('boardingdate', new Date());
        //공항선택
        openPicker('.open-airport-picker');
        //탭메뉴
        tabEvent('.tab-menu1');
    }
    
})();