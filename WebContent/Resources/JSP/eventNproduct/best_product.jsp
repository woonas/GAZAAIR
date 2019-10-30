<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
 
    <link rel="stylesheet" href="../../CSS/eventNproduct.css">
	<script>window.onbeforeunload=() => window.scrollTo(0, 0)</script>
</head>
<body>
   <section class="content best-product">
   <h3>베스트상품</h3>
       <div class="tab-menu1">
           <ul class="clearfix">
               <li class="col-half on" id='tab-1'><a href="#none">Best TOP5</a></li>
               <li class="col-half" id='tab-2'><a href="#none">Special Price TOP5</a></li>
           </ul>
       </div>  
       
            
       <div id="tab-1-container" class="tab-content-container">
           <div id="tab-1-product-1" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/jeju.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>01</p>
                   <p>제주도</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요</p>
                    <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
           
           <div id="tab-1-product-2" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/hanoi.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>02</p>
                   <p>하노이</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
           
           <div id="tab-1-product-3" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/hongkong.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>03</p>
                   <p>홍콩</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
           
           <div id="tab-1-product-4" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/santamonica.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>04</p>
                   <p>로스앤젤레스</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
           
           <div id="tab-1-product-5" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/palau.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>05</p>
                   <p>팔라우</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
       </div>
       
       <div id="tab-2-container" class="tab-content-container hidden">
           <div id="tab-2-product-1" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/bangkok.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>01</p>
                   <p>방콕</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-2-product-2" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/beijing.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>02</p>
                   <p>베이징</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-2-product-3" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/vladivostok1.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>03</p>
                   <p>블라디보스톡</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-2-product-4" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/ulaanbaatar.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>04</p>
                   <p>울란바토르</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-2-product-5" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/sydney.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>05</p>
                   <p>시드니</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
       </div>

      
       <div id="tab-3-container" class="tab-content-container hidden">
           <div id="tab-3-product-1" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/singapore.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>01</p>
                   <p>이이이이이이</p>
                   <p>아아ㅣㄹ머ㅣㅏ러ㅣㄴㅁ아릦다ㅡ라즤ㅏㅊ다재ㅔ지츼다즈차ㅣㄷ주차누ㅏㅓㅜㅈ덫ㄷ니ㅢㅏ</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-3-product-2" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/shanghai.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>02</p>
                   <p>이이이이이이</p>
                   <p>아아ㅣㄹ머ㅣㅏ러ㅣㄴㅁ아릦다ㅡ라즤ㅏㅊ다재ㅔ지츼다즈차ㅣㄷ주차누ㅏㅓㅜㅈ덫ㄷ니ㅢㅏ</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-3-product-3" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/london.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>03</p>
                   <p>이이이이이이</p>
                   <p>아아ㅣㄹ머ㅣㅏ러ㅣㄴㅁ아릦다ㅡ라즤ㅏㅊ다재ㅔ지츼다즈차ㅣㄷ주차누ㅏㅓㅜㅈ덫ㄷ니ㅢㅏ</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-3-product-4" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/newyork.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>04</p>
                   <p>이이이이이이</p>
                   <p>아아ㅣㄹ머ㅣㅏ러ㅣㄴㅁ아릦다ㅡ라즤ㅏㅊ다재ㅔ지츼다즈차ㅣㄷ주차누ㅏㅓㅜㅈ덫ㄷ니ㅢㅏ</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-3-product-5" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/praha.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>05</p>
                   <p>이이이이이이</p>
                   <p>아아ㅣㄹ머ㅣㅏ러ㅣㄴㅁ아릦다ㅡ라즤ㅏㅊ다재ㅔ지츼다즈차ㅣㄷ주차누ㅏㅓㅜㅈ덫ㄷ니ㅢㅏ</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
       </div>

      
       <div id="tab-4-container" class="tab-content-container hidden">
           <div id="tab-4-product-1" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/saipan.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>01</p>
                   <p>이이이이이이</p>
                   <p>아아ㅣㄹ머ㅣㅏ러ㅣㄴㅁ아릦다ㅡ라즤ㅏㅊ다재ㅔ지츼다즈차ㅣㄷ주차누ㅏㅓㅜㅈ덫ㄷ니ㅢㅏ</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-4-product-2" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/budapest.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>02</p>
                   <p>이이이이이이</p>
                   <p>아아ㅣㄹ머ㅣㅏ러ㅣㄴㅁ아릦다ㅡ라즤ㅏㅊ다재ㅔ지츼다즈차ㅣㄷ주차누ㅏㅓㅜㅈ덫ㄷ니ㅢㅏ</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-4-product-3" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/cebu.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>03</p>
                   <p>이이이이이이</p>
                   <p>아아ㅣㄹ머ㅣㅏ러ㅣㄴㅁ아릦다ㅡ라즤ㅏㅊ다재ㅔ지츼다즈차ㅣㄷ주차누ㅏㅓㅜㅈ덫ㄷ니ㅢㅏ</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-4-product-4" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/danang.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>04</p>
                   <p>이이이이이이</p>
                   <p>아아ㅣㄹ머ㅣㅏ러ㅣㄴㅁ아릦다ㅡ라즤ㅏㅊ다재ㅔ지츼다즈차ㅣㄷ주차누ㅏㅓㅜㅈ덫ㄷ니ㅢㅏ</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-4-product-5" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/firenze.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>05</p>
                   <p>이이이이이이</p>
                   <p>아아ㅣㄹ머ㅣㅏ러ㅣㄴㅁ아릦다ㅡ라즤ㅏㅊ다재ㅔ지츼다즈차ㅣㄷ주차누ㅏㅓㅜㅈ덫ㄷ니ㅢㅏ</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
       </div>
       
   </section>

    <script src="../../JS/common.js"></script>
    
    <script>
        tabEvent('.tab-menu1');
    </script>
</body>
</html>