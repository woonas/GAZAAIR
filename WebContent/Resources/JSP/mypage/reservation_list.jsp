<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>예약내역</title>
        <link rel="stylesheet" href="../../CSS/my_page.css">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
    <%@ include file="../common/nav.jspf" %>
        <div class="overlay"></div>
        <section class="content">
            <h3>예약 내역</h3>
            <ul class="list-type2 list-border">
                <li>가자에어 홈페이지 및 모바일을 통한 예약 또는 예약센터나 국내지점, 여행사를 통한 예약 중 가자에어클럽 회원번호가 반영된 예약을 조회하실 수 있습니다.</li>
                <li>탑승일이 지난 예약기록은 ‘항공권 구매내역’에서 확인하실 수 있습니다. <a href="" class="font-brown">구매내역 페이지로 이동</a></li>
                <li class="font-red">타인의 항공권을 예약/발권하신 경우 ‘예약정보로 찾기’를 통해 예약조회 서비스를 이용하실 수 있습니다.</li>
            </ul>
            
             <div class="reservation-inquire">
                <div class="reservation-list-container">
                    <div class="row clearfix">
                        <div class="col-fourth">조회 기간</div>
                        <div class="col-three-fourth">
                            <input type="radio" class="radio3" name="search-type1" id="search-period" checked>
                            <label for="search-period">기간으로 조회</label>
                            <input type="radio" class="radio3 hide-next" name="search-type1" id="search-since-join">
                            <label for="search-since-join">가입일로부터 조회</label>
                            <br><br>
                            <div class="row clearfix">
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period" id="month-1-1" checked>
                                    <label for="month-1-1">1개월</label>
                                </div>
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period" id="month-1-6">
                                    <label for="month-1-6">6개월</label>
                                </div>
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period" id="month-1-12">
                                    <label for="month-1-12">1년</label>
                                </div>
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period" id="month-1-60">
                                    <label for="month-1-60">5년</label>
                                </div>
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period" id="month-1-custom">
                                    <label for="month-1-custom">직접입력</label>
                                </div>
                            </div>
                            <br>
                            <input type="button" class="blueBtn" value="조회하기" id="btn-search1">
                            <div>
                                <input type="text" id="flightDate-1" readonly> 부터 ~
                                <input type="text" id="flightDate-2" readonly> 까지
                            </div>
                        </div>
                    </div>
                </div>
                <div id="result">
                    <div class="reserve-table">
                        <div class="section-title">
                            <span class="font-brown">2019.09.05</span>부터
                        <span class="font-brown">2019.10.05</span>까지 조회 결과
                        </div>
                        <div>
                            <table>
                                <colgroup>
                                    <col style="width: 100px;" />
                                    <col style="width: 200px" />
                                    <col style="width: 350px" />
                                    <col style="width: 200px" />
                                    <col style="width: 200px" />
                                    <col style="width: 110px" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>여정</th>
                                        <th>일자</th>
                                        <th>출발 - 도착지</th>
                                        <th>출발 - 도착 시간</th>
                                        <th>편명</th>
                                        <th>상세 보기</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div>01</div>
                                        </td>
                                        <td>
                                            <div>2019/01/01 (일)</div>
                                        </td>
                                        <td>
                                            <div>샌프란시스코 → 뉴욕</div>
                                        </td>
                                        <td>
                                            <div>20:20 → 02:30</div>
                                        </td>
                                        <td>
                                            <div>OZGO1234</div>
                                        </td>
                                        <td>
                                            <div><a href="reservation_detail.html"><input type="button" class="blueBtn" value="상세보기"
                                                                                          id="detail1"></a></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div>02</div>
                                        </td>
                                        <td>
                                            <div>2019/01/01 (일)</div>
                                        </td>
                                        <td>
                                            <div>뉴욕 → 샌프란시스코</div>
                                        </td>
                                        <td>
                                            <div>20:20 → 02:30</div>
                                        </td>
                                        <td>
                                            <div>OZGO1234</div>
                                        </td>
                                        <td>
                                            <div><a href="reservation_detail.html"><input type="button" class="blueBtn" value="상세보기"
                                                                                          id="detail2"></a></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div>03</div>
                                        </td>
                                        <td>
                                            <div>2019/01/01 (일)</div>
                                        </td>
                                        <td>
                                            <div>샌프란시스코 → 뉴욕</div>
                                        </td>
                                        <td>
                                            <div>20:20 → 02:30</div>
                                        </td>
                                        <td>
                                            <div>OZGO1234</div>
                                        </td>
                                        <td>
                                            <div><a href="reservation_detail.html"><input type="button" class="blueBtn" value="상세보기"
                                                                                          id="detail3"></a></div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="no-record">
                <p>온라인에서 확인 가능한 예약내역이 없습니다.</p>
                예약 관련 구매/환불 영수증 확인을 원하실 경우 구매내역 메뉴을 이용해주세요. <br>
                아시아나항공 온라인 이외의 경로에서 예약한 내역을 확인하고 싶으실 경우 <span class="font-brown">예약센터 1588-8000</span> 또는 각 구매처로 연락 주시기
                바랍니다.
            </div>
    
            <ul class="list-type2 last-note bg-gray6">
                <li class="list-inside-title">유의사항</li>
                <li>국내선 항공권 예약변경은 항공편 출발 30분전까지 가능합니다.</li>
                <li>국제선 항공권 예약변경은 항공편 출발 2시간 전까지 가능합니다.</li>
                <li>구매한 항공권에 대한 예약변경 및 환불 시 운임규정에 따른 예약변경 수수료 (재발행 수수료) 및 환불 위약금 또는 환불 수수료가 징수될 수 있습니다.</li>
                <li>구매 이후 항공권의 지불 수단 변경은 불가합니다.</li>
                <li>취소된 예약 확인 후에는 예약번호가 온라인 예약 목록에서 삭제되오니 이용에 참고하시기 바랍니다.</li>
                <li>홈페이지 (모바일)에서 2명 이상 동시에 예약, 발권 완료하여 동일한 예약번호로 예약된 경우 일부 인원 만 변경 및 환불 불가하므로 재구매 후 기존 항공권은 홈페이지에서 환불하여 주시기 바랍니다.</li>
                <li>마일리지 좌석승급의 경우 추후 홈페이지에서 여정변경 및 환불이 불가합니다.</li>
            </ul>
        </section>
    
        <!-- Moment Js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
    
        <!-- Lightpick CSS -->
        <link rel="stylesheet" href="../../../Vendor/javascript-datepicker-lightpick/css/lightpick.css">
        <!-- Lightpick JS -->
        <script src="../../../Vendor/javascript-datepicker-lightpick/js/lightpick.js"></script>
        
        <script src="../../JS/common.js"></script>
        <script src="../../JS/mypage.js"></script>
        <%@ include file="../common/footer.jspf" %>
    </body>
</html>