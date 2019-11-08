<%--
  Created by IntelliJ IDEA.
  User: gyzz
  Date: 11/8/19
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>업그레이드 스탠바이</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content">
            <h3>업그레이드 스탠바이</h3>
            <table class="table-list">
                <col-group>
                    <col style="width: 33.33%; height: 280px; padding: 20px; border: 1px solid #eee !important">
                    <col style="width: 33.33%; height: 280px; padding: 20px; border: 1px solid #eee !important">
                    <col style="height: 280px; padding: 20px; border: 1px solid #eee !important">
                </col-group>
                <tbody>
                    <tr>
                        <td class="text-align-center">
                            <div class="number-wrapper">01</div>
                            <div style="height: 100px; width: 90px; margin: 50px auto 10px; background: url(../../IMG/information/icoset_m_ugiu.png) no-repeat 0 0; clear: both;"></div>
                            <div style="font-size: 110%">서비스 OPEN</div>
                            <div class="font-brown">출발 96시간 전 ~ 48시간 전</div>
                            <div style="margin: 10px 0; font-size: 90%; color: #777;">항공편 예약상황에 따라 일부 항공편에 한정하여 적용됩니다.</div>
                        </td>
                        <td class="text-align-center">
                            <div class="number-wrapper">02</div>
                            <div style="height: 100px; width: 90px; margin: 50px auto 10px; background: url(../../IMG/information/icoset_m_ugiu.png) no-repeat -81px 0; clear: both;"></div>
                            <div style="font-size: 110%">결제 및 대기</div>
                            <div class="font-brown">서비스 OPEN ~ 출발 24시간</div>
                            <div style="margin: 10px 0; font-size: 90%; color: #777;">결제가 완료되면 자동으로 업그레이드 대기가 접수됩니다. 결제 접수는 예약상황에 따라 선착순 마감됩니다.</div>
                        </td>
                        <td class="text-align-center">
                            <div class="number-wrapper">03</div>
                            <div style="height: 100px; width: 90px; margin: 50px auto 10px; background: url(../../IMG/information/icoset_m_ugiu.png) no-repeat -162px 0; clear: both;"></div>
                            <div style="font-size: 110%">대기 결과 확인</div>
                            <div class="font-brown">출발 3시간 전</div>
                            <div style="margin: 10px 0; font-size: 90%; color: #777;">홈페이지/모바일을 통해 대기 결과를 확인하실 수 있습니다.</div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>
        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/information.js"></script>
    </body>
</html>
