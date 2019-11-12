<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset = "UTF-8">
    <title>제휴이벤트</title>
    <link rel = "stylesheet" href = "../../CSS/eventNpackage.css">
    <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
</head>
<body>
    <%@ include file="../common/nav.jspf" %>
    <section class="content">
    <h3>제휴이벤트</h3>
	<c:set var="i" value="${1}"/>
	<c:forEach var="vo" items="${lst }">
   		<c:if test="${i%2 == 1 }">	
			<div class="row clearfix product-row">
		</c:if>
        	<input type="hidden" value="${vo.eventNum }">
            <div class="col-half">
                <a href="<%=request.getContextPath()%>/Resources/JSP/eventNpackage/event_detail.do?eventNum=${vo.eventNum}">
                	<div class="col-two-fifth" style="background-image: url('<%=request.getContextPath()%>${vo.eventThumbnail}')"></div>
                </a>
                <div class="col-three-fifth product-detail">
                    <a href="<%=request.getContextPath()%>/Resources/JSP/eventNpackage/event_detail.do?eventNum=${vo.eventNum}"><p>${vo.eventName }</p></a>
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
    <%@ include file="../common/footer.jspf" %>
</body>
</html>