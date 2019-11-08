<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>회원가입 - 본인인증</title>
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
                <li>STEP1<div>유형선택</div></li>
                <li>STEP2<div>약관동의</div></li>
                <li class="on">STEP3<div>본인인증</div></li>
                <li>STEP4<div>회원정보입력</div></li>
                <li>STEP5<div>가입완료</div></li>
            </ol>

            <div class="row two-boxes">
                <ul class="clearfix">
                    <li class="li-phone">
                        <div>
                            <div class="tab-title">휴대전화 인증</div> 
                            <div class="tab-txt">본인 명의의 휴대전화를 통한 인증</div> 
                            <button type="button" class="blueBtn" title="새 창 열림" id="phone-verification">인증하기</button> 
                        </div>
                    </li>
                    <li class="li-ipin">
                        <div>
                            <div class="tab-title">아이핀 인증 <a href="http://www.vno.co.kr/ipin3/personal/personal01.asp" target="_blank"><i class="fas fa-exclamation"></i></a></div> 
                            <div class="tab-txt">본인 인증기관을 통한 아이핀 인증</div> 
                            <button type="button" class="blueBtn" title="새 창 열림" id="ipin-verification">인증하기</button>
                        </div>
                    </li>
                </ul>
            </div>

            <div class='pop-up-window-type1' id='phone-verification-window'>
                <div class="row clearfix">
                    <p class="window-title">
                        PASS
                        <i class="fas fa-times btn-close"></i>
                    </p>
                </div>
                <div id="phone-verification-content1">
                    <p>이용 중이신 통신사를 선택하세요.</p>
                    <div class="carrier">
                        <div class="row clearfix">
                            <input type="radio" class="hidden" name="carrier" id="skt">
                            <label class="col-half logo-skt" for="skt"></label>
                            <input type="radio" class="hidden" name="carrier" id="ktt">
                            <label class="col-half logo-kt" for="ktt"></label>
                        </div>
                        <div class="row clearfix">
                            <input type="radio" class="hidden" name="carrier" id="lgt">
                            <label class="col-half logo-lgt" for="lgt"></label>
                            <input type="radio" class="hidden" name="carrier" id="savet">
                            <label class="col-half logo-save" for="savet"></label>
                        </div>
                    </div>
                    <p class='savet-title'>알뜰폰이란?</p>
                    <p class="savet-txt">이동통신사(SKT, KT, LGU+)의 통신망을 임대하여 별도의<br>
                        휴대폰 서비스(MVNO)를 제공하는 사업자를 말합니다.</p>
                    
                    <div class="checkboxes-wrapper row">
                        <input type="checkbox" class="checkbox2" id="checkbox1"><label for="checkbox1" class="col-half">개인정보이용동의</label>
                        <input type="checkbox" class="checkbox2" id="checkbox2"><label for="checkbox2" class="col-half">고유식별정보처리동의</label>
                        <input type="checkbox" class="checkbox2" id="checkbox3"><label for="checkbox3" class="col-half">서비스이용약관동의</label>
                        <input type="checkbox" class="checkbox2" id="checkbox4"><label for="checkbox4" class="col-half">통신사이용약관동의</label>
                        <input type="checkbox" class="checkbox2" id="checkbox5"><label for="checkbox5" class="col-half">광고성 정보수신 동의<span class="font-blue4">(선택)</span></label>
                    </div>
                    <input type="button" class="blueBtn full-line" id='window-next' value="다음">    
                </div>

                <div id="phone-verification-content2">
                    <div class="row clearfix verification-type">
                        <input type="radio" class="hidden" name="veri-type" id="qr">
                        <label class="col-third" for="qr">QR인증</label>
                        <input type="radio" class="hidden" name="veri-type" id="simple" checked>
                        <label class="col-third" for="simple">간편인증</label>
                        <input type="radio" class="hidden" name="veri-type" id="sms">
                        <label class="col-third" for="sms">문자인증</label>
                    </div>

                    <div id="pass-info">
                        <div>개인정보 입력없이</div>
                        <div><span class="font-red">3초면 </span>본인확인 완료<i>!</i></div>
                    </div>
                    <div id="simple-tab" class="active">
                        <div class="input-wrapper">
                            <div class="row clearfix">
                                <div class="col-fourth">이름</div>
                                <div class="col-three-fourth">
                                    <input type="text" placeholder="이름">
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-fourth">휴대폰번호</div>
                                <div class="col-three-fourth">
                                    <input type="number" placeholder="-없이 숫자만 입력">
                                </div>
                            </div>
                        </div>

                        <div class="captcha-wrapper">
                            <form action="?" method="POST">
                                <div class="g-recaptcha-outer">
                                    <div class="g-recaptcha-inner">
                                        <div class="g-recaptcha" data-sitekey="6LeLNbsUAAAAAKvfjYVljYr4beUBNr5UUFhBzGUY"></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="hidden" id="sms-tab">
                        <div class="input-wrapper">
                            <div class="row clearfix">
                                <div class="col-fourth">이름</div>
                                <div class="col-three-fourth">
                                    <input type="text" placeholder="이름">
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-fourth">생년월일/성별</div>
                                <div class="col-three-fourth">
                                   <input type="number" placeholder="*  *  *  *  *  *" max="999999" maxlength="6" style="width: 40%;"> ㅡ
                                    <input type="number" placeholder="*" class="one-digit-box" max="9" maxlength="1"><span>●●●●●●</span>
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-fourth">휴대폰번호</div>
                                <div class="col-three-fourth"><input type="number" placeholder="-없이 숫자만 입력"></div>
                            </div>
                        </div>

                        <div class="captcha-wrapper">
                            <form action="?" method="POST">
                                <div class="g-recaptcha-outer">
                                    <div class="g-recaptcha-inner">
                                        <div class="g-recaptcha" data-sitekey="6LeLNbsUAAAAAKvfjYVljYr4beUBNr5UUFhBzGUY"></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    <div class="hidden" id="qr-tab">
                        <div id="pass-qr-info">
                            <span id="pass-qr-img"></span>
                            <div>PASS 실행 후 QR인증 버튼을 눌러</div>
                            <div><span class="font-blue4">QR코드 스캔</span> 또는 <span class="font-blue4">숫자코드</span>를 입력하세요.</div>
                        </div>
                        <div id="qr-wrapper">
                            <div>
                                <span>또는</span>
                                <input type="number" readonly value="1880119">
                            </div>
                            <div>유효시간 &nbsp;&nbsp;<span class="font-red" id="timer">6 : 00</span></div>
                        </div>
                    </div>
                    <form method="post" action="<%=path %>/Resources/JSP/account/signup/signup4.do" id="authorize">
                        <input type="hidden" name="lookingFor" value="idSearch">
                        <input type="hidden" name="memberName" value="$%^&*">
                        <input type="hidden" name="memberPhone" value="#$%^&*">
	                    <input type="hidden" name="agree_personalCollectionOption" value="${agree_personalCollectionOption }"/>
	                    <input type="hidden" name="agree_personalProvide" value="${agree_personalProvide }"/>
	                    <input type="button" class="blueBtn full-line" value="확인" id="authorizeBtn">
                    </form>    
                </div>
                <div class="success">
                    <h2>인증이 완료 되었습니다!</h2>
                    <p>회원가입을 계속 진행해주세요.</p>
                </div>
            </div>

            <div class='authent'>
                <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/puff.svg'>
                <p>인증중...</p>
            </div>
			
            <div class='pop-up-window-type1' id='ipin-verification-window'>
	                <input type="text">
	                <input type="text">
	                <input type="text" id="ipin-test">
	                <input type="button" value="닫기" class='btn-close'>
                    <form method="post" action="<%=path %>/Resources/JSP/account/signup/signup4.do" id="authorize2">
	                    <input type="hidden" name="agree_personalCollectionOption" value="${agree_personalCollectionOption }"/>
	                    <input type="hidden" name="agree_personalProvide" value="${agree_personalProvide }"/>
	                    <input type="button" id="authorizeBtn2">
                    </form>
                <div class="success">
                    <h2>인증이 완료 되었습니다!</h2>
                    <p>회원가입을 계속 진행해주세요.</p>
                </div>
            </div>
                <input type="hidden" id="agree_personalCollectionOption" name="agree_personalCollectionOption" value="${agree_personalCollectionOption }"/>
                <input type="hidden" id="agree_personalProvide" name="agree_personalProvide" value="${agree_personalProvide }"/>
			
            <ul class="list-type2">
                <li> 회원님의 소중한 개인 정보 보호를 위하여 본인 확인이 필요합니다. (본인 인증은 NICE 신용평가정보를 통해 진행됩니다.)</li>
                <li> 타인의 정보 및 주민등록번호를 도용하여 가입하는 경우 3년 이하의 징역 또는 1천 만원 이하의 벌금에 처해지게 됩니다. 반드시 본인의 정보를 이용하여 가입해주시기 바랍니다.</li>
            </ul>
        </section>
        <%@ include file="../../common/footer.jspf" %>
        <!-- partial -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>

        <!-- Recaptcha -->
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        
        <script src="<%=path %>/Resources/JS/account.js"></script>
    </body>
</html>