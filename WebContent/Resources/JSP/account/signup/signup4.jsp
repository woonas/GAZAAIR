<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>회원가입 - 회원정보입력</title>
<!--        bootstrap validator-->
        <link rel="stylesheet" href="../../../../Vendor/bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" href="../../../../Vendor/bootstrapValidator/bootstrapValidator.css"/>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../../../../Vendor/bootstrapValidator/bootstrapValidator.js"></script>
<!--        countrypicker-->
        <link rel="stylesheet" href="../../../../Vendor/Filterable-Country-Picker-niceCountryInput/niceCountryInput.css">
        <script src="../../../../Vendor/Filterable-Country-Picker-niceCountryInput/niceCountryInput.js"></script>
<!-- Font Awesome CDN -->
        <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../../../../Resources/CSS/account.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
<!-- 다음/카카오 주소검색 -->         
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- Moment Js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<!-- Lightpick CSS -->
        <link rel="stylesheet" href="../../../../Vendor/javascript-datepicker-lightpick/css/lightpick.css">
<!-- Lightpick JS -->
        <script src="../../../../Vendor/javascript-datepicker-lightpick/js/lightpick.js"></script>
    </head>
     <body id="personalInfo">
        <div class="overlay"></div>
         <%@ include file="../../common/nav.jspf" %>
        <section class="content">
            <h3>회원가입</h3>
            <p>회원으로 가입하시면, 예약, 발권, 탑승, 마일리지 조회 등 다양한 서비스와 함께<br>정기 이벤트 뉴스와 할인항공권 소식을 이메일로 받아보실 수도 있습니다.</p>
            <ol class="step">
                <li>STEP1<div>유형선택</div></li>
                <li>STEP2<div>약관동의</div></li>
                <li>STEP3<div>본인인증</div></li>
                <li class="on">STEP4<div>회원정보입력</div></li>
                <li>STEP5<div>가입완료</div></li>
            </ol>
            
            <div class="form-wrapper">
                <form id="defaultForm" method="post" action="<%=path %>/Resources/JSP/account/signup/signup5.do" class="form-horizontal">
                    <fieldset>
                        <legend>회원 정보 입력</legend>

                        <div class="form-group">
                            <label class="col-fifth control-label">이름 (한글명)</label>
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="firstNameKo" placeholder="성" required data-bv-notempty-message="성을 입력해주십시오!">
                            </div>
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="lastNameKo" placeholder="이름" required data-bv-notempty-message="이름을 입력해주십시오!">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-fifth control-label">이름 (영문명)</label>
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="firstNameEn" placeholder="성" required data-bv-notempty-message="성을 입력해주십시오!">
                            </div>
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="lastNameEn" placeholder="이름" required data-bv-notempty-message="이름을 입력해주십시오!">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label">성별</label>
                            <div class="col-xs-3" id="gender">
                                <div class="radio col-xs-5">
                                    <input type="radio" name="gender" class="radio3" id="male" value="M" checked>
                                	<label for="male">남성</label>
                                </div>
                                <div class="radio col-xs-5">
                                    <input type="radio" name="gender" class="radio3" id="female" value="F">
                                	<label for="female">여성</label>
                                </div>
                            </div>
                        </div>
                       
                        <div class="form-group">
                            <label class="col-fifth control-label">생년월일</label>
                            <div class="col-xs-4">
                                <input type="text" class="form-control" id='birthdate' name="birthdate" placeholder="2000/01/01" required data-bv-notempty-message="생일을 입력해십시오." readonly>
                            </div>
                        </div>
                       
                        <div class="form-group">
                            <label class="col-fifth control-label">거주지역</label>
                            <div class="col-xs-4 countryPicker"
                                 data-selectedcountry="KR"
                                 data-showspecial="false"
                                 data-showflags="true"
                                 data-i18nall="All selected"
                                 data-i18nnofilter="No selection"
                                 data-onchangecallback="onChangeCallback">
                            </div>
                            <div class="col-xs-4 country-mark">
                                <input type="text" class="form-control invisible" id="country" name="country"  value="South Korea (대한민국)" readonly required>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label">아이디</label>
                            <div class="col-xs-4">
                                <input type="text" class="form-control" name="username" id="username" required placeholder="영문+숫자 6~15자리" onkeypress="inputTypeCheck()">
                            </div>
                            <div>
                                <input type="button" value="중복체크" class="blueBtn" id="btn-dupCheck">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label">비밀번호</label>
                            <div class="col-xs-4">
                                <input type="password" class="form-control" required placeholder="영문+숫자+특수문자 8~20자리" name="password">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-fifth control-label">비밀번호 확인</label>
                            <div class="col-xs-4">
                                <input type="password" class="form-control" required placeholder="영문+숫자+특수문자 8~20자리" name="confirmPassword">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-fifth control-label">이메일</label>
                            <div class="col-xs-5">
                                <input type="text" class="form-control" name="email" placeholder="이메일 입력" required>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label">휴대전화</label>
                            <div class="multi-input">
                               <div class="col-xs-2">
                                   <input type="number" class="form-control" name="phone1" placeholder="010" maxlength="3" oninput="maxLengthCheck(this)" required>
                                </div>
                                <span>ㅡ</span>
                                <div class="col-xs-2">
                                    <input type="number" class="form-control" name="phone2" placeholder="1234" maxlength="4" oninput="maxLengthCheck(this)" required>
                                </div>
                                <span>ㅡ</span>
                                <div class="col-xs-2">
                                    <input type="number" class="form-control" name="phone3" placeholder="1234" maxlength="4" oninput="maxLengthCheck(this)" required>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label">유선전화(선택)</label>
                            <div class="multi-input">
                                <div class="col-xs-2">
                                    <input type="number" class="form-control" name="number1" maxlength="3" oninput="maxLengthCheck(this)" placeholder="02">
                                </div>
                                <span>ㅡ</span>
                                <div class="col-xs-2">
                                    <input type="number" class="form-control" name="number2" maxlength="4" oninput="maxLengthCheck(this)" placeholder="1234">
                                </div>
                                <span>ㅡ</span>
                                <div class="col-xs-2">
                                    <input type="number" class="form-control" name="number3" maxlength="4" oninput="maxLengthCheck(this)" placeholder="1234">
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="form-group addr-wrapper">
                            <label class="col-fifth control-label">주소</label>
                            <div class="col-xs-2" style="margin-top: 5px;">
                                <input type="number" class="form-control" name="postalCode" id="postalCode"
                                       placeholder="우편번호"  readonly>
                            </div>
                            <div style="margin-top: 5px;">
                                <input type="button" value="우편번호 검색" id="btn-postalSearch" class="blueBtn">
                            </div>
                            <div>
                               <div class="col-xs-5">
                                    <input type="text" class="form-control" name="addr1" id="addr1" placeholder="기본주소" required readonly>
                                </div>
                                <div class="col-xs-5">
                                    <input type="text" class="form-control" name="addr2" id="addr2" placeholder="상세주소">
                                </div>
                            </div>
                        </div>
                    
                        <div class="form-group">
                           <label class="col-fifth control-label event-label">
                               뉴스및 상품정보,<br>
                               이벤트 등 수신
                           </label>
                            <div class="col-xs-7">
                                <div class="clearfix">
                                    <div class="col-xs-3 checkbox">
                                        <input type="checkbox" class="checkbox3" name="receiveEmail"
                                               id="receiveEmail" checked>
                                        <label for="receiveEmail" class="checkbox3"> 이메일</label>
                                    </div>
                                    <div class="col-xs-3 checkbox">
                                        <input type="checkbox" class="checkbox3" name="receiveSMS" id="receiveSMS">
                                        <label for="receiveSMS" class="checkbox3"> SMS</label>
                                    </div>
                                </div>
                                <div>
                                    <ul class="list-type2">
                                        <li>수신에 동의하시면 아시아나항공의 뉴스레터 및 상품정보, 이벤트 등의 안내를 받아보실 수 있습니다.</li>
                                        <li>회원정보, 예약 및 항공기 운항정보, 서비스 주요정책 관련내용은 수신동의 여부와 관계 없이 발송됩니다.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    
                    <h4>패밀리 사이트 가입 (선택)</h4>
                    <ul class="list-type2">
                        <li>수신에 동의하시면 아시아나항공의 뉴스레터 및 상품정보, 이벤트 등의 안내를 받아보실 수 있습니다.</li>
                        <li>회원정보, 예약 및 항공기 운항정보, 서비스 주요정책 관련내용은 수신동의 여부와 관계 없이 발송됩니다.</li>
                    </ul>

                    
                    <input type="checkbox" class="checkbox1" id="dutyfree">
                    <label for="dutyfree" class="size-fixed">
                        가자에어 인터넷 면세점 가입 (http://dutyfree.gazaair.com)
                    </label>
                    
                    <h4>간편로그인 연결</h4>
                    <div class="row flex clearfix login-link">
                        <div>
                            <img src="../../../IMG/logo/kakao.png" alt="">
                            카카오톡 <span>간편로그인</span></div>
                        <div id="facebook-logo">
                            <img src="../../../IMG/logo/pngkey.com-facebook-logo-png-5311.png" alt="">
                            페이스북 <span>간편로그인</span>
                        </div>
                        <div>
                            <img src="../../../IMG/logo/naver-png-no-comments-200.png" alt="">
                            네이버 <span>간편로그인</span>
                        </div>
                    </div>
                    <div class="font-red hidden centeredX warning">간편로그인은 서비스 준비중에 있습니다.</div>
                    <hr>
                    
                    <div class="form-group">
                        <div class="col-xs-12">
                            <a href="signup5.html"><button type="submit" class="btn blueBtn">회원가입</button></a>
                        </div>
                    </div>
                    <input type="hidden" name="agree_personalCollectionOption" value="${agree_personalCollectionOption }"/>
                    <input type="hidden" name="agree_personalProvide" value="${agree_personalProvide }"/>
                </form>
            </div>
        </section>

       
        <div class="pop-up-window-type1" id="btn-dupCheck-window" style="position: fixed !important;">
            <div>
                <p class="window-title">
                    아이디 중복체크
                    <i class="fas fa-times btn-close"></i>
                </p>
            </div>
            <p>다른 아이디를 사용하시려면 입력 후 중복확인을 클릭해주시기 바랍니다.</p>
            <form method="post" id="idChkFrm" onsubmit="return false">
                <div class="form-area1 form-group clearfix">
                    <div class="col-two-third">
                        <input type="text" class="form-control" id="txtID" name="txtID" placeholder="아이디" >
                    </div>
                    <div class='col-third'>
                        <button class="blueBtn" id="btn-dupCheck2">중복확인</button>
                    </div>
                </div>
            </form>
            <div class="result-wrapper font-brown"></div>
            
            <div>
                <hr>
                <button class="blueBtn" id="btn-use">사용하기</button>
            </div>
        </div>
         <%@ include file="../../common/footer.jspf" %>
        
        <script src="<%=path %>/Resources/JS/validator.js"></script>
        <script src="<%=path %>/Resources/JS/account.js"></script>
    </body>
</html>