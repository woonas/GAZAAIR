<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>비밀번호 찾기</title>
        <link rel="stylesheet" href="../../../../Vendor/bootstrap/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="../../../CSS/account.css">
        <!-- Font Awesome CDN -->
        <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="../../../../Vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
    <%@ include file="../../common/nav.jspf" %>
        <div class="overlay"></div>
        <section class="content">
            <h3>비밀번호 찾기</h3>
            <ul class="list-type2">
                <li>회원님의 개인정보 보호 및 정확한 회원정보 확인을 위하여 본인 인증 후 비밀번호를 재 설정 하시거나, 이메일 인증 후 임시 비밀번호를 발송해드리고 있습니다.</li>
            </ul>

            <div class="tab-menu1">
                <ul class="clearfix">
                    <li class="col-half on" id='tab-1'><a href="#none">이메일로 임시 비밀번호 받기</a></li>
                    <li class="col-half" id='tab-2'><a href="#none">본인 인증을 통한 비밀번호 재설정</a></li>
                </ul>
            </div>

            <div id="tab-1-container">
            <form method="post" id="pwFindFrm">
            <p>* 회원가입 시 등록한 이메일 주소를 입력해주시기 바랍니다. 등록된 회원정보와 입력된 내용이 일치할 경우, 등록된 이메일 주소로 임시 비밀번호를 보내 드립니다.</p>
                <div class="table-form">
                   
                    <div class="row clearfix">
                        <div class="table-row-title">
                            아이디
                        </div>
                        <div class="two-in-row">
                            <input type="text" name="memberId" placeholder="아이디 입력" title="아이디 입력">
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="table-row-title">
                            성
                        </div>
                        <div class="two-in-row">
                            <input type="text" name="firstName" placeholder="한글 성 입력 (예:홍)">
                        </div>
                        <div class="table-row-title">
                            이름
                        </div>
                        <div class="two-in-row">
                            <input type="text" name="lastName" placeholder="한글 이름 입력 (예:길동)">
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
                            이메일
                        </div>
                        <div>
                            <input type="text" id="emailAddress" name="emailAddress" placeholder="이메일 입력" title="이메일 아이디 입력" style="width:200px;"> @ &nbsp;
                            <select id="emailDomain" class="selectNtext" name="emailDomain" title="이메일 도메인 선택" style="width:180px;">
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
                </div>

                <div class="row clearfix">
                    <input type="button" id="pwFind" class="blueBtn confirm" value="확인">
                    <div id="result">
                    </div>
                </div>
                </form>
            </div>

            <div id="tab-2-container" class="hidden">
                <div class="mem_input_wrap">
                    <label for="txtUserID">아이디 입력</label>
                    <input type="text" id="txtUserID" name="txtUserID" placeholder="아이디 입력" title="아이디 입력" style="width:468px;"> 
                </div>
               
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

            </div>

            <div class="row">
                <div class="heading">
                    <h2><b>아이디/비밀번호 찾기 자주 찾는 질문</b></h2>
                </div>
            </div>
            
            <div class="row">
                <div class="panel-group" id="accordian">
                    <div class="panel panel-default">
                        <div class="panel-heading" id="heading-1">
                            <h4 class="panel-title">
                                <a href="#collapse-1" class="collapsed" data-toggle="collapse" data-parent="#accordian">
                                    아이디/회원번호/비밀번호가 기억나지 않습니다.
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-1" class="panel-collapse collapse" aria-labelledby="heading-1">
                            <div class="panel-body">
                                <div>
                                    <ol>
                                        <li>아이디 찾기 : 인증기관을 통해 본인 인증 후 확인하시거나 회원님의 성명, 생년월일, 회원가입 시 등록한 이메일 주소를 입력하시면 등록된 이메일 주소로 아이디를 발송해 드립니다.</li>
                                        <li>회원번호 찾기 : 회원님의 성명, 생년월일, 회원가입 시 등록한 이메일 주소를 입력하시거나 성명, 생년월일, 회원가입 시 등록한 휴대전화 번호를 입력하시면 확인하실 수 있습니다.</li>
                                        <li>비밀번호 찾기 : 인증기관을 통해 본인 인증 후 회원님의 비밀번호를 재설정 하시거나 회원님의 아이디, 성명, 생년월일, 회원가입 시 등록한 이메일 주소를 입력하시면 등록된 이메일 주소로 임시 비밀번호를 발송해 드립니다.</li>
                                    </ol><br>
                                    <span>[외국인의 경우]</span>
                                    <ol>
                                        <li>아이디 찾기 : 해외 국적자로 선택하셔서 회원님의 성명, 생년월일, 회원가입 시 등록한 이메일 주소를 입력하시면 등록된 이메일 주소로 아이디를 발송해 드립니다.</li>
                                        <li>회원번호 찾기 : 회원님의 성명, 생년월일, 회원가입 시 등록한 이메일 주소를 입력하시면 확인하실 수 있습니다.</li>
                                        <li>비밀번호 찾기 : 해외 국적자로 선택하셔서 회원님의 아이디, 성명, 생년월일, 회원가입 시 등록한 이메일 주소를 입력하시면 등록된 이메일 주소로 임시 비밀번호를 발송해 드립니다.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" id="heading-2">
                            <h4 class="panel-title">
                                <a href="#collapse-2" class="collapsed" data-toggle="collapse" data-parent="#accordian">
                                    회원가입 시 등록한 이메일 주소가 기억나지 않아요. 이메일 주소를 변경하고 싶습니다.
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-2" class="panel-collapse collapse" aria-labelledby="heading-2">
                            <div class="panel-body">
                                <div>
                                    이메일 주소 변경을 원하실 경우 회원님의 신분증(사진이 부착된 주민등록증, 운전면허증, 여권 등)을 회원번호, 연락처, 수신 가능한 이메일, 요청사항을 기재(이메일 주소 변경과 임시 비밀번호 발송)하여 [아시아나클럽 서비스센터]로 FAX를 보내주시기 바랍니다.<br><br>
                                    ※ 주민등록번호 뒷자리는 보이지 않도록 마스킹(가려서) 처리 후 전송
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="panel panel-default">
                        <div class="panel-heading" id="heading-3">
                            <h4 class="panel-title">
                                <a href="#collapse-3" class="collapsed" data-toggle="collapse" data-parent="#accordian">
                                    아이디를 변경하고 싶습니다.
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-3" class="panel-collapse collapse" aria-labelledby="heading-3">
                            <div class="panel-body">
                                <div>
                                    인터넷 회원으로 가입하셨을 때 등록하신 아이디는 다른 아이디로 변경하실 수 없습니다.아이디 변경을 원하실 경우, 번거로우시더라도 인터넷 회원 탈퇴를 하신 후 재가입하시기 바랍니다.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" id="heading-4">
                            <h4 class="panel-title">
                                <a href="#collapse-4" class="collapsed" data-toggle="collapse" data-parent="#accordian">
                                    이메일로 아이디 받기/임시 비밀번호 받기를 신청했는데, 메일이 오지 않습니다.
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-4" class="panel-collapse collapse" aria-labelledby="heading-4">
                            <div class="panel-body">
                                <div>
                                    아이디/임시 비밀번호 이메일이 이미 발송 되었으나 수신여부는 회원님의 이메일 계정의 상황에 따라 다릅니다. 이메일 수신이 안되시는 경우는 회사의 스팸 정책으로 이메일 수신이 차단되거나 스팸 편지함으로 이메일을 받게 되실 수 있습니다. 이메일 수신함의 스팸 편지함도 확인해 보시기 바랍니다. 등록된 이메일로 받기가 어려우신 경우 이메일 주소 변경 요청을 하시거나, 인증기관을 통해 본인 인증 후 확인 또는 비밀번호를 재설정 하시기 바랍니다.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" id="heading-5">
                            <h4 class="panel-title">
                                <a href="#collapse-5" class="collapsed" data-toggle="collapse" data-parent="#accordian">
                                    이메일로 아이디 받기/임시 비밀번호 받기를 신청했는데, 등록된 고객의 정보와 일치하지 않는다고 합니다.
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-5" class="panel-collapse collapse" aria-labelledby="heading-5">
                            <div class="panel-body">
                                <div>
                                    입력하신 이메일과 회원정보의 이메일이 다른 경우입니다. 회원가입 시 등록한 이메일 주소가 기억나지 않으셔서 변경을 원하실 경우 회원님의 신분증(사진이 부착된 주민등록증, 운전면허증, 여권 등)을 회원번호, 연락처, 수신 가능한 이메일, 요청사항을 기재(이메일 주소 변경과 임시 비밀번호 발송)하여 [아시아나클럽 서비스센터]로 FAX를 보내주시기 바랍니다.<br><br>
                                    ※ 주민등록번호 뒷자리는 보이지 않도록 마스킹(가려서) 처리 후 전송
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" id="heading-6">
                            <h4 class="panel-title">
                                <a href="#collapse-6" class="collapsed" data-toggle="collapse" data-parent="#accordian">
                                    이메일로 임시 비밀번호를 받았는데, 로그인이 되지 않습니다.
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-6" class="panel-collapse collapse" aria-labelledby="heading-6">
                            <div class="panel-body">
                                <div>
                                    임시 비밀번호는 숫자와 영문자(소문자로) 발송해 드리므로, 대/소문자를 구분하여 입력하시기 바랍니다. 임시 비밀번호를 2회 이상 발송 받으신 경우, 최근 수신한 임시 비밀번호로 로그인하셔야합니다.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <ul class="list-type1">
                <li class="list-inside-title">유의사항</li>
                <li>아이디/비밀번호 찾기가 어려우신 분은 아래의 본인 확인 정보 및 서류를 보내주시면 임시 비밀번호를 발송하여 드립니다.</li>
                <ul class="list-type3">
                    <li>신분증(사진이 부착된 주민등록증, 운전면허증, 여권 등) <br><span class="font-red">* 주민번호 뒷 7자리는 보이지 않도록 마스킹(가려서) 처리 후 전송</span></li>
                    <li>연락처(휴대전화번호 등)</li>
                    <li>회원번호</li>
                    <li>수신 가능한 이메일</li>
                    <li>요청사항 예) 이메일 변경과 임시비밀번호 발송 &nbsp;&nbsp;
                        <br>
                        <span class="text-hint"><span id="fax-post-info">FAX/우편접수 안내 &nbsp;<i class="fas fa-exclamation"></i></span></span>
                    </li>
                </ul>
            </ul>


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
                    <input type="button" class="blueBtn full-line" value="확인" id="authorizeBtn">
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
                <input type="text" >
                <input type="submit" value="">
                <input type="text">
                <input type="text">
                <input type="button" value="닫기" class='btn-close' id="authorizeBtn2">
                <div class="success">
                    <h2>인증이 완료 되었습니다!</h2>
                    <p>회원가입을 계속 진행해주세요.</p>
                </div>
            </div>
        </section>
        <%@ include file="../../common/footer.jspf" %>
        <!-- Recaptcha -->
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script src="../../../JS/account.js"></script>
    </body>
</html>