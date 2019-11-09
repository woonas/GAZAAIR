<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>결제</title>
    <link rel="stylesheet" href="../../../CSS/booking.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
    <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
    <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
</head>
<body>
<%@ include file="../../common/nav.jspf" %>
    <section class="content">
        <h3>결제</h3>
        <div class="bag">
            <p class="bag-head">결제 대기중인 상품(1)</p>
            <div class="bag-content table-form3">
                <div class="row clearfix table-row-title">
                    <div class="col-two-fourth">여정</div>
                    <div class="col-fourth">구분</div>
                    <div class="col-fourth">금액 <span class="currency">(KRW)</span></div>
                </div>
                <div class="row clearfix">
                    <div class="col-two-fourth trip">
                        <div class="col-tenth">
                            <i class="fas fa-plane-departure"></i>
                        </div>
                        <div class="col-fourth">
                            <div class="airport-name">서울/김포</div>
                            <div class="flight-date">2019.09.14(토)</div>
                            <div class="flight-time">06:05</div>
                        </div>
                        <div class="col-two-fifth">
                            <div class="flight-image">
                                <img src = "../../../IMG/icon/flight-table.svg" alt = "">
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
                                <img src = "../../../IMG/icon/flight-table.svg" alt = "">
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
        
        
        <div class="row clearfix">
            <div class="col-three-fourth">
                <div class="payment-section">
                    <p class="section-title">결제 수단 선택</p>
                    
                    <ul class="list-type2 list-border">
                        <li>신용카드(체크카드 포함) 및 계좌이체로 발권이 가능하며 결제 후 결제수단 변경이 불가합니다.</li>
                        <li>국내 발행 카드 이용시 안전한 신용카드 거래를 위해 신용카드 인증이 필요합니다.</li>
                        <li>신용카드 인증 시 발생한 오류는 반드시 해당 카드사로 문의하여 주시기 바랍니다.</li>
                        <li>해외발행 신용카드는 온라인 인증서비스를 받은 VISA, MASTER, JCB 카드에 한해 구매가능합니다.</li>
                    </ul>
                    
                    <div class="row clearfix payment-method">
                        <div class="col-fifth payment-method-title">
                            결제수단
                        </div>
                        <div class="col-four-fifth payment-type">
                            <div class="col-half">
                                <div>
                                    <input type = "radio" name="payment-method" id="credit" checked>
                                    <label for="credit">
                                        <img src="https://img.icons8.com/wired/50/000000/mastercard-credit-card.png">
                                        <img src="https://img.icons8.com/dusk/50/000000/mastercard-credit-card.png">
                                        <div class="pay-tit">신용카드</div>
                                    </label>
                                </div>
                            </div>
                            
                            <div class="col-half">
                                <div>
                                    <input type = "radio" name="payment-method" id="transfer">
                                    <label for = "transfer">
                                        <img src="https://img.icons8.com/dotty/50/000000/bank-building.png">
                                        <img src="https://img.icons8.com/dusk/44/000000/bank-building.png"
                                             style="margin-top: 4px; margin-bottom: 2px;">
                                        <div class="pay_tit">계좌이체</div>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="payment-section">
                    <p class="section-title">결제 정보 입력</p>
                    <div id="payment-method-credit">
                        <div class="row clearfix">
                            <div class="col-fourth payment-row-title">
                                    카드사명
                            </div>
                            <div class="col-three-fourth">
                                <select>
                                    <option value = "">카드회사를 선택해주세요.</option>
                                    <option value = "">비씨카드</option>
                                    <option value = "">삼성카드</option>
                                    <option value = "">우리카드</option>
                                    <option value = "">신한카드</option>
                                    <option value = "">하나카드</option>
                                    <option value = "">롯데카드</option>
                                    <option value = "">현대카드</option>
                                    <option value = "">KB국민카드</option>
                                    <option value = "">농협은행</option>
                                    <option value = "">한국씨티은행</option>
                                    <option value = "">기업은행</option>
                                </select>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-fourth payment-row-title">
                                    카드번호
                            </div>
                            <div class="col-three-fourth">
                                <input type = "number" placeholder="0000 0000 0000 0000">
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-fourth payment-row-title">
                                    CVC
                            </div>
                            <div class="col-three-fourth">
                                <input type = "number" placeholder="000">
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-fourth payment-row-title">
                                    카드주명
                            </div>
                            <div class="col-three-fourth">
                                <input type = "text" placeholder="이름을 입력하세요.">
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-fourth payment-row-title">
                                    만료일
                            </div>
                            <div class="col-three-fourth">
                                <input type = "number" placeholder="YYYY"> / <input type = "number" placeholder="MM">
                            </div>
                        </div>
                    </div>
                    <div class="hidden" id="payment-method-transfer">
                        <div class="row clearfix">
                            <div class="col-fourth payment-row-title">
                                    은행명
                            </div>
                            <div class="col-three-fourth">
                                <select>
                                    <option value = "">은행을 선택해주세요.</option>
                                    <option value = "">비씨카드</option>
                                    <option value = "">삼성카드</option>
                                    <option value = "">우리카드</option>
                                    <option value = "">신한카드</option>
                                    <option value = "">하나카드</option>
                                    <option value = "">롯데카드</option>
                                    <option value = "">현대카드</option>
                                    <option value = "">KB국민카드</option>
                                    <option value = "">농협은행</option>
                                    <option value = "">한국씨티은행</option>
                                    <option value = "">기업은행</option>
                                </select>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-fourth payment-row-title">
                                    계좌번호
                            </div>
                            <div class="col-three-fourth">
                                <input type = "number" placeholder="0000 0000 0000 0000">
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-fourth payment-row-title">
                                    계좌주명
                            </div>
                            <div class="col-three-fourth">
                                <input type = "text" placeholder="이름을 입력하세요.">
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-fourth payment-row-title">
                                    비밀번호
                            </div>
                            <div class="col-three-fourth">
                                <input type = "password" placeholder="비밀번호를 입력하세요.">
                            </div>
                        </div>
                    </div>
                </div>
                
                 <div class="payment-section" id="payment-method-mileage">
                    <p class="section-title">할인 및 마일리지</p>
                     <div class="row clearfix">
                        <div class="col-fourth payment-row-title">
                            마일리지
                        </div>
                        <div class="col-three-fourth">
                            <input type = "number" placeholder="000">
                            <span>(마일리지 : 20,30 원)</span>
                        </div>
                     </div>
                     <div class="row clearfix">
                        <div class="col-fourth payment-row-title">
                            할인쿠폰
                        </div>
                        <div class="col-three-fourth">
                            <span>[ 보유쿠폰 <span>0</span>장 ]</span>
                            <input type = "button" value="쿠폰 선택" class="blueBtn" id="coupon">
                        </div>
                     </div>
                     <div class="row clearfix">
                        <div class="col-fourth payment-row-title">
                            적용된 쿠폰
                        </div>
                        <div class="col-three-fourth">
                            <div>없음</div>
                        </div>
                     </div>
                 </div>
            </div>
            <div class="payment-sidebar col-fourth">
                <div>
                    <p>결제정보</p>
                    <div class="row clearfix">
                        <div class="col-half">
                            <div>결제상품금액</div>
                            <div>총 프로모션 할인금액</div>
                            <div>총 쿠폰 할인금액</div>
                            <div>총 마일리지 사용</div>
                        </div>
                        <div class="col-half">
                            <div>354,487 원</div>
                            <div>- 0 원</div>
                            <div>- 0 원</div>
                            <div>- 0 원</div>
                        </div>
                    </div>
                    <div class="row total">
                        <div>총 결제예정금액</div>
                        <div><span class="font-blue4" id="total-pay">354,487</span> 원</div>
                    </div>
                    <div class="row">
                        <div>결제동의</div>
                        <div>결제할 항공권의 가격 및 주의사항을 확인하였으며, 구매에 동의하시겠습니까? <br>
                        (전자상거래법 제 8조 제 2항) <br><br>
                        일부 항공권의 경우 환불이 불가능 하다는 내용을 확인하였으며 이에 동의합니다.</div>
                        <div class="agree-wrapper">
                            <input type="checkbox" id="agree" class="checkbox2">
                            <label for="agree">동의합니다</label>
                        </div>
                    </div>
                    <a href = "payment-complete.html"><input type = "button" class="blueBtn" value="결제하기" id="btn-pay"></a>
                </div>
            </div>
        </div>
    </section>
    <script src="../../../JS/common.js"></script>
    <script src="../../../JS/payment.js"></script>
    <%@ include file="../../common/footer.jspf" %>
</body>
</html>