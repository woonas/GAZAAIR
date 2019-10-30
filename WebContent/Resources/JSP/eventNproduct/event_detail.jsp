<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <option value="/2">2</option>
            <option value="/3">3</option>
            <option value="/4">4</option>
            <option value="/5">5</option>
            <option value="/6">6</option>
            <option value="/7">7</option>
        </select>
        <br><br>
        <div class="event-title-wrapper">
            <input type="button" class="blueBtn" value="목록가기" id="Tolist">
            <p class="event-title">
                아시아나어쩌고저쩌고
            </p>
        </div>
        <br>
        <img src="../../IMG/event/eve1_a.png" alt="">
    </section>
    
    <script src="../../JS/common.js"></script>
</body>
</html>