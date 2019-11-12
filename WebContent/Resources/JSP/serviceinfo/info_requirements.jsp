<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>도움이 필요한 고객</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content">
            <h3>도움이 필요한 고객</h3>
            <p class="section-title">의료 서비스 – 스트레쳐 서비스, 산소 공급 서비스</p>
            
            <table class="table-list">
                <col-group>
                    <col style="width: 28.6%">
                    <col style="width: 11.9%">
                    <col style="width: 11.9%">
                    <col style="width: 11.9%">
                    <col style="width: 11.9%">
                    <col style="width: 11.9%">
                    <col style="width: 11.9%">
                </col-group>
                <tbody>
                    <tr class="bg-gray5">
                        <th>스트레쳐<br/>서비스</th>
                        <th>요금</th>
                        <th colsapn="5">-항공권 요금 적용<br/>
							-이코노미 클래스 항공권 요금의 6배액 징수<br/>
							-자세한 요금은 아시아나항공 예약 센터, 홈페이지 혹은 여행사에 문의 바랍니다.    
                    </tr>
                    <tr>
                        <td class="bg-gray5">산소 공급<br/>서비스</td>   
                    </tr>
                    
                </tbody>
            </table>
	</section>
        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/information.js"></script>
    </body>
</html>
