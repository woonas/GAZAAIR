<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>마일리지</title>
        <link rel="stylesheet" href="../../CSS/my_page.css">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
        <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
    <%@ include file="../common/nav.jspf" %>
        <div class="overlay"></div>
        <section class="content">
            <h3>마일리지</h3>
            <div class="mileage-section">
                <div class="text-align-center"><span class="font-brown">김구용</span>회원님의 사용가능 마일리지</div>
                <div class="text-align-center"><span class="font-blue4">0</span>마일</div>
                <br>
                <div class="table-form3 mileage-table">
                    <div class="row clearfix table-row-title">
                        <div class="col-fifth">구분</div>
                        <div class="col-fifth">적립 마일리지</div>
                        <div class="col-fifth">사용 마일리지</div>
                        <div class="col-fifth">소멸된 마일리지</div>
                        <div class="col-fifth">잔여 마일리지</div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-fifth">유효기간 미적용</div>
                        <div class="col-fifth text-align-end">0</div>
                        <div class="col-fifth text-align-end">0</div>
                        <div class="col-fifth text-align-end">0</div>
                        <div class="col-fifth font-red text-align-end">0</div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-fifth">유효기간 적용</div>
                        <div class="col-fifth text-align-end">0</div>
                        <div class="col-fifth text-align-end">0</div>
                        <div class="col-fifth text-align-end">0</div>
                        <div class="col-fifth font-red text-align-end">0</div>
                    </div>
                    <div class="row clearfix sumup-row">
                        <div class="col-fifth">합계</div>
                        <div class="col-fifth text-align-end">0</div>
                        <div class="col-fifth text-align-end">0</div>
                        <div class="col-fifth text-align-end">0</div>
                        <div class="col-fifth font-red text-align-end">0</div>
                    </div>
                </div>
            </div>
            <button id="mileage-expiration">
                마일리지 유효기간 안내
                <i class="far fa-window-restore"></i>
            </button>
            <div class="row clearfix">
                <ul class="list-type2">
                    <li>2008년 10월 1일부터 적립하는 마일리지는 유효기간이 적용됩니다.</li>
                    <li>회원 등급별 마일리지 유효기간은 매직 마일즈, 실버, 골드 회원은 10년, 다이아몬드, 다이아몬드 플러스, 플래티늄 회원은 12년입니다.</li>
                </ul>
            </div>
            
<!--            마일리지 유효기간 안내 팝업-->
            <div class="pop-up-window-type1 centeredX" id="mileage-expiration-window">
                <div>
                    <p class="window-title">
                        마일리지 유효기간 안내
                        <i class="fas fa-times btn-close"></i>
                    </p>
                </div>
                <div class="sm-font">
                    2008년 10월 1일부로 실시된 마일리지 유효기간 적용을 회원 등급에 따라 기존 5년 ~ 7년에서 10년 ~ 12년으로 대폭 연장하였습니다.
                    2008년 10월 1일부터 적립하는 모든 마일리지는 유효기간이 적용되며, 유효기간 내 사용하지 않은 마일리지는 이월되지 않고 소멸됩니다.
                    단, 2008년 9월 30일까지 적립한 모든 마일리지는 유효기간이 적용되지 않습니다.
                </div>
                <div>
                    <p class="window-subtitle">유효기간</p>
                    <div class="sm-font">항공 탑승 또는 마일리지 적립 시점의 회원자격에 따라 마일리지 유효기간이 결정됩니다. <br><br></div>
                    <ul class = "list-type2">
                        <li>
                            <span class="font-brown">매직마일즈/실버/골드회원</span> <br>
                            '탑승일' 또는 '적립일'로부터 10년째 되는 해의 12월 31일까지(한국 시각 기준)
                        </li>
                        <li>
                            <span class="font-brown">다이아몬드 이상 우수회원</span> <br>
                            '탑승일' 또는 '적립일'로부터 12년째 되는 해의 12월 31일까지(한국 시각 기준)
                        </li>
                    </ul>
                    <br>
                    <div class="sm-font">
                        항공 탑승 마일리지는 ‘탑승일’, 항공 탑승 마일리지를 제외한 일반 마일리지는 ‘적립일’로부터 유효기간이 계산되며,
                        탑승일 이후 요청하여 적립되는 가자에어 및 제휴 항공사 탑승 마일리지도 적립 요청한 날이 아닌 ‘탑승일’로부터 유효기간이 적용됩니다.
                    </div>
                </div>
                <div>
                    <p class="window-subtitle">마일리지의 사용 순서</p>
                    <div class="sm-font">
                        항공 탑승 또는 마일리지 적립 시점의 회원자격에 따라 마일리지 유효기간이 결정됩니다.
                    </div>
                </div>
                <div>
                    <p class="window-subtitle">마일리지의 환급</p>
                    <div class="sm-font">
                        발급 받은 마일리지 항공권(좌석승급 및 기타 마일리지 공제 프로그램 포함)을 사용하지 않고 환급 요청 시,
                        환급 요청시점에 유효기간이 지나 소멸된 마일리지는 환급되지 않으며, 유효기간이 남아있는 마일리지만 환급됩니다.
                    </div>
                </div>
                <div>
                    <p class="window-subtitle">가자에어클럽 우수 회원 자격</p>
                    <div class="sm-font">
                        마일리지 사용이나 소멸과 관계없이 항공 탑승 실적에 따라 결정됩니다.
                    </div>
                </div>
            </div>
        
            
