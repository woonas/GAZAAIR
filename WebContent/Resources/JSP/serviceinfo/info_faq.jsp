<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>자주 찾는 질문</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
        <style>
            .info-list { margin-right: 50px; }
            
            .faq-title {
                font-size: 150%;
                font-weight: 600;
                margin-bottom: 30px;
            }
            
            .info-section { margin-bottom: 30px; }
            
            .info-section>div:first-child {
                padding: 10px;
                border-radius: 5px 5px 0 0;
                font-size: 120%;
                color: #fff;
            }
            .info-section>div:last-child {
                padding: 30px;
                border: 1px solid #67a;
            }
            
            .info-section>div:last-child>ul>li {
                float: left;
                margin: 10px 20px;
                list-style-type: none;
            }
            .info-section>div:last-child>ul>li:after {
                content: "";
                position: absolute;
                width: 1px;
                height: 18px;
                background-color: #ddd;
                margin-left: 17px;
                margin-top: 4px;
            }
            .no-compartment:after,
            .info-section>div:last-child>ul>li:last-child:after { background-color: #fff !important; }

            .info-section>div:last-child>ul>li>a { color: #555; }
            .info-section>div:last-child>ul>li>a:hover { font-weight: 700; text-decoration: underline; }

            .accordion {
                border-top: 6px solid #67a;
                line-height: 1.6;
            }

            .accordion-item { border-bottom: 1px solid #67a; }
            
            .accordion-title {
                padding: 15px 15px 15px 40px;
                display: block;
                position: relative;
            }
            .is-expanded .accordion-title { font-weight: 700; }
            
            .accordion-title:before {
                font-family: FontAwesome;
                content: "\f055";
                font-size: 100%;
                position: absolute;
                left: 15px;
                top: 16px;
                color: #67a;
                transition: all 1s;
            }
            .is-expanded .accordion-title:before { content: "\f056"; }
            
            .accordion-title:hover,
            .accordion-title:focus {
                cursor: pointer;
                outline: none;
                font-weight: 700;
            }
            
            .accordion-content-inner {
                padding: 0 40px 10px 40px;
                font-size: 90%;
            }
            
            .accordion-content {
                height: 0;
                overflow: hidden;
            }
            .is-expanded .accordion-content { height: fit-content; }
            
            .customer-center {
                margin-top: 40px;
                height: 200px;
                padding: 30px;
                border: 1px solid #67a;
                background: url(../../IMG/icon/ico_customer_main02.png) no-repeat right 22px bottom 25px;
            }
            .customer-center>p { font-size: 150%; }
            .customer-center>input[type=button] {
                padding: 10px 20px;
                border-radius: 3px;
                margin-top: 15px;
                border-color: #67a !important;
            }
        </style>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <section class="content">
            <h3>자주 찾는 질문</h3>
            <div class="row clearfix">
                <div class="col-seven-tenth">
                    <p class="faq-title">자주 찾는 안내사항</p>
                    <div class="info-list">
                        <div class="info-section">
                            <div class="text-align-center bg-blue5 ">아시아나클럽</div>
                            <div>
                                <ul class="clearfix">
                                    <li><a href="#" onclick="return false;">11111</a></li>
                                    <li><a href="#" onclick="return false;">111111111111</a></li>
                                    <li><a href="#" onclick="return false;">111222222211</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                    <li class="no-compartment"><a href="#" onclick="return false;">1114444411</a></li>
                                    <li><a href="#" onclick="return false;">115555111</a></li>
                                    <li><a href="#" onclick="return false;">1166666111</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="info-section">
                            <div class="text-align-center bg-blue5 ">아시아나클럽</div>
                            <div>
                                <ul class="clearfix">
                                    <li><a href="#" onclick="return false;">11111</a></li>
                                    <li><a href="#" onclick="return false;">111111111111</a></li>
                                    <li><a href="#" onclick="return false;">111222222211</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                    <li class="no-compartment"><a href="#" onclick="return false;">1114444411</a></li>
                                    <li><a href="#" onclick="return false;">115555111</a></li>
                                    <li><a href="#" onclick="return false;">1166666111</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="info-section">
                            <div class="text-align-center bg-blue5 ">아시아나클럽</div>
                            <div>
                                <ul class="clearfix">
                                    <li><a href="#" onclick="return false;">11111</a></li>
                                    <li><a href="#" onclick="return false;">111111111111</a></li>
                                    <li><a href="#" onclick="return false;">111222222211</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                    <li class="no-compartment"><a href="#" onclick="return false;">1114444411</a></li>
                                    <li><a href="#" onclick="return false;">115555111</a></li>
                                    <li><a href="#" onclick="return false;">1166666111</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="info-section">
                            <div class="text-align-center bg-blue5 ">아시아나클럽</div>
                            <div>
                                <ul class="clearfix">
                                    <li><a href="#" onclick="return false;">11111</a></li>
                                    <li><a href="#" onclick="return false;">111111111111</a></li>
                                    <li><a href="#" onclick="return false;">111222222211</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                    <li class="no-compartment"><a href="#" onclick="return false;">1114444411</a></li>
                                    <li><a href="#" onclick="return false;">115555111</a></li>
                                    <li><a href="#" onclick="return false;">1166666111</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="info-section">
                            <div class="text-align-center bg-blue5 ">아시아나클럽</div>
                            <div>
                                <ul class="clearfix">
                                    <li><a href="#" onclick="return false;">11111</a></li>
                                    <li><a href="#" onclick="return false;">111111111111</a></li>
                                    <li><a href="#" onclick="return false;">111222222211</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                    <li class="no-compartment"><a href="#" onclick="return false;">1114444411</a></li>
                                    <li><a href="#" onclick="return false;">115555111</a></li>
                                    <li><a href="#" onclick="return false;">1166666111</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="info-section">
                            <div class="text-align-center bg-blue5 ">아시아나클럽</div>
                            <div>
                                <ul class="clearfix">
                                    <li><a href="#" onclick="return false;">11111</a></li>
                                    <li><a href="#" onclick="return false;">111111111111</a></li>
                                    <li><a href="#" onclick="return false;">111222222211</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                    <li class="no-compartment"><a href="#" onclick="return false;">1114444411</a></li>
                                    <li><a href="#" onclick="return false;">115555111</a></li>
                                    <li><a href="#" onclick="return false;">1166666111</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="info-section">
                            <div class="text-align-center bg-blue5 ">아시아나클럽</div>
                            <div>
                                <ul class="clearfix">
                                    <li><a href="#" onclick="return false;">11111</a></li>
                                    <li><a href="#" onclick="return false;">111111111111</a></li>
                                    <li><a href="#" onclick="return false;">111222222211</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                    <li class="no-compartment"><a href="#" onclick="return false;">1114444411</a></li>
                                    <li><a href="#" onclick="return false;">115555111</a></li>
                                    <li><a href="#" onclick="return false;">1166666111</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="info-section">
                            <div class="text-align-center bg-blue5 ">아시아나클럽</div>
                            <div>
                                <ul class="clearfix">
                                    <li><a href="#" onclick="return false;">11111</a></li>
                                    <li><a href="#" onclick="return false;">111111111111</a></li>
                                    <li><a href="#" onclick="return false;">111222222211</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                    <li class="no-compartment"><a href="#" onclick="return false;">1114444411</a></li>
                                    <li><a href="#" onclick="return false;">115555111</a></li>
                                    <li><a href="#" onclick="return false;">1166666111</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="info-section">
                            <div class="text-align-center bg-blue5 ">아시아나클럽</div>
                            <div>
                                <ul class="clearfix">
                                    <li><a href="#" onclick="return false;">11111</a></li>
                                    <li><a href="#" onclick="return false;">111111111111</a></li>
                                    <li><a href="#" onclick="return false;">111222222211</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                    <li class="no-compartment"><a href="#" onclick="return false;">1114444411</a></li>
                                    <li><a href="#" onclick="return false;">115555111</a></li>
                                    <li><a href="#" onclick="return false;">1166666111</a></li>
                                    <li><a href="#" onclick="return false;">1133333111</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-three-tenth">
                    <p class="faq-title">BEST 질문</p>
                    <div class="accordion">
                        <div class="accordion-item">
                            <div class="accordion-title">
                                <p>마일리지 사용몰 이용시 마일리지 비밀번호 등록은 어떻게 해야 하나요?</p>
                            </div>
                            <div class="accordion-content">
                                <div class="accordion-content-inner">
                                    마일리지 사용몰 이용 시 고객님의 개인정보 보호를 위하여 마일리지 비밀번호를 사용하고 있습니다.<br>마일리지 비밀번호 등록을 아직 하지 않으신 고객님께서는 로그인 후 "홈>마이 아시아나>회원정보>마일리지 비밀번호 등록/변경"에서 본인 인증 후에 마일리지 비밀번호 등록을 하실 수 있습니다.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <div class="accordion-title">
                                <p>마일리지 사용몰 이용시 마일리지 비밀번호 등록은 어떻게 해야 하나요?</p>
                            </div>
                            <div class="accordion-content">
                                <div class="accordion-content-inner">
                                    마일리지 사용몰 이용 시 고객님의 개인정보 보호를 위하여 마일리지 비밀번호를 사용하고 있습니다.<br>마일리지 비밀번호 등록을 아직 하지 않으신 고객님께서는 로그인 후 "홈>마이 아시아나>회원정보>마일리지 비밀번호 등록/변경"에서 본인 인증 후에 마일리지 비밀번호 등록을 하실 수 있습니다.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <div class="accordion-title">
                                <p>마일리지 사용몰 이용시 마일리지 비밀번호 등록은 어떻게 해야 하나요?</p>
                            </div>
                            <div class="accordion-content">
                                <div class="accordion-content-inner">
                                    마일리지 사용몰 이용 시 고객님의 개인정보 보호를 위하여 마일리지 비밀번호를 사용하고 있습니다.<br>마일리지 비밀번호 등록을 아직 하지 않으신 고객님께서는 로그인 후 "홈>마이 아시아나>회원정보>마일리지 비밀번호 등록/변경"에서 본인 인증 후에 마일리지 비밀번호 등록을 하실 수 있습니다.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <div class="accordion-title">
                                <p>마일리지 사용몰 이용시 마일리지 비밀번호 등록은 어떻게 해야 하나요?</p>
                            </div>
                            <div class="accordion-content">
                                <div class="accordion-content-inner">
                                    마일리지 사용몰 이용 시 고객님의 개인정보 보호를 위하여 마일리지 비밀번호를 사용하고 있습니다.<br>마일리지 비밀번호 등록을 아직 하지 않으신 고객님께서는 로그인 후 "홈>마이 아시아나>회원정보>마일리지 비밀번호 등록/변경"에서 본인 인증 후에 마일리지 비밀번호 등록을 하실 수 있습니다.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <div class="accordion-title">
                                <p>마일리지 사용몰 이용시 마일리지 비밀번호 등록은 어떻게 해야 하나요?</p>
                            </div>
                            <div class="accordion-content">
                                <div class="accordion-content-inner">
                                    마일리지 사용몰 이용 시 고객님의 개인정보 보호를 위하여 마일리지 비밀번호를 사용하고 있습니다.<br>마일리지 비밀번호 등록을 아직 하지 않으신 고객님께서는 로그인 후 "홈>마이 아시아나>회원정보>마일리지 비밀번호 등록/변경"에서 본인 인증 후에 마일리지 비밀번호 등록을 하실 수 있습니다.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <div class="accordion-title">
                                <p>마일리지 사용몰 이용시 마일리지 비밀번호 등록은 어떻게 해야 하나요?</p>
                            </div>
                            <div class="accordion-content">
                                <div class="accordion-content-inner">
                                    마일리지 사용몰 이용 시 고객님의 개인정보 보호를 위하여 마일리지 비밀번호를 사용하고 있습니다.<br>마일리지 비밀번호 등록을 아직 하지 않으신 고객님께서는 로그인 후 "홈>마이 아시아나>회원정보>마일리지 비밀번호 등록/변경"에서 본인 인증 후에 마일리지 비밀번호 등록을 하실 수 있습니다.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <div class="accordion-title">
                                <p>마일리지 사용몰 이용시 마일리지 비밀번호 등록은 어떻게 해야 하나요?</p>
                            </div>
                            <div class="accordion-content">
                                <div class="accordion-content-inner">
                                    마일리지 사용몰 이용 시 고객님의 개인정보 보호를 위하여 마일리지 비밀번호를 사용하고 있습니다.<br>마일리지 비밀번호 등록을 아직 하지 않으신 고객님께서는 로그인 후 "홈>마이 아시아나>회원정보>마일리지 비밀번호 등록/변경"에서 본인 인증 후에 마일리지 비밀번호 등록을 하실 수 있습니다.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <div class="accordion-title">
                                <p>마일리지 사용몰 이용시 마일리지 비밀번호 등록은 어떻게 해야 하나요?</p>
                            </div>
                            <div class="accordion-content">
                                <div class="accordion-content-inner">
                                    마일리지 사용몰 이용 시 고객님의 개인정보 보호를 위하여 마일리지 비밀번호를 사용하고 있습니다.<br>마일리지 비밀번호 등록을 아직 하지 않으신 고객님께서는 로그인 후 "홈>마이 아시아나>회원정보>마일리지 비밀번호 등록/변경"에서 본인 인증 후에 마일리지 비밀번호 등록을 하실 수 있습니다.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <div class="accordion-title">
                                <p>마일리지 사용몰 이용시 마일리지 비밀번호 등록은 어떻게 해야 하나요?</p>
                            </div>
                            <div class="accordion-content">
                                <div class="accordion-content-inner">
                                    마일리지 사용몰 이용 시 고객님의 개인정보 보호를 위하여 마일리지 비밀번호를 사용하고 있습니다.<br>마일리지 비밀번호 등록을 아직 하지 않으신 고객님께서는 로그인 후 "홈>마이 아시아나>회원정보>마일리지 비밀번호 등록/변경"에서 본인 인증 후에 마일리지 비밀번호 등록을 하실 수 있습니다.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <div class="accordion-title">
                                <p>마일리지 사용몰 이용시 마일리지 비밀번호 등록은 어떻게 해야 하나요?</p>
                            </div>
                            <div class="accordion-content">
                                <div class="accordion-content-inner">
                                    마일리지 사용몰 이용 시 고객님의 개인정보 보호를 위하여 마일리지 비밀번호를 사용하고 있습니다.<br>마일리지 비밀번호 등록을 아직 하지 않으신 고객님께서는 로그인 후 "홈>마이 아시아나>회원정보>마일리지 비밀번호 등록/변경"에서 본인 인증 후에 마일리지 비밀번호 등록을 하실 수 있습니다.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <div class="accordion-title">
                                <p>마일리지 사용몰 이용시 마일리지 비밀번호 등록은 어떻게 해야 하나요?</p>
                            </div>
                            <div class="accordion-content">
                                <div class="accordion-content-inner">
                                    마일리지 사용몰 이용 시 고객님의 개인정보 보호를 위하여 마일리지 비밀번호를 사용하고 있습니다.<br>마일리지 비밀번호 등록을 아직 하지 않으신 고객님께서는 로그인 후 "홈>마이 아시아나>회원정보>마일리지 비밀번호 등록/변경"에서 본인 인증 후에 마일리지 비밀번호 등록을 하실 수 있습니다.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="customer-center">
                        <p>찾는 질문이 없다면?</p>
                        <p>고객의 말씀을 남겨주세요.</p>
                        <input type="button" class="whiteBtn" value="고객의 말씀 바로가기">
                    </div>
                </div>
            </div>
        </section>
        <%@ include file="../common/footer.jspf" %>
        <script>
            const questions = document.querySelectorAll('.accordion-title');
            questions.forEach(question => {
               question.addEventListener('click', () =>{
                   const expanded = document.querySelector('.is-expanded');
                   if(question.parentElement.classList.contains('is-expanded')) question.parentElement.classList.remove('is-expanded');
                   else {
                       if(expanded) expanded.classList.remove('is-expanded');
                       question.parentElement.classList.add('is-expanded');
                   }
               });
            });
        </script>
    </body>
</html>
