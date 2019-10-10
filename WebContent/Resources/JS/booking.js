/* 나이 계산기 */
const calculateAge = dateString => {

    const year = dateString.substring(0,4);
    const month = dateString.substring(4,6);
    const day = dateString.substring(6,8);
    const birthDate = new Date(year, month-1, day);
    const today = Date.now();
    const ageDifMs = today - birthDate.getTime();
    const ageDate = new Date(ageDifMs);

    const temp = ageDate.getUTCFullYear() - 1970;

    if(dateString.length < 8 || year > new Date().getFullYear() || month > 12 || day > new Date(year, month, 0).getDate() || temp < 0) {
        document.getElementById('ageCalc-result').textContent = '올바른 생년월일이 아닙니다.';
        return false;
    }

    let age;
    if(temp >= 12) age = '성인';
    else if(temp >= 2) age = '소아';
    else age = '유아';

    document.getElementById('ageCalc-result').textContent = `탑승일 ${getISODate(new Date())} 기준으로 입력한 생년월일은 ${age} 입니다.`;
};

const calculateAgeInit = () => {
    document.getElementById('btn-ageCalc').addEventListener('click', ()=> {
        document.getElementById('ageCalc-result').textContent = "";
        document.getElementById('txtBirthDate').value = "";
    });

    document.getElementById('btn-ageCalc-calc').addEventListener('click', () => calculateAge(document.getElementById('txtBirthDate').value));

    /* 나이 계산기 외 다른 부분 클릭시 */
    overlay.addEventListener('click', () => document.getElementById('btn-ageCalc-window').style.display = 'none' );
};

const getISODate = date => {
    const year = date.getFullYear();
    let month = (1 + date.getMonth());
    month = month >= 10 ? month : '0' + month;
    let day = date.getDate();
    day = day >= 10 ? day : '0' + day;
    return `${year}-${month}-${day}`;
};

