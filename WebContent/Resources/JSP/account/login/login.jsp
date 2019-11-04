<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>로그인</title>
        <link rel="stylesheet" href="../../../CSS/account.css">

        <!-- Font Awesome CDN -->
        <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <style>
        	.tab-menu1 li.on>a{ padding-left: 10px; }
        </style>
    </head>
    <body>
        <%@ include file="../../common/nav.jspf" %>
        <div class="overlay"></div>
        <section class="content">
           <div class="login-wrapper">
               <div class="bg">
                   <div id="slider-container">
                       <div id="slider">
                           <div id="mask">
                               <ul>
                                   <li id="first" class="firstanimation">
                                       <a href="#">
                                           <img src="<%=path %>/Resources/IMG/login/newyork.jpg"/>
                                       </a>
                                       <div class="tooltip">
                                           <h1>뉴욕, 미국</h1>
                                       </div>
                                   </li>

                                   <li id="second" class="secondanimation">
                                       <a href="#">
                                           <img src="<%=path %>/Resources/IMG/login/seaofstar.jpg"/>
                                       </a>
                                       <div class="tooltip">
                                           <h1>태즈매니아, 호주</h1>
                                       </div>
                                   </li>

                                   <li id="third" class="thirdanimation">
                                       <a href="#">
                                           <img src="<%=path %>/Resources/IMG/login/paris.jpg"/>
                                       </a>
                                       <div class="tooltip">
                                           <h1>파리, 프랑스</h1>
                                       </div>
                                   </li>

                                   <li id="fourth" class="fourthanimation">
                                       <a href="#">
                                           <img src="<%=path %>/Resources/IMG/login/new-zealand-south-island.jpg"/>
                                       </a>
                                       <div class="tooltip">
                                           <h1>남섬, 뉴질랜드</h1>
                                       </div>
                                   </li>

                                   <li id="fifth" class="fifthanimation">
                                       <a href="#">
                                           <img src="<%=path %>/Resources/IMG/login/goldenTemple.jpg"/>
                                       </a>
                                       <div class="tooltip">
                                           <h1>황금사원, 인디아</h1>
                                       </div>
                                   </li>
                               </ul>
                           </div>
                           <div class="progress-bar"></div>
                       </div>
                   </div>
               </div>
               <div class="login-form">

                   <div class="row logo">
                       <a href="<%=path %>/">
                       		<img src = "<%=path %>/Resources/IMG/logo/logo_basic.png" alt = "">
                       </a>
                   </div>

                   <div class="tab-menu1">
                       <ul class="clearfix">
                           <li class="col-half on" id='tab-1'><a href="#none" onclick="return false">로그인</a></li>
                           <li class="col-half" id='tab-2'><a href="#none" onclick="return false">예약조회</a></li>
                       </ul>
                   </div>

                   <div class="form-box">
                       <div id="tab-1-container">
                           <form action="<%=path %>/Resources/JSP/login/loginOk.do" method="post">
                               <div>
                                   <input type="text" name="userid" id="userid" required placeholder="아이디">
                               </div>
                               <div>
                                   <input type="password" name="password" id="password" required placeholder="비밀번호">
                               </div>
                               <div class="remember-wrap">
                                   <input type="checkbox" id="remember" class="checkbox3" checked>
                                   <label for="remember" class="checkbox3">아이디 저장</label>
                               </div>
                               <div class="submit-wrapper">
                                   <input type="submit" value="로그인" class="blueBtn">
                               </div>

                               <div class="login-info-wrap">
                                   <ul class="login-link">
                                       <li>
                                           <a href="<%=path %>/Resources/JSP/account/search/idsearch.do"><span class="col_black">아이디 찾기</span></a>
                                       </li>
                                       <li>
                                           <a href="<%=path %>/Resources/JSP/account/search/pwsearch.do"><span class="col_black">비밀번호 찾기</span></a>
                                       </li>
                                       <li>
                                           <a href="<%=path %>/Resources/JSP/account/signup/signup1.do"><span class="col_black">회원가입</span></a>
                                       </li>
                                   </ul>
                               </div>
                           </form>
                       </div>
                       <div id="tab-2-container" class="hidden">
                           <form action="#" method="post">
                               <div>
                                   <input type="text" name="reservenum" id="reservenum" required placeholder="예약번호 입력 ex) 5XT9UU / 12345678">
                               </div>
                               <div>
                                   <input type="text" name="boardingdate" id="boardingdate" required placeholder="탑승일 선택">
                               </div>
                               <div>
                                   <input type="text" name="departure" id="airportFrom-1" required placeholder="출발지 선택" class="open-airport-picker">
                               </div>
                               <div>
                                   <input type="text" name="destination" id="airportTo-1" required placeholder="도착지 선택" class="open-airport-picker">
                               </div>
                               <div>
                                   <input type="text" name="lastname" id="lastname" required placeholder="예약시 입력한 영문/국문 성(Last Name) 입력">
                               </div>
                               <div class="submit-wrapper">
                                   <input type="submit" value="예약조회" class="blueBtn">
                               </div>
                           </form>
                       </div>
                   </div>
               </div>
           </div>
       </section>
        <%@ include file="../../common/footer.jspf" %>
        <!-- Moment Js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>

        <!-- Lightpick CSS -->
        <link rel="stylesheet" href="<%=path %>/Vendor/javascript-datepicker-lightpick/css/lightpick.css">
        <!-- Lightpick JS -->
        <script src="<%=path %>/Vendor/javascript-datepicker-lightpick/js/lightpick.js"></script>
        <script src="<%=path %>/Resources/JS/common.js"></script>
        <script src="<%=path %>/Resources/JS/airportpicker.js"></script>
        <script src="<%=path %>/Resources/JS/account.js"></script>
       
    </body>
</html>
