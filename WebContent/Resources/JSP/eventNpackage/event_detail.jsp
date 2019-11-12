<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>제휴이벤트 - ${vo.eventName }</title>
    <link rel="stylesheet" href="../../CSS/eventNpackage.css">
    <script>window.onbeforeunload=() => window.scrollTo(0, 0)</script>
</head>
<body>
    <%@ include file="../common/nav.jspf" %>
	<section class="content">
        <h3>이벤트</h3>
        <select name="" id="event-select" onchange="if (this.value) location.href=this.value">
            <option value="">다른 이벤트 보기</option>
            <c:forEach var="v" items="${lst }">
            	<option value="<%=request.getContextPath()%>/Resources/JSP/eventNpackage/event_detail.do?eventNum=${v.eventNum}">${v.eventName }</option>
           </c:forEach>
        </select>
        <br><br>
        <div class="event-title-wrapper">
            <a href="<%=request.getContextPath()%>/Resources/JSP/eventNpackage/event_list.do"><input type="button" class="blueBtn" value="목록가기" id="Tolist"></a>
            <p class="event-title">
               ${vo.eventName }
            </p>
        </div>
        <br>
        <img src="<%=request.getContextPath()%>${vo.eventImg }" alt="" style="width:100%">
    </section>
    <%@ include file="../common/footer.jspf" %>
</body>
</html>