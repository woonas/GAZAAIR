<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
 
    <link rel="stylesheet" href="../../CSS/layout.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/main.css" type="text/css"/>
   <script>window.onbeforeunload=() => window.scrollTo(0, 0)</script>
    <style>
        .best-product .tab-menu1 li.on:before {
            width: 1em;
            height: 0.5em;
            margin-left: -30px;
            margin-top: 20px;
        }
        
        .best-product .tab-menu1 li { background-color: #fff; }
        
        .tab-content-container { margin-top: 70px; }
        .product-wrapper { 
            height: 400px; 
            overflow: hidden; 
            margin-bottom: 50px;
            display: flex;
        }
        .product-wrapper>div { height: 100%; }
        .change-order>.product-info-wrapper { order: -1; }
        .img-wrapper>img { width: 100%;}
        .product-info-wrapper { 
            background-color: rgba(255, 235, 205, 0.3);
            padding: 60px 30px 20px; 
        }
        .product-info-wrapper>p:first-of-type {
            font-size: 300%;
            color: #bbb;
            margin-bottom: 20px;
            font-weight: 100;
        }
        .product-info-wrapper>p:nth-of-type(2) {
            font-size: 170%;
            margin-bottom: 20px;
        }
        .product-info-wrapper>p:nth-of-type(3) {
            line-height: 24px;
            margin-bottom: 30px;
        }
        
        .btn-booking {
            border-radius: 0px;
            font-size: 85%;
            margin: 0 6px;
            padding: 12px 46px 12px 46px;
        }
        
        .tab-menu1 { z-index: 200; }
        .tab-content-container {
            animation: fadeInDown 1.5s;
        }
        @keyframes fadeInDown {
            from { opacity:0.2; transform: translatey(-30px); }
            to { opacity:1; transform: translatey(0); }
        }
    </style>
</head>
<body>
<%@ include file="../nav.jspf" %>
   <section class="content best-product">
   <h3>추천상품</h3>
       <div class="tab-menu1">
           <ul class="clearfix">
               <li class="col-fourth on" id='tab-1'><a href="#none">한국</a></li>
               <li class="col-fourth" id='tab-2'><a href="#none">아시아</a></li>
               <li class="col-fourth" id='tab-3'><a href="#none">유럽</a></li>
               <li class="col-fourth" id='tab-4'><a href="#none">미주</a></li>
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
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                    <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
           
           <div id="tab-1-product-2" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/pohang.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>02</p>
                   <p>포항</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
           
           <div id="tab-1-product-3" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/yeosu.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>03</p>
                   <p>여수</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
           
           <div id="tab-1-product-4" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/daegu.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>04</p>
                   <p>대구</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
           
           <div id="tab-1-product-5" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/ulsan.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>05</p>
                   <p>울산</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
       </div>
       
       <div id="tab-2-container" class="tab-content-container hidden">
           <div id="tab-2-product-1" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/hongkong.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>01</p>
                   <p>홍콩</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-2-product-2" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/cebu.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>02</p>
                   <p>세부</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-2-product-3" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/danang.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>03</p>
                   <p>다낭</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-2-product-4" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/guilin.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>04</p>
                   <p>구이린</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-2-product-5" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/hanoi.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>05</p>
                   <p>하노이</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
       </div>

      
       <div id="tab-3-container" class="tab-content-container hidden">
           <div id="tab-3-product-1" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/budapest.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>01</p>
                   <p>부다페스트</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-3-product-2" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/firenze.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>02</p>
                   <p>피렌체</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-3-product-3" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/london.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>03</p>
                   <p>런던</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-3-product-4" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/praha.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>04</p>
                   <p>프라하</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-3-product-5" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/vladivostok1.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>05</p>
                   <p>블라디보스톡</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
       </div>

      
       <div id="tab-4-container" class="tab-content-container hidden">
           <div id="tab-4-product-1" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/guam.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>01</p>
                   <p>괌</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-4-product-2" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/newyork.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>02</p>
                   <p>뉴욕</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-4-product-3" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/saipan.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>03</p>
                   <p>사이판</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-4-product-4" class="row product-wrapper change-order">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/santamonica.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>04</p>
                   <p>로스앤젤레스</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>

           <div id="tab-4-product-5" class="row product-wrapper">
               <div class="col-three-fourth img-wrapper">
                   <img src="../../IMG/new_product_img/grandcanyon.jpg">
               </div>
               <div class="col-fourth product-info-wrapper">
                   <p>05</p>
                   <p>그랜드캐니언</p>
                   <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요!</p>
                   <a href="#"><button class="btn-booking blueBtn">예약하기</button></a>
               </div>
           </div>
       </div>
       
   </section>

    <script src="../../JS/common.js"></script>
    
    <script>
        tabEvent('.tab-menu1');
    </script>
    <%@ include file="../footer.jspf" %>
</body>
</html>