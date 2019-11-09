<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>항공권 예약 - 탑승자/예약자 정보입력</title>
    <link rel="stylesheet" href="../../../CSS/booking.css">
    <!-- 국제 전화번호-->
    <link rel="stylesheet" href="../../../../Vendor/intl-tel-input-16.0.0/build/css/intlTelInput.css">
    <script src="../../../../Vendor/intl-tel-input-16.0.0/build/js/intlTelInput.js"></script>
    <!-- Font Awesome CDN -->
    <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
    <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
</head>
<body>
<%@ include file="../../common/nav.jspf" %>
    <div class="overlay"></div>
    <section class="content">
    
        <h3>탑승자 정보</h3>
        
        <ul class="list-type2 last-note">
            <li>반드시 실제 탑승하실 분의 성명을 입력하십시오. (예약 후 변경이 불가합니다)</li>
            <li>외국 국적이신 경우 성함을 여권상 영문으로 입력하여 주시기 바랍니다.</li>
            <li>탑승 완료 후에는 소급하여 할인을 적용 받을 수 없으므로 할인 대상 손님께서는 항공권 구입, 탑승 시 할인 증빙서류를 소지하여 주시기 바랍니다.</li>
            <li>소아/유아 동반 시, 반드시 나이를 확인할 수 있는 서류를 준비하시기 바랍니다.</li>
            <li>임신 32주 이상의 임신부 고객은 탑승이 제한될 수 있으니 사전에 확인하시기 바랍니다. (37주 이상은 탑승불가)&nbsp; 
                <a href="https://flyasiana.com/C/KR/KO/contents/traveling-while-pregnant?/cms/contents/menu/CM201802220000728319?menuId=CM201802220000728319" target="_blank" class="btn_arrow">
                    <i class="fas fa-exclamation pregnant-hint"></i>
                </a>
            </li>
        </ul>
        
        
        <li class="subtitle">
            <span>성인 1</span>
        </li>
        <div class="table-form">
            <div class="row clearfix">
                <div class="table-row-title">
                    성
                </div>
                <div class="two-in-row">
                    <input type="text" placeholder="한글 성 입력 (예:홍)">
                </div>
                <div class="table-row-title">
                    이름
                </div>
                <div class="two-in-row">
                    <input type="text" placeholder="한글 이름 입력 (예:길동)">
                </div>
            </div>

            <div class="row clearfix">
                <div class="table-row-title">
                    생년월일
                </div>
                <div>
                    <select id="year" name="year" title="생년월일&nbsp;연도" style="width: 200px">
                        <option value="">년</option>
                    </select>

                    <select id="month" name="month" title="생년월일월" style="width: 200px">
                        <option value="">월</option>
                    </select>

                    <select id="day" name="day" title="생년월일일" style="width: 200px">
                        <option value="">일</option>
                    </select>
                </div>
            </div>
            
            <div class="row clearfix">
                <div class="table-row-title">
                    성별
                </div>
                <div class="gender-wrapper">
                    <input type="radio" class="radio3" name="gender" id="male">
                    <label for="male">남성</label>
                    <input type="radio" class="radio3" name="gender" id="female">
                    <label for="female">여성</label>
                </div>
            </div>    

            <div class="row clearfix">
                <div class="table-row-title">
                    회원번호 <span id="membership-hint"><i class="fas fa-exclamation"></i></span>
                </div>
                <div>
                    <select id="selAirline1" name="selAirline" title="항공사" style="width: 296px; margin-top: -4px">

                        <option value="GZ" selected="selected">가자에어 - Gaza Club</option>
                        <option value="SA">남아프리카항공 - Voyager</option>
                        <option value="LH">루프트한자 - Miles &amp; More</option>
                        <option value="SN">브뤼셀항공 - Miles &amp; More</option>
                        <option value="LX">스위스항공 - Miles&amp;More</option>
                        <option value="SK">스칸디나비아항공 - EuroBonus</option>
                        <option value="ZH">심천항공 - PhoenixMiles</option>
                        <option value="SQ">싱가포르항공 - KrisFlyer</option>
                        <option value="AV">아비앙카항공 - LifeMiles</option>
                        <option value="OZ">아시아나항공 - Asiana Club</option>
                        <option value="A3">에게안항공 - Miles+Bonus</option>
                        <option value="BR">에바항공 - Infinity Mileagelands</option>
                        <option value="CA">에어 차이나 - PhoenixMiles</option>
                        <option value="NZ">에어뉴질랜드 - Airpoints</option>
                        <option value="AI">에어인디아 - FlyingReturns</option>
                        <option value="AC">에어캐나다 - Aeroplan</option>
                        <option value="ET">에티오피아항공 - Sheba Miles</option>
                        <option value="OS">오스트리아항공 - Miles &amp; More</option>
                        <option value="UA">유나이티드항공 - MileagePlus</option>
                        <option value="MS">이집트항공 - EGYPTAIR Plus</option>
                        <option value="NH">전일본공수(ANA) - ANA Mileage Club</option>
                        <option value="CM">코파항공 - ConnectMiles</option>
                        <option value="OU">크로아티아항공 - Miles &amp; More</option>
                        <option value="TG">타이항공 - Royal Orchid Plus</option>
                        <option value="TP">탑포르투갈 - TAP Miles &amp; Go</option>
                        <option value="TK">터키항공 - Miles &amp; Smiles</option>
                        <option value="LO">폴란드항공 - Miles &amp; More</option>
                    </select>
                    <input type="text" placeholder="" style="width: 320px;">
                </div>
            </div>
            
            <div class='pop-up-window-type1 border' id='membership-hint-window'>
                <ul class="list-type2">
                    <p>
                        회원번호 (탑승객)
                        <i class="fas fa-times btn-close"></i>
                    </p>
                    <li>가자에어, 스타얼라이언스 회원사에 대한 마일리지 적립이 가능합니다.</li>
                    <li>마일리지는 탑승 완료 후 적립되며, 항공사마다 적립시기에 차이가 있을 수 있습니다.</li>
                    <li>가자에어클럽 회원이 아니신 경우, 탑승 전 회원가입을 해주셔야 적립이 가능합니다.</li>
                </ul>
            </div>	
            
            <div class="row clearfix">
                <div class="table-row-title">
                    1번째 여정 할인
                </div>
                <div>
                    <select id="selPTCCode_Dep_1" name="selPTCCode_Dep" title="신분할인 선택" style="width: 632px;"> 
                        <option value="CB" ptccode="CB" ptcrate="0">개인할인 선택 안함</option>
                        <option value="PR" ptccode="PR" ptcrate="30">장애인 4~6급(30%)</option>
                        <option value="PR" ptccode="PR" ptcrate="50">장애인 1~3급(50%)</option>
                        <option value="PC" ptccode="PC" ptcrate="50">장애인 1~3급 동반 보호자 1인(50%)</option>
                        <option value="CJ" ptccode="CJ" ptcrate="10">제주도민/재외 제주도민(제주관련 노선만 적용)(10%)</option>
                        <option value="OB" ptccode="OB" ptcrate="10">경로우대(만65세 이상)(10%)</option>
                        <option value="ME" ptccode="ME" ptcrate="10">현역군인(휴가증소지의 의무복무사병)(10%)</option>
                        <option value="NA" ptccode="NA" ptcrate="30">고엽제 후유증 환자(30%)</option>
                        <option value="NC" ptccode="NC" ptcrate="50">국가유공상이 4급 동반 보호자 1인(50%)</option>
                        <option value="ND" ptccode="ND" ptcrate="50">5.18민주유공 1~4급 동반보호자 1인(50%)</option>
                        <option value="NE" ptccode="NE" ptcrate="50">국가유공상이 1~3급 동반 보호자 1인(50%)</option>
                        <option value="NG" ptccode="NG" ptcrate="50">독립유공자 동반 보호자1인(50%)</option>
                        <option value="NI" ptccode="NI" ptcrate="30">독립유공자 유족증소지자(30%)</option>
                        <option value="NI" ptccode="NI" ptcrate="50">독립유공자(50%)</option>
                        <option value="NP" ptccode="NP" ptcrate="30">국가유공자 / 5.18민주유공자 &amp; 유공자 유족증 소지자 (30%)</option>
                        <option value="NQ" ptccode="NQ" ptcrate="50">국가유공상이자 &amp; 5.18민주유공부상자(50%)</option>
                        <option value="PFA" ptccode="PFA" ptcrate="0">기초생활수급자 공항세 할인</option>
                        <option value="TEA" ptccode="TEA" ptcrate="0">기술기능분야 우수자 공항세 할인</option>
                        <option value="ZZ" ptccode="ZZ" ptcrate="10">청소년(만13세 이상~만22세 미만)(10%)</option>
                    </select>
                </div>
            </div>
        </div>
    
        <h3>예약자 연락처 정보</h3>
        <ul class="list-type2">
            <li>예약정보수신 연락처에 작성하신 이메일로 구매 결과와 여정안내서를 전송해드립니다.</li>
        </ul>
        <div class="table-form">
            <div class="row clearfix">
                <div class="table-row-title">
                    이메일
                </div>
                <div>
                    <input type="text" id="emailAddress" nname="emailAddress" placeholder="이메일 입력" title="이메일 아이디 입력" style="width:200px;"> @ &nbsp;
                    <select id="emailDomain" name="emailDomain" title="이메일 도메인 선택" style="width:180px; margin-top: -3px;">
                        <option value="" selected>직접입력</option>
                        <option value="korea.com">korea.com</option>
                        <option value="dreamwiz.com">dreamwiz.com</option>
                        <option value="naver.com">naver.com</option>
                        <option value="lycos.co.kr">lycos.co.kr</option>
                        <option value="yahoo.co.kr">yahoo.co.kr</option>
                        <option value="netian.com">netian.com</option>
                        <option value="empal.com">empal.com</option>
                        <option value="hanmir.com">hanmir.com</option>
                        <option value="hotmail.com">hotmail.com</option>
                        <option value="hanafos.com">hanafos.com</option>
                        <option value="chol.com">chol.com</option>
                        <option value="hanmail.net">hanmail.net</option>
                        <option value="nate.com">nate.com</option>
                        <option value="yahoo.com">yahoo.com</option>
                        <option value="gmail.com">gmail.com</option>
                        <option value="aol.com">aol.com</option>
                        <option value="sbcglobal.net">sbcglobal.net</option>
                        <option value="hotmail.co.kr">hotmail.co.kr</option>
                        <option value="yahoo.co.jp">yahoo.co.jp</option>
                    </select>
                    <input type="text" id="emailDomainText" name="emailDomainText" placeholder="도메인 입력" title="이메일 도메인 입력" style="width:298px;">
                </div>
            </div>
            <div class="row clearfix">
                <div class="table-row-title">
                    전화번호
                </div>
                <div class="two-in-row">
                    <input id="phone" name="phone" type="number">
                </div>
                <div class="table-row-title">
                    수신동의
                </div>
                <div class="two-in-row receive-type-wrapper">
                    <input type="checkbox" id="email" class="checkbox3" checked>
                    <label for="email" class="checkbox3">이메일</label>
                    <input type="checkbox" id="sms" class="checkbox3" checked>
                    <label for="sms" class="checkbox3">SMS</label>
                </div>
            </div>
        </div>
       
        <div class="flex">
            <a href="#" onclick="history.back()"><button class="whiteBtn left">&lt; 이전</button></a>
            <a href="<%=path %>/Resources/JSP/flight/booking/booking4.jsp"><button class="right blueBtn">다음 &gt;</button></a>
        </div>

        <ul class="list-type2 bg-gray6 last-note">
            <li class="list-inside-title">유의사항</li>
            <li>예약 클래스에 따라 마일리지 적립이 불가하거나 적립률이 상이할 수 있으며, 실제 운항하는 항공사의 기준에 따라 적립이 이루어집니다.</li>
            <li>해당 항공사 마일리지 적립 규정상 적립이 불가한 경우에는 회원번호를 입력하셔도 적립이 되지 않습니다.</li>
            <li>실제 운항항공사가 스타얼라이언스 및 마일리지 제휴항공사가 아닌 공동운항편은 아시아나클럽 계정으로 사후 적립만 가능합니다.<br>현재 시스템 문제로, 숫자와 영문을 조합한 이메일 주소만 사용 가능합니다.</li>
        </ul>
    </section>
    <%@ include file="../../common/footer.jspf" %>
    <script src="../../../JS/booking.js"></script>
</body>
</html>