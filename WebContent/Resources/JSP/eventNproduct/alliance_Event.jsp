<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
  <meta charset = "UTF-8">
  <title>Title</title>
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/Resources/CSS/layout.css">
    <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    <style>
        .product-row { margin: 20px auto; }
        .product-row>div { 
        	width: calc(50% - 5px) !important;
        	border: 1px solid transparent;
        }
        .product-row>div:hover { border: 1px solid #aaa; }
        .product-row>div:hover>div:first-of-type { opacity: 0.8; }
        .product-row>div:first-of-type { margin-right: 5px; }
        .product-row>div:nth-of-type(2) { margin-left: 5px; }
        .col-half div:first-of-type { 
        	width: 240px;
        	height: 200px;
        	background-image: url("../../IMG/event/eve8_.jpg");
        	background-size: cover;
        	background-position: center;
        	overflow:hidden;
        }
        
        .seperatorLogo {
            width: 80%;
            margin: 5px auto 10px;
            border: 1px solid #aaa;
            border-top: 0;
        }
        .product-detail { 
        	height:200px;
        	background-color: rgba(250,250,250,0.9); 
        }
        .product-detail>a{ text-decoration: none; }
        .product-detail>a>p {
            margin-top: 25px;
            margin-left: 10%;
            font-size: 150%;
            color: #555;
        }
        
        .product-row>div>div:nth-of-type(2) {
            width: 55%;
            height: 200px;
        }
        
        .list-type1 {
            padding-top: 10px;
            border: none;
        }
        
        .list-type1>li {
            margin-left: 5%;
            margin-bottom: 8px;
            list-style-type: none;
            color: #555;
        }
        
    </style>
</head>
<body>
    <section class="content">
    <h3>제휴이벤트</h3>
	<c:set var="i" value="${1}"/>
	${fn:length(lst)} 
	<c:forEach var="vo" items="${lst }">
   		<c:if test="${i%2 == 1 }">	
			<div class="row clearfix product-row">
		</c:if>
        <div class="row clearfix product-row">
        	<input type="hidden" value="${vo.eventNum }">
            <div class="col-half">
                <a href="">
                	<div class="col-two-fifth" style="background-image: url('<%=request.getContextPath()%>${vo.eventThumnail}')"></div>
                </a>
                <div class="col-three-fifth product-detail">
                    <a href=""><p>${vo.eventName }</p></a>
                    <hr class="seperatorLogo">
                    <ul class="list-type1">
                       <c:forTokens var="content" items="${vo.eventContent }" delims="!@#">
                       		<li>${content }</li>
                       </c:forTokens>
                    </ul>
                </div>
            </div>
        <c:if test="${i%2 == 1}">	
			<c:set var="i" value="${i+1}"/>
		</c:if>
		<c:if test="${i%2 == 0}">	
			<c:set var="i" value="${i+1}"/>
			</div>
		</c:if>
       </c:forEach>
    </section>
     <script src="<%=request.getContextPath()%>/Resources/JS/common.js"></script>
</body>
</html>