const hintWindow = (targetElement, overlayed, centeredX, centeredY) => {

    // 팝업창과 마우스사이의 거리
    let xOffset = 40;
    let yOffset = 40;
    let overlay = document.querySelector('.overlay');

    document.getElementById(targetElement).addEventListener('click', e => {
        const tempElement = document.getElementById(`${targetElement}-window`);

        // 이미 켜져있을경우
        if(tempElement.style.display === 'block') {
            tempElement.style.display = 'none';
            overlay.style.display = 'none';
            return false;
        }
        // 다른 윈도우가켜져있을경우 모두 꺼줌
        document.querySelectorAll('.pop-up-window-type1').forEach(element => element.style.display = 'none' );
        // 팝업윈도우켜기
        tempElement.style.display = 'block';
        // overlay 핸들
        if(overlayed) document.querySelector('.overlay').style.display = 'block';

        // 정렬 핸들
        if(centeredX && centeredY) tempElement.classList.add('centeredXY');
        else if(centeredX) tempElement.classList.add('centeredX');
        else if(centeredY) tempElement.classList.add('centeredY');
        else {
            tempElement.style.left = (e.pageX + xOffset) + 'px';
            tempElement.style.top = (e.pageY - yOffset) + 'px';
        }
    });
};

/* 종료 버튼 이벤트 */
const windowClose = (str) => {
    if(!str) str = '.btn-close';
    let btns = document.querySelectorAll(str);
    btns.forEach(element => {
        element.addEventListener('click', () => {
           let temp = element.parentElement;
           while(true) {
               if(temp.id && temp.id.indexOf('-window') != -1) {
                   temp.style.display = 'none';
                   document.querySelector('.overlay').style.display = 'none';
                   break;
               } else 
                   temp = temp.parentElement;
           }
        });
    });
};

/* 탭 메뉴 이벤트 */
const tabEvent = (type) => {
    const menus = document.querySelectorAll(type + ' li');
    menus.forEach(menu => {
        menu.addEventListener('click', e => {
            menus.forEach(menu => { 
                menu.classList.remove('on');
                document.getElementById(menu.id+'-container').classList.add('hidden');
            });
            
            if(e.target.tagName === "A") {
                e.target.parentElement.classList.add('on'); 
                document.getElementById(e.target.parentElement.id+'-container').classList.remove('hidden');
            } else if (e.target.tagName === "LI") {
                e.target.classList.add('on');
                document.getElementById(e.target.id+'-container').classList.remove('hidden');
            }
        });
    });
};

/* input number용 maxlength 체크  ex) maxlength="3" oninput="maxLengthCheck(this)" */
const maxLengthCheck = object => {
    if (object.value.length > object.maxLength){
        object.value = object.value.slice(0, object.maxLength);
    }    
};

const inputTypeCheck = () => {
    const regex = new RegExp("^[a-zA-Z0-9]+$");
    const str = String.fromCharCode(!event.charCode ? event.which : event.charCode);
    if (regex.test(str)) return true;
    event.preventDefault();
    return false;
};

/* 달력 */
let cal_generator = (strId, startDate, numOfMonths) => {
    return new Lightpick({
        field: document.getElementById(strId),
        singleDate: (document.querySelector('input[name="trip-type"]:checked'))? document.querySelector('input[name="trip-type"]:checked').value !== 'round-way': true,
        numberOfMonths: numOfMonths? numOfMonths : 2,
        minDate: startDate ? startDate : new Date(),
        selectForward: true,
        format: 'YYYY/MM/DD',
        separator: ' → ',
        lang: 'ko',
        hideOnBodyClick: false,
        dropdowns: {
            years: {
                min: numOfMonths? null : 2019,
                max: null
            },
            months: true,
        },
        locale: {
            buttons: {
                prev: '〈',
                next: '〉',
                close: '✕',
                reset: '⟳'
            },
            tooltip: {
                day: '일'
            },
            pluralize: function(i, locale) {
                if ('day' in locale) return locale.day;
                return '';
            }
        },
        onSelect: function(start, end) {
            let str = '';

            str += start ? start.format('YYYY-MM-DD') + ' to ' : '';
            str += end ? end.format('YYYY-MM-DD') : '...';
            document.getElementById(strId).innerHTML = str;
            const str_status = document.getElementById('cal_status');
            if(str_status.textContent === '가는 날')
                str_status.textContent = '오는 날';
            else if(str_status.textContent === '오는 날')
                str_status.textContent = '가는 날';
        }, onOpen: function() {
            const str_status = document.getElementById('cal_status');
            if(numOfMonths)
                str_status.textContent = '생년월일';
            else
                str_status.textContent = '가는 날';
            
            document.querySelector('section.lightpick').classList.add('centeredX');
            document.querySelector('section.lightpick').style.top = parseInt(document.querySelector('section.lightpick').style.top) + 15 + 'px';
            overlay.style.display = 'block';
        },
        onClose: function() {
            overlay.style.display = 'none';
        }
    });
};


/* loader */
let loader_generator = () => {
    document.querySelector('section.content').insertAdjacentHTML('afterend', 
       `<div class="loaderWrapper">
        <div class='body'>
        <span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        </span>
        <div class='base'>
        <span></span>
        <div class='face'></div>
        </div>
        </div>
        <div class='longfazers'>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        </div>
        <p>로딩중...</p>
        </div>
       `);
};



/* 탑승객 수 +, - 버튼 */
const changeNumOfPassengers = () => {
    let btns_minus = document.querySelectorAll('.minus');
    btns_minus.forEach(element => element.addEventListener('click',minus));

    let btns_plus = document.querySelectorAll('.plus');
    btns_plus.forEach(element => element.addEventListener('click',plus));
};

const minus = () => {
    let num = event.target.parentNode.getElementsByTagName('input')[0];
    if (num.value <= 0) num.value = '0';
    else num.value--;
    document.querySelector('.passengerInfo').classList.remove('font-red');
};
const plus = () => {

    const temp = document.querySelectorAll('.number-box');
    let numOfPassenger = 0;
    temp.forEach(elem => {
        numOfPassenger += parseInt(elem.getElementsByTagName('input')[0].value);
    });

    if (numOfPassenger >= 9) {
        document.querySelector('.passengerInfo').classList.add('font-red');
        return false;
    }
    event.target.parentNode.getElementsByTagName('input')[0].value++;
};

/* 총 탑승객 수 */

const totalPassengers = () => {
    const adultNum = parseInt(document.getElementById('numOfAdult').value);
    const childNum = parseInt(document.getElementById('numOfChild').value);
    const infantNum = parseInt(document.getElementById('numOfInfant').value);
    if(adultNum + childNum + infantNum <= 0 ) {
        alert('한명이상의 탑승객을 선택하여주십시오.');
        return false;
    }
    return true;
};




(() => {
    windowClose();
    loader_generator();
    document.body.classList.add('noscroll');
    /* Loader */
    window.addEventListener('load', () => {
        const loader = document.querySelector('.loaderWrapper');
        loader.style.height = window.innerHeight + 'px';

        setTimeout(() => {
            loader.className += ' fade';
            setTimeout(()=> {
                loader.className += ' hidden';
                document.querySelector('.noscroll').classList.remove('noscroll');
            }, 500); 
        }, 500);
    });
})();