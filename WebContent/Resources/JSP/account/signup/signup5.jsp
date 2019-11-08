<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <c:if test="${cnt>0 }">
            <title>회원가입 - 회원가입완료</title>
        </c:if>
        <c:if test="${cnt<=0 }">
            <title>회원가입 - 회원가입실패</title>
        </c:if>
        <link rel="stylesheet" href="../../../CSS/account.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../../common/nav.jspf" %>
        <div class="overlay"></div>
        <section class="content">
            <h3>회원가입</h3>
            <ol class="step">
                <li>STEP1<div>유형선택</div></li>
                <li>STEP2<div>약관동의</div></li>
                <li>STEP3<div>본인인증</div></li>
                <li>STEP4<div>회원정보입력</div></li>
                
                <c:if test="${cnt>0 }">
                <li class="on">STEP5<div>가입완료</div></li>
            </ol>
            <div class="welcome-box">
                    <p>회원가입 완료</p>
                    <p>정상적으로 회원가입을 마쳤습니다.<br><span>앞으로 다양한 혜택을 누리실 수 있도록 노력하겠습니다.<br>감사합니다.</span></p>
                </c:if>
                
                <c:if test="${cnt<=0 }">
                <li class="on">STEP5<div>가입실패</div></li>
            </ol>
            <div class="welcome-box">
                    <p>회원가입 실패</p>
                    <p>회원가입에 실패하였습니다.<br><span>같은 오류가 반복되면 <span class="font-brown">1577-9922</span>로 연락주십시오.<br>이용에 불편을 드려 죄송합니다.</span></p>
                </c:if>
                <a href="<%=path %>/"><input type="button" class="blueBtn" value="홈으로 이동"></a>
            </div>
        </section>
        <%@ include file="../../common/footer.jspf" %>
        <script src="<%=path %>/Resources/JS/common.js"></script>
    </body>
</html>