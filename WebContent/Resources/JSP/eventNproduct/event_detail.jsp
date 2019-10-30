<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>이벤트상세페이지</title> <!--페이지바꿀때 페이지 타이틀도 이벤트이름으로 변경-->
    <link rel="stylesheet" href="../../CSS/eventNproduct.css">
    <script>window.onbeforeunload=() => window.scrollTo(0, 0)</script>
</head>
<body>
	<section class="content">
        <h3>이벤트</h3>
        <select name="" id="event-select" onchange="if (this.value) location.href=this.value">
            <option value="">다른 이벤트 보기</option>
            <c:forEach var="v" items="${lst }">
            	<option value="<%=request.getContextPath()%>/Resources/JSP/eventNproduct/event_detail.do?eventNum=${v.eventNum}">${v.eventName }</option>
           </c:forEach>
            
        </select>
        <br><br>
        <div class="event-title-wrapper">
            <a href="<%=request.getContextPath()%>/Resources/JSP/eventNproduct/event_List.do"><input type="button" class="blueBtn" value="목록가기" id="Tolist"></a>
            <p class="event-title">
               ${vo.eventName }
            </p>
        </div>
        <br>
        <img src="<%=request.getContextPath()%>${vo.eventImg }" alt="">
    </section>
    
    <script src="../../JS/common.js"></script>
</body>
</html>