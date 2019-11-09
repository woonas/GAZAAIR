<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="p" value="<%=request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>회원정보</title>
        <!--        bootstrap validator-->
        <link rel="stylesheet" href="${p }/Vendor/bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" href="${p }/Vendor/bootstrapValidator/bootstrapValidator.css"/>
		
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${p }/Vendor/bootstrapValidator/bootstrapValidator.js"></script>
        <!--        countrypicker-->
        <link rel="stylesheet" href="${p }/Vendor/Filterable-Country-Picker-niceCountryInput/niceCountryInput.css">
        <script src="${p }/Vendor/Filterable-Country-Picker-niceCountryInput/niceCountryInput.js"></script>
        <!-- Font Awesome CDN -->
        <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="${p }/Resources/CSS/account.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
        <!-- 다음/카카오 주소검색 -->
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <style>
        
        </style>
    </head>
    <body id="personalInfo">
    <%@ include file="../../common/nav.jspf" %>
        <div class="overlay"></div>
        <section class="content">
            <h3>회원정보</h3>
            
            <div class="form-wrapper edit-form-wrapper">
                <form id="defaultForm" method="post" action="<%=path %>/Resources/JSP/mypage/account_info_edit.do" class="form-horizontal">
                    <fieldset>
                        <legend>기본 정보</legend>

                        <div class="form-group">
                            <label class="col-fifth control-label not-required">회원번호</label>
                            <div class="col-xs-4">
                                <input type="text" class="form-control" name="memberNo" id="memberNo" disabled
                                       value="777 999 ${vo.memberNum }">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label not-required">아이디</label>
                            <div class="col-xs-4">
                                <input type="text" class="form-control" name="userId" id="userId" disabled
                                       value="${vo.memberId }">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label not-required">비밀번호</label>
                            <div class="col-xs-2">
                                <input type="password" class="form-control" name="userPw" id="userPw" disabled
                                       value="${vo.memberPwd }">
                            </div>
                            <div>
                                <a href="<%=path %>/Resources/JSP/mypage/password_change.do">
                                    <input type="button" class="blueBtn" id="btn-pwChange" value="비밀번호변경">
                                </a>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label not-required">이름 (한글명)</label>
                            <div class="col-xs-4">
                                <input type="text" class="form-control" name="userNameKo" disabled value="${vo.memberNameKor }">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-fifth control-label not-required">이름 (영문명)</label>
                            <div class="col-xs-4">
                                <input type="text" class="form-control" name="userNameEn" disabled value="${vo.memberNameEng }">
                            </div>
                        </div>
                        <c:if test="${vo.gender=='M' }">
                        		<c:set var="gen" value="남성"/>
                        </c:if>
                        <c:if test="${vo.gender=='F' }">
                        		<c:set var="gen" value="여성"/>
                        </c:if>
                        <div class="form-group">
                            <label class="col-fifth control-label not-required">성별</label>
                            <div class="col-xs-4">
                                <input type="text" class="form-control" name="userGender" disabled value="${gen }">
                            </div>
                        </div>
                       
                        <div class="form-group">
                            <label class="col-fifth control-label not-required">생년월일</label>
                            <div class="col-xs-4">
                                <input type="text" class="form-control" id='userBirthday' name="userBirthday"
                                       disabled value="${vo.birthDay }">
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
                                <input type="text" class="form-control invisible" id="country" name="country"
                                       value="${vo.nation }"
                                       readonly required>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label">이메일</label>
                            <div class="col-xs-5">
                                <input type="text" class="form-control" name="email" placeholder="이메일 입력" required
                                       value="${vo.email }">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label">휴대전화</label>
                            <div class="multi-input hidden">
                               <div class="col-xs-2">
                                   <input type="number" class="form-control" name="phone1" id="phone1" placeholder="010"
                                          maxlength="3" oninput="maxLengthCheck(this)" required value="${vo.t1 }">
                                </div>
                                <span>ㅡ</span>
                                <div class="col-xs-2" style="padding: 0 15px;">
                                    <input type="number" class="form-control" name="phone2"
                                           id="phone2" placeholder="1234"
                                           maxlength="4" oninput="maxLengthCheck(this)" required value="${vo.t2 }">
                                </div>
                                <span>ㅡ</span>
                                <div class="col-xs-2" style="padding: 0 15px;">
                                    <input type="number" class="form-control" name="phone3" id="phone3"
                                           placeholder="1234"
                                           maxlength="4" oninput="maxLengthCheck(this)" required value="${vo.t3 }">
                                </div>
                            </div>
                            <div class="col-xs-4" id="phone-all">
                                <input type="text" class="form-control" value="${vo.tel }">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label">유선전화(선택)</label>
                            <div class="multi-input hidden">
                                <div class="col-xs-2">
                                    <input type="number" class="form-control" name="number1" id="number1" maxlength="3"
                                           oninput="maxLengthCheck(this)" placeholder="02">
                                </div>
                                <span>ㅡ</span>
                                <div class="col-xs-2">
                                    <input type="number" class="form-control" name="number2" id="number2" maxlength="4"
                                           oninput="maxLengthCheck(this)" placeholder="1234">
                                </div>
                                <span>ㅡ</span>
                                <div class="col-xs-2">
                                    <input type="number" class="form-control" name="number3" id="number3" maxlength="4"
                                           oninput="maxLengthCheck(this)" placeholder="1234">
                                </div>
                            </div>
                            <div class="col-xs-4" id="number-all">
                                <input type="text" class="form-control" value="${vo.altTel }">
                            </div>
                        </div>
                        
                        
                        <div class="form-group addr-wrapper">
                            <label class="col-fifth control-label">주소</label>
                            <div class="col-xs-2" style="margin-top: 5px;">
                                <input type="number" class="form-control" name="postalCode" id="postalCode"
                                       placeholder="우편번호" readonly value="${vo.zipcode }">
                            </div>
                            <div style="margin-top: 5px;">
                                <input type="button" value="우편번호 검색" id="btn-postalSearch" class="blueBtn">
                            </div>
                            <div class="col-xs-9" id="addr-all">
                                <input type="text" class="form-control" value="${vo.addr }, ${vo.detailAddr}">
                            </div>
                            <div class="hidden">
                               <div class="col-xs-5">
                                    <input type="text" class="form-control" name="addr1" id="addr1"
                                           placeholder="기본주소" required readonly value="${vo.addr }">
                                </div>
                                <div class="col-xs-5">
                                    <input type="text" class="form-control" name="addr2" id="addr2"
                                           placeholder="상세주소" value="${vo.detailAddr }">
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label not-required">개인정보 제공</label>
                            <div class="col-xs-8">
                                <input type="radio" name="info-provide" class="radio3" id="info-provide-agree" checked>
                                <label for="info-provide-agree"> 동의</label>
                                <input type="radio" name="info-provide" class="radio3" id="info-provide-disagree"
                                <c:if test="${vo.ag1 =='off' }">
                                	checked
                                </c:if>
                                >
                                <label for="info-provide-disagree"> 동의 안 함</label>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-fifth control-label not-required">통합 로그인</label>
                            <div class="col-xs-8">
                                <input type="radio" name="integrated-login" class="radio3" id="integrated-login-agree" checked>
                                <label for="integrated-login-agree"> 동의</label>
                                <input type="radio" name="integrated-login" class="radio3" id="integrated-login-disagree"
                                <c:if test="${vo.ag2 =='off' }">
                                	checked
                                </c:if>
                                >
                                <label for="integrated-login-disagree"> 동의 안 함</label>
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
	                                        <input type="checkbox" class="checkbox3" name="receiveEmail" id="receiveEmail"
                                	<c:if test="${vo.dr1=='on' }">
	                                     checked
                                    </c:if>
                                        >
                                        <label for="receiveEmail" class="checkbox3"> 이메일</label>
                                    </div>
                                    <div class="col-xs-3 checkbox">
	                                        <input type="checkbox" class="checkbox3" name="receiveSMS" id="receiveSMS"
                                    <c:if test="${vo.dr2=='on' }">
	                                    checked
                                    </c:if>
                                        >
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
                    
                    <h4>간편로그인 연결</h4>
                    <div class="row flex clearfix login-link">
                        <div>
                            <img src="<%=path %>/Resources/IMG/logo/kakao.png" alt="">
                            카카오톡 <span>간편로그인</span></div>
                        <div id="facebook-logo">
                            <img src="<%=path %>/Resources/IMG/logo/pngkey.com-facebook-logo-png-5311.png" alt="">
                            페이스북 <span>간편로그인</span>
                        </div>
                        <div>
                            <img src="<%=path %>/Resources/IMG/logo/naver-png-no-comments-200.png" alt="">
                            네이버 <span>간편로그인</span>
                        </div>
                    </div>
                    <div class="font-red hidden centeredX warning">간편로그인은 서비스 준비중에 있습니다.</div>
                    <hr>
                    
                    <div class="form-group">
                        <div class="col-xs-12">
                            <input type="checkbox" class="hidden" id="edit">
                            <label for="edit" class="blueBtn btn">회원정보 변경</label>
                            <a href="../../mypage"><button type="submit" class="btn blueBtn">수정</button></a>
                            <a href="../../mypage"><label for = "edit" class = "whiteBtn btn">취소</label></a>
                        </div>
                    </div>
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
            <div class="form-area1 form-group clearfix">
               <div class="col-two-third">
                    <input type="text" class="form-control" id="txtID" placeholder="아이디">
                </div>
                <div class='col-third'>
                    <button class="blueBtn" id="btn-dupCheck2">중복확인</button>
                </div>
            </div>
            
            <div class="result-wrapper font-brown"></div>
            
            <div>
                <hr>
                <button class="blueBtn" id="btn-use">사용하기</button>
            </div>
        </div>
        <%@ include file="../../common/footer.jspf" %>
        
        <!-- Moment Js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
        <!-- Lightpick CSS -->
        <link rel="stylesheet" href="<%=path %>/Vendor/javascript-datepicker-lightpick/css/lightpick.css">
        <!-- Lightpick JS -->
        <script src="<%=path %>/Vendor/javascript-datepicker-lightpick/js/lightpick.js"></script>
        <script src="<%=path %>/Resources/JS/validator.js"></script>
        <script src="<%=path %>/Resources/JS/account.js"></script>
    </body>
</html>