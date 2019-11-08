<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 - 회원 유형 선택</title>
    <link rel="stylesheet" href="../../../CSS/account.css">
	
    <!-- Font Awesome CDN -->
    <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
    <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
</head>
<body>
    <div class="overlay"></div>
    <%@ include file="../../common/nav.jspf" %>
    <section class="content">
        <h3>회원가입</h3>
        <p>회원으로 가입하시면, 예약, 발권, 탑승, 마일리지 조회 등 다양한 서비스와 함께<br>정기 이벤트 뉴스와 할인항공권 소식을 이메일로 받아보실 수도 있습니다.</p>
        <ol class="step">
            <li class="on">STEP1<div>유형선택</div></li>
            <li>STEP2<div>약관동의</div></li>
            <li>STEP3<div>본인인증</div></li>
            <li>STEP4<div>회원정보입력</div></li>
            <li>STEP5<div>가입완료</div></li>
        </ol>
        <div class="row two-boxes">
            <ul class="clearfix">
                <li class="li-korea">
                    <div>
                        <div class="tab-title">한국국가/지역</div>
                        <div class="tab-txt">한국국적 대한민국 거주자</div>
                        <a href="<%=path %>/Resources/JSP/account/signup/signup2.do"><button type="button" class="blueBtn" title="한국국적, 대한민국 거주자" id="btn-korea">선택하기</button></a>
                    </div>
                </li>
                <li class="li-foreign">
                    <div>
                        <div class="tab-title">외국국가/지역</div>
                        <div class="tab-txt">해외 국적자, 해외거주 한국인</div>
                        <a href="<%=path %>/Resources/JSP/account/signup/signup2.do"><button type="button" class="blueBtn" title="해외 국적, 해외국적 한국인" id="btn-foreign">선택하기</button> </a>
                    </div>
                </li>
            </ul>
        </div>
        
        <div class="ico-age">
            <span>※ 만14세미만 미성년자 회원 가입 절차 안내</span>
            <span id="underage-hint"><i class="fas fa-exclamation"></i></span>
        </div>
        
        <div class='pop-up-window-type1' id='underage-hint-window'>
            <ul class="list-type2">
               <div class="row">
                    <p class="window-title">
                        만14세미만 미성년자 회원 가입 절차 안내
                        <i class="fas fa-times btn-close"></i>
                    </p>
                </div>
                <div class="underage-reginfo">
                    <p class="window-subtitle">
                        14세 미만 아동의 경우 정보통신망법에 근거<br>
                        본인 인증, 법정 대리인 동의 확인 및 인증이 아래와 같은 절차가 필요합니다.
                    </p>
                    
                    <p class="list">1.  본인인증</p>
                    <ul class="list-type3">
                        <li>회원 가입 메뉴에서 휴대폰 인증 (회원 본인 명의의 휴대폰) 또는 아이핀 선택 후 본인 인증절차를 진행합니다.</li>
                        <li>회원 본인 명의의 휴대폰이 없는 경우, 아이핀 인증을 선택하여 진행할 수 있습니다.</li>
                        <li>아이핀 인증 절차 (인증기관 : NICE신용평가정보)</li>
                    </ul>
                    <div class="table-form2">
                        <div class="row clearfix">
                            <div class="col-fourth table-row-title">
                                아이핀 소지 회원
                            </div>
                            <div class="col-three-fourth">
                                인증창에 아이핀 아이디와 비밀번호 입력 후 인증
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-fourth table-row-title">
                                아이핀 미소지 회원
                            </div>
                            <div class="col-three-fourth">
                                인증창 하단에 신규발급 &gt; 아이핀 사용자 정보 입력 &gt; 신원보증인 정보 입력 &gt; 아이핀발급완료
                            </div>
                        </div>
                    </div>
                    <p class="list">2.  법정 대리인 동의 확인 및 인증</p>
                    <ul class="list-type3">
                        <li>가입 회원 본인 인증 완료 후 아시아나항공 홈페이지로 이동되며, 법정 대리인의 동의 확인 및 인증 화면으로 진행됩니다.</li>
                        <li>법정 대리인(보호자)의 본인 확인은 법정대리인 (보호자) 동의 확인 사항을 체크 &lt; 가입자와의 관계를 선택 &lt; 휴대폰 인증 또는 아이핀 인증을 진행하시면 됩니다.</li>
                    </ul>
                    <p class="list">3. 회원정보 입력</p>
                    <ul class="list-type3">
                        <li>본인 및 법정 대리인 (보호자) 확인 절차 완료되면 회원정보 정보 입력 단계로 진행됩니다.</li>
                        <li>회원 가입 시 필요 정보 입력 &lt; 회원 가입 버튼 클릭 &lt; 회원가입이 완료됩니다.</li>
                    </ul>
                </div>
            </ul>
        </div>
    </section>
    <%@ include file="../../common/footer.jspf" %>
    <script src="<%=path %>/Resources/JS/account.js"></script>
</body>
</html>