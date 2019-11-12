<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>베스트상품</title>
    <link rel="stylesheet" href="../../CSS/eventNpackage.css">
	<script>window.onbeforeunload=() => window.scrollTo(0, 0)</script>
</head>
<body>
    <%@ include file="../common/nav.jspf" %>
   <section class="content best-product">
   <h3>베스트상품</h3>
       <div class="tab-menu1">
           <ul class="clearfix">
               <li class="col-half on" id='tab-1'><a href="#none" onclick="return false;">예매율 TOP5</a></li>
               <li class="col-half" id='tab-2'><a href="#none" onclick="return false;">할인율 TOP5</a></li>
           </ul>
       </div>
      <c:forEach var="j" begin="${1}" end="${2}" step="${1}"> 
      <c:set var="i" value="${1}" />
       <c:if test="${j == 1 }">
       		<div id="tab-${j }-container" class="tab-content-container  ">
       		<c:set var="list" value="${lst }"/>
       </c:if>
       <c:if test="${j != 1 }">
       		 <div id="tab-${j }-container" class="tab-content-container   hidden">
       		<c:set var="list" value="${saleList }"/>
       </c:if>
       <c:forEach var="v" items="${list }">
       <c:if test="${i%2 ==1 }">
           <div id="tab-${j}-product-${i}" class="row product-wrapper">
       </c:if>
       <c:if test="${i%2 ==0 }">
           <div id="tab-${j}-product-${i}" class="row product-wrapper change-order">
       </c:if>
            <div class="col-three-fourth img-wrapper">
                <img src="<%=request.getContextPath()%>${v.cityImg}">
            </div>
            <div class="col-fourth product-info-wrapper">
                <p>0${i }</p>
                <p>${v.city }</p>
                <p>GAZA AIR만의<br/>특별한 혜택!<br/>지금바로 만나보세요</p>
                <a href="<%=request.getContextPath()%>/Resources/JSP/flight/booking/booking1.do?city=${v.city}&iata=${v.IATA}"><button class="btn-booking blueBtn">예약하기</button></a>
            </div>
           </div>
           <c:set var="i" value="${i+1 }"/>
           </c:forEach>
       </div>
      </c:forEach>
   </section>
    <%@ include file="../common/footer.jspf" %>
    
    <script>
        tabEvent('.tab-menu1');
    </script>
</body>
</html>