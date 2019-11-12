<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>구매 내역</title>
        <link rel="stylesheet" href="../../CSS/my_page.css">
        <link rel="stylesheet" href="../../HTML/not_using/payment.css">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
    <%@ include file="../common/nav.jspf" %>
        <section class="content">
            <h3>주문 상세 정보</h3>
<!-- Todo  좌석, 기내식, 클래스 변경시  그것 + 합계로 테이블 변경    -->
            <div class="bag">
                <p class="bag-head">결제한 상품(1)</p>
                <div class="bag-content table-form3">
                    <div class="row clearfix table-row-title">
                        <div class="col-two-fourth">여정</div>
                        <div class="col-fourth">구분</div>
                        <div class="col-fourth">금액 <span class="currency">(KRW)</span></div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-two-fourth trip">
                            <div class="col-tenth" style="text-align: left; margin-left: -20px; line-height: 222px">
                                <i class="fas fa-plane-departure"></i>
                            </div>
                            <div class="col-fourth">
                                <div class="airport-name">서울/김포</div>
                                <div class="flight-date">2019.09.14(토)</div>
                                <div class="flight-time">06:05</div>
                            </div>
                            <div class="col-two-fifth">
                                <div class="flight-image">
                                    <img src = "../../IMG/icon/flight-table.svg" alt = "">
                                </div>
                            </div>
                            <div class="col-fourth">
                                <div class="airport-name">제주</div>
                                <div class="flight-date">2019.09.14(토)</div>
                                <div class="flight-time">07:15</div>
                            </div>
                        </div>
                        <div class="col-fourth detailed-price">
                            <div>항공권 운임</div>
                            <div>세금 및 제반요금</div>
                            <div>유류할증료</div>
                            <div>구간별 개인할인</div>
                            <div>승객</div>
                            <div>합계</div>
                        </div>
                        <div class="col-fourth detailed-price">
                            <div>120,000</div>
                            <div>4,000</div>
                            <div>5,500</div>
                            <div>-</div>
                            <div>성인 1</div>
                            <div>129,500</div>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-two-fourth trip">
                            <div class="col-tenth" style="text-align: left; margin-left: -20px; line-height: 222px">
                                <i class="fas fa-plane-departure"></i>
                            </div>
                            <div class="col-fourth">
                                <div class="airport-name">서울/김포</div>
                                <div class="flight-date">2019.09.14(토)</div>
                                <div class="flight-time">06:05</div>
                            </div>
                            <div class="col-two-fifth">
                                <div class="flight-image">
                                    <img src = "../../IMG/icon/flight-table.svg" alt = "">
                                </div>
                            </div>
                            <div class="col-fourth">
                                <div class="airport-name">제주</div>
                                <div class="flight-date">2019.09.14(토)</div>
                                <div class="flight-time">07:15</div>
                            </div>
                        </div>
                        <div class="col-fourth detailed-price">
                            <div>항공권 운임</div>
                            <div>세금 및 제반요금</div>
                            <div>유류할증료</div>
                            <div>구간별 개인할인</div>
                            <div>승객</div>
                            <div>합계</div>
                        </div>
                        <div class="col-fourth detailed-price">
                            <div>120,000</div>
                            <div>4,000</div>
                            <div>5,500</div>
                            <div>-</div>
                            <div>성인 1</div>
                            <div>129,500</div>
                        </div>
                    </div>
                </div>

                <div class="total-price">
                    <div class="row clearfix">
                        <div class="col-fourth">
                            결제상품금액
                            <span>256,000 원</span>
                        </div>
                        <div class="col-fourth">
                            총 할인금액
                            <span>0 원</span>
                        </div>
                        <div class="col-fourth">
                            사용마일리지
                            <span>0 원</span>
                        </div>
                        <div class="col-fourth">
                            총 결제금액
                            <span class="font-blue4">256,000 원</span>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="payment-complete-section" style="width: 100%; margin-top: 30px;">
                <p>결제정보</p>
                <div class="payment-complete-table">
                    <div class="row clearfix">
                        <div class="col-fifth">결제번호</div>
                        <div class="col-four-fifth">
                            2019234028
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-fifth">결제타입</div>
                        <div class="col-four-fifth">
                            카드
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-fifth">결제정보</div>
                        <div class="col-four-fifth">
                            국민카드 / 4173-8901-7483
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-fifth">결제금액</div>
                        <div class="col-four-fifth font-blue4">
                            130,000 원
                        </div>
                    </div>
                </div>
            </div>

            <div class="payment-complete-section" style="width: 100%;">
                <p>마일리지</p>
                <div class="payment-complete-table">
                    <div class="row clearfix">
                        <div class="col-fifth">적립포인트</div>
                        <div class="col-four-fifth font-blue4">
                            0P
                        </div>
                    </div>
                </div>
            </div>

            <div class="button-wrapper">
                <a href = "../index.html"><input type = "button" value="목록으로" class="blueBtn"></a>
            </div>
        </section>
        <script src="../../JS/common.js"></script>
        <script src="../../JS/mypage.js"></script>
        <%@ include file="../common/footer.jspf" %>
    </body>
</html>