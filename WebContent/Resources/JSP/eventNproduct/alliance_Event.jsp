<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
  <meta charset = "UTF-8">
  <title>Title</title>
    <link rel = "stylesheet" href = "<%=request.getContextPath()%>/Resources/CSS/eventNproduct.css">
    <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
</head>
<body>
    <section class="content">
    <h3>제휴이벤트</h3>
	<c:set var="i" value="${1}"/>
	<c:forEach var="vo" items="${lst }">
   		<c:if test="${i%2 == 1 }">	
			<div class="row clearfix product-row">
		</c:if>
        	<input type="hidden" value="${vo.eventNum }">
            <div class="col-half">
                <a href="">
                	<div class="col-two-fifth" style="background-image: url('<%=request.getContextPath()%>${vo.eventThumbnail}')"></div>
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
		<c:if test="${i%2 == 0}">	
			</div>
		</c:if>
		<c:set var="i" value="${i+1}"/>
       </c:forEach>
    </section>
     <script src="<%=request.getContextPath()%>/Resources/JS/common.js"></script>
</body>
</html>