/* 출발공항 도착공항 변경 */
const spotChange = () => {
    let spotChangeBtns = document.querySelectorAll('.spot-change');
    spotChangeBtns.forEach(elem => {
        elem.addEventListener('click', () => {
            const index = event.target.id.charAt(event.target.id.length-1);
            const temp = document.getElementById('airportFrom-' + index).value;
            document.getElementById('airportFrom-' + index).value = document.getElementById('airportTo-' + index).value;
            document.getElementById('airportTo-' + index).value = temp;
        })
    });
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

/* 캘린더 */
let calendar;
const cal_init = () => {
    if(calendar) calendar.destroy();
    calendar = cal_generator('flightDate-1');
};


/* insertAfter */
const insertAfter = (referenceNode, newNode) => {
    if (!!referenceNode.nextSibling) referenceNode.parentNode.insertBefore(newNode, referenceNode.nextSibling);
    else referenceNode.parentNode.appendChild(newNode);
};

(() => {

    if(location.pathname.indexOf('booking1') !== -1) {
        /* 각종 안내 버튼 이벤트 */
        hintWindow('passenger-hint');
        hintWindow('class-hint');
        hintWindow('multi-way-hint', true, true, false);
        hintWindow('btn-ageCalc', true, true, true);

        /* 공항 picker */
        openPicker('.open-airport-picker');

        /* 캘린더 */
        cal_init();


        /* 여정/날짜 선택 */

        /* 체크박스 이벤트 */
        let checkboxElems = document.querySelectorAll('input[name="trip-type"]');
        checkboxElems.forEach(elem => elem.addEventListener('change', cal_init));

        /* 컴포넌트 display 이벤트 */
        // 아니 왜 change 이벤트리스너 작동을 안하냐
        // Todo 코드 더러워서 나중에 다시 봐야겠다..
        document.querySelector('.type-radio-box').addEventListener('mouseup', e => {
            let temp = e.target.previousElementSibling;

            if (temp.id === "round-way") {
                document.getElementById('note').classList.add('hidden');
            } else {
                document.getElementById('note').classList.remove('hidden');
            }

            if (temp.id === "multi-way") {
                document.getElementById('multi-way-btn-box').classList.remove('hidden');
            } else {
                document.getElementById('multi-way-btn-box').classList.add('hidden');
                let btns = document.getElementById('multi-way-btn-box');
                let input_forms = document.querySelectorAll('.book-input-form');
                for(let i = 1; i<input_forms.length; i++) {
                    btns.parentElement.removeChild( btns.previousElementSibling);
                }
            }
        });

        /* 다구간섹션에서 여행선택폼 줄 추가/제거 이벤트 */
        document.querySelector('.add').addEventListener('click', () => {
            let input_forms = document.querySelectorAll('.book-input-form');
            let num_of_forms = input_forms.length;
            if(num_of_forms >= 6) {
                document.querySelector('#note>p').classList.remove('hidden');
                return false;
            }
            document.querySelector('#note>p').classList.add('hidden');

            let div = document.createElement('div');
            div.setAttribute('class','row clearfix book-input-form');
            let temp = input_forms[num_of_forms-1].innerHTML;
            input_forms[num_of_forms-1].parentElement.insertBefore(div, document.getElementById('multi-way-btn-box'));
            div.innerHTML = temp;

            //
            let btns = document.getElementById('multi-way-btn-box');
            let targetElem = btns.previousElementSibling;
            let str;


            for(let i = 0; i<targetElem.children.length; i++) {
                str = targetElem.children[i].firstElementChild.htmlFor;
                str = str.substr(0, str.length-1) + (num_of_forms + 1);

                targetElem.children[i].firstElementChild.htmlFor = str;
                targetElem.children[i].lastElementChild.id = str;
                targetElem.children[i].lastElementChild.name = str;

                if(i === 0) {
                    const strId = targetElem.children[i].children[1].id;
                    targetElem.children[i].children[1].id = strId.substr(0, strId.length-1) + (num_of_forms + 1);
                }

                if (str.indexOf('flightDate') !== -1)
                    cal_generator(str, document.getElementById('flightDate-'+num_of_forms).value);
            }
            openPicker('.open-airport-picker');
            spotChange();
        });


        document.querySelector('.subtr').addEventListener('click', () => {
            let input_forms = document.querySelectorAll('.book-input-form');
            let num_of_forms = input_forms.length;
            if(num_of_forms <= 1) {
                document.querySelector('#note>p').classList.remove('hidden');
                return false;
            }
            document.querySelector('#note>p').classList.add('hidden');
            let btns = document.getElementById('multi-way-btn-box');
            btns.parentElement.removeChild( btns.previousElementSibling);
        });

        spotChange();


        /* 탑승인원 선택 */
        /* 나이 계산기 이벤트 */
        calculateAgeInit();

        /* 승객수 + - 버튼 이벤트 */
        changeNumOfPassengers();

        /* 조회버튼 이벤트 추가 */
        document.querySelector('.nextBtn').addEventListener('click', () => {
            sessionStorage.setItem('date', document.getElementById('flightDate-1').value);
        })
    }

    else if (location.pathname.indexOf('booking2') !== -1) {

        /* 팝업창 */
        hintWindow('num-of-passengers', true, true);
        hintWindow('btn-ageCalc', true, true, true);

        document.getElementById('num-of-passengers').addEventListener('click', e => {
            const _scrollTop = window.scrollY || document.documentElement.scrollTop;
            document.getElementById('num-of-passengers-window').style.top = _scrollTop + e.target.getBoundingClientRect().bottom + 15 + 'px';
        });

        //캘린더
        cal_init();

        //공항picker
        openPicker('.open-airport-picker');

        /* 승객수 + - 버튼 이벤트 */
        changeNumOfPassengers();

        /* 탑승객 팝업에서 선택 클릭시 */
        const passengerNum = document.getElementById('num-of-passengers');

        document.querySelector('#selectBtn').addEventListener('click', () => {
            const adultNum = parseInt(document.getElementById('numOfAdult').value);
            const childNum = parseInt(document.getElementById('numOfChild').value);
            const infantNum = parseInt(document.getElementById('numOfInfant').value);
            let totalNum = "";

            if(totalPassengers()) {
                if(adultNum > 0) totalNum += `성인 ${adultNum}`;
                if(childNum > 0) totalNum += `, 소아 ${childNum}`;
                if(infantNum > 0) totalNum += `, 유아 ${infantNum}`;
                passengerNum.value = totalNum;
                document.getElementById('num-of-passengers-window').style.display = 'none';
                overlay.style.display = 'none';
            }
        });

        /* 탑승객 팝업 오픈시 입력된 값 가져오기 */
        passengerNum.addEventListener('click', () => {
            const totalNum = passengerNum.value;

            let adultNum = totalNum.charAt(totalNum.indexOf('성인')+3);
            let childNum = totalNum.charAt(totalNum.indexOf('소아')+3);
            let infantNum = totalNum.charAt(totalNum.indexOf('유아')+3);
            if (totalNum.indexOf('성인') === -1) adultNum = 0;
            if (totalNum.indexOf('소아') === -1) childNum = 0;
            if (totalNum.indexOf('유아') === -1) infantNum = 0;
            document.getElementById('numOfAdult').value = adultNum;
            document.getElementById('numOfChild').value = childNum;
            document.getElementById('numOfInfant').value = infantNum;
        });

        /* 탑승객 팝업에서 다른 부분 클릭시 */
        overlay.addEventListener('click', () => document.getElementById('num-of-passengers-window').style.display = 'none' );

        /* 나이 계산기 이벤트 */
        calculateAgeInit();

        document.querySelector('#btn-ageCalc-window .btn-close').addEventListener('click', () => {
            overlay.style.display = 'block';
            document.getElementById('num-of-passengers-window').style.display = 'block';
        });

        /* 티켓 선택시 */
        document.querySelectorAll('.flight-table-schedule>.col-fifth>label').forEach(elem => {
            elem.addEventListener('click', e => {
                const target_journey = e.target.parentElement.parentElement.parentElement.parentElement.id;
                const selected = document.querySelector(`#${target_journey} .selected-ticket`);
                if(selected) {
                    selected.classList.remove('selected-ticket');
                    selected.style.backgroundColor = '#eee';
                    selected.style.borderBottomColor = '#ddd';
                    selected.parentElement.parentElement.removeChild(selected.parentElement.nextElementSibling);
                }
                const parent = e.target.parentElement;
                //
                var div = document.createElement("DIV");
                div.style.height = "80px";
                if(parent.parentElement.children[1] === parent) {
                    parent.style.backgroundColor = "#9bf";
                    parent.style.borderBottomColor = "#9bf";
                    div.style.background = "#9bf";
                    insertAfter(parent.parentElement, div);
                } else if(parent.parentElement.children[2] === parent) {
                    div.style.background = "#69f";
                    parent.style.borderBottomColor = "#69f";
                    insertAfter(parent.parentElement, div);
                    parent.style.backgroundColor = "#69f"
                } else if(parent.parentElement.children[3] === parent) {
                    div.style.background = "#36f";
                    parent.style.borderBottomColor = "#36f";
                    insertAfter(parent.parentElement, div);
                    parent.style.backgroundColor = "#36f"
                }


                e.target.parentElement.classList.add('selected-ticket');


            });
        });


        /* waypoint */
        // 상단바 변경
        $('.cur-route').waypoint(function(direction) {
            if (direction === "down") {
                $('.cur-route').addClass('sticky');
            } else {
                $('.cur-route').removeClass('sticky');
            }
        }, {
            offset: '10px;'
        });

        // 섹션별 여정 설명바
        $('#journey-1').waypoint(direction => {
            if (direction === "down") $('#journey-1 .journey-name-sticky').removeClass('hidden');
            else $('.journey-name-sticky').addClass('hidden');
        }, {
            offset: '-1px;'
        });

        $('#journey-2').waypoint(direction => {
            if (direction === "down") $('#journey-2 .journey-name-sticky').removeClass('hidden');
            else $('.journey-name-sticky').addClass('hidden');
        }, {
            offset: '-1px;'
        });
    }

    else if (location.pathname.indexOf('booking3') !== -1) {
        hintWindow('membership-hint');


        const input = document.getElementById("phone");
        window.intlTelInput(input, {
            dropdownContainer: document.body,
            initialCountry: "kr",
            preferredCountries: ['kr', 'us', 'cn'],
            utilsScript: "../../../Vendor/intl-tel-input-16.0.0/build/js/utils.js",
        });
    }
})();