<!--            마일리지 조회-->
            <div class="mileage-inquire">
                <p class="section-title">마일리지 조회</p>
                
                <div class="tab-menu1">
                    <ul class="clearfix">
                        <li class="col-third on" id='tab-1'><a href="#none">적립/사용 상세내역</a></li>
                        <li class="col-third" id='tab-2'><a href="#none">등급 산정 마일리지</a></li>
                        <li class="col-third" id='tab-3'><a href="#none">소멸 예정 마일리지</a></li>
                    </ul>
                </div>
                
                <div id="tab-1-container" class="tab-content-container">
                    <div class="row clearfix">
                        <div class="col-fourth">구분</div>
                        <div class="col-three-fourth" style="padding-top: 9px;">
                            <input type="checkbox" class="checkbox2" id="check-all">
                            <label for="check-all">전체</label>
                            <input type="checkbox" class="checkbox2" id="saved">
                            <label for="saved">적립</label>
                            <input type="checkbox" class="checkbox2" id="used">
                            <label for="used">사용</label>
                            <input type="checkbox" class="checkbox2" id="expired">
                            <label for="expired">소멸된 마일리지</label>
                        </div>
                    </div>
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
                                    <input type="radio" class="radio1" name="period" id="month-1-3">
                                    <label for="month-1-3">3개월</label>
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
                
                <div id="tab-2-container" class="tab-content-container hidden">
                    <div class="row clearfix">
                        <div class="col-fourth">조회 기간</div>
                        <div class="col-three-fourth">
                            <input type="radio" class="radio3" name="search-type2" id="search-feat" checked>
                            <label for="search-feat">승급실적 조회</label>
                            <input type="radio" class="radio3 hide-next" name="search-type2" id="search-membergrade">
                            <label for="search-membergrade">평생 회원 등급 산정 마일리지 조회</label>
                            <br><br>
                            <div class="row clearfix">
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period-2" id="month-2-1" checked>
                                    <label for="month-2-1">1개월</label>
                                </div>
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period-2" id="month-2-3">
                                    <label for="month-2-3">3개월</label>
                                </div>
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period-2" id="month-2-6">
                                    <label for="month-2-6">6개월</label>
                                </div>
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period-2" id="month-2-12">
                                    <label for="month-2-12">1년</label>
                                </div>
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period-2" id="month-2-custom">
                                    <label for="month-2-custom">직접입력</label>
                                </div>
                            </div>
                            <br>
                            <input type="button" class="blueBtn" value="조회하기" id="btn-search2">
                            <div>
                                <input type="text" id="flightDate-3" readonly> 부터 ~
                                <input type="text" id="flightDate-4" readonly> 까지
                            </div>
                        </div>
                    </div>
                </div>
                
                <div id="tab-3-container" class="tab-content-container hidden">
                    <div class="row clearfix">
                        <div class="col-fourth">조회 기간</div>
                        <div class="col-three-fourth">
                            <div class="row clearfix">
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period-3" id="year-1" checked>
                                    <label for="year-1">1년</label>
                                </div>
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period-3" id="year-2">
                                    <label for="year-2">2년</label>
                                </div>
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period-3" id="year-5">
                                    <label for="year-5">5년</label>
                                </div>
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period-3" id="year-10">
                                    <label for="year-10">10년</label>
                                </div>
                                <div class="col-eighth">
                                    <input type="radio" class="radio1" name="period-3" id="year-custom">
                                    <label for="year-custom">직접입력</label>
                                </div>
                            </div>
                            <br>
                            <input type="button" class="blueBtn" value="조회하기" id="btn-search3">
                            <div>
                                <input type="text" id="flightDate-5" readonly> 부터 ~
                                <input type="text" id="flightDate-6" readonly> 까지
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
         
            <div id="result">
                <div class="section-title">
                    <span class="font-brown">2019.09.05</span>부터
                    <span class="font-brown">2019.10.05</span>까지 조회 결과
                </div>
                <div class="table-form3 mileage-table-simple">
                    <div class="row clearfix table-row-title">
                        <div class="col-fourth">총 건수</div>
                        <div class="col-fourth">적립 마일리지</div>
                        <div class="col-fourth">사용 마일리지</div>
                        <div class="col-fourth">소멸 마일리지</div>
                    </div>
                    <div class="row clearfix text-align-center">
                        <div class="col-fourth">0</div>
                        <div class="col-fourth">0</div>
                        <div class="col-fourth">0</div>
                        <div class="col-fourth">0</div>
                    </div>
                </div>
                <br><br><br>
                <div class="section-title">상세내역</div>
                <div class="table-form3 mileage-table-detail">
                    <div class="row clearfix table-row-title">
                        <div class="col-sixth">일자</div>
                        <div class="col-sixth">구분</div>
                        <div class="col-sixth">적립/사용처</div>
                        <div class="col-sixth">적립 당시 등급</div>
                        <div class="col-sixth">마일리지</div>
                        <div class="col-sixth">유효기간</div>
                    </div>
                    <div class="row clearfix text-align-center">
                        <div class="col-line">
                            <br>조회된 데이터가 없습니다. <br><br>
                        </div>
                    </div>
                </div>
            </div>
            <button id="mileage-print">
                인쇄하기
                <i class="far fa-window-restore"></i>
            </button>
            
            
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