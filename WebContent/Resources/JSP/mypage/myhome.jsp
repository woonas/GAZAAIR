<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>마이 홈</title>
        <link rel="stylesheet" href="../../CSS/my_page.css">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/main.css" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body id="mypage-main">
    <%@ include file="../nav.jspf" %>
        <section class="content">
            <div class="maintop">
                <div class="row clearfix">
                    <div>
                        <div id="name-ko"><a href="#" class="font-white">최민성 님</a></div>
                        <div id="name-eng" class="font-gray3">CHOI MIN SEONG</div>
                    </div>
                    <div>
                        <div><a href = "" class="font-gray3">총 탑승횟수</a></div>
                        <div id="tripNo">0</div>
                    </div>
                </div>

                <div class="row clearfix">
                    <div>
                        <div id="grade"><a href="#" class="font-white">실버</a></div>
                        <div id="memberNo">777 888 9999</div>
                    </div>
                    <div>
                        <div><a href = "" class="font-gray3">소멸 예정 마일리지</a></div>
                        <div id="mileage">0</div>
                    </div>
                </div>
                <div id="boarding">
                    <div>가자에어 탑승 <span>0</span></div>
                    <div>가자에어외 탑승 <span>0</span></div>
                    <div>일반 제휴 및 기타 <span>0</span></div>
                </div>
                <div class="circle">
                    <div><a href = "" class="font-white">나의 마일리지</a></div><br>
                    <strong>0</strong>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-two-fifth">
                    <div class="section my-grade">
                        <div class="section-title bottom-border">
                            등급
                        </div>
                        <div><span id="username" class="font-brown">홍길동</span> 님의</div>
                        <div>회원등급은 <span id="usergrade" class="font-blue4">실버등급</span>입니다.</div>
                        <div><a
                                href = "../mypage_GradeInfo.html"><input type="button" class="blueBtn" value="등급혜택보기"
                                                                         id="grade-benefit"></a></div>
                    </div>
                </div>
                <div class="col-two-fifth">
                    <div class="section my-mileage">
                        <div class="section-title bottom-border">
                            마일리지
                        </div>
                        <br>
                        <div id="mileagebar">
                            <div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <span class="font-blue4">
                                    +
                                    <span id="usergradeup">20,394</span>
                                    마일
                                </span>
                                <span style="font-size: 80%">적립시 등급상승</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-fifth">
                    <div class="section interest-list">
                        <div class="section-title bottom-border">
                            관심노선
                        </div>
                        <div class="font-blue4">
                            0
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-line">
                    <div class="section reserve-table">
                        <div class="section-title bottom-border">
                            최근 예약
                            <a href = "#"><input type="button" value="전체내역보기" class="blueBtn"></a>
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
            <div class="row clearfix">
                <div class="col-half">
                    <div class="section my-write">
                        <div class="section-title bottom-border">
                            나의 글
                            <a href = "#"><input type="button" value="전체보기" class="blueBtn"></a>
                        </div>
                        <div>
                            <ul class="list-type2">
                                <li><a href = "">ddd</a></li>
                                <li><a href = "">ddd</a></li>
                                <li><a href = "">ddd</a></li>
                                <li><a href = "">ddd</a></li>
                                <li><a href = "">ddd</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-half">
                    <div class="section my-question">
                        <div class="section-title bottom-border">
                            문의사항
                            <a href = "#"><input type="button" value="전체보기" class="blueBtn"></a>
                        </div>
                        <div>
                            <ul class="list-type2">
                                <li><a href = "">ddd</a></li>
                                <li><a href = "">ddd</a></li>
                                <li><a href = "">ddd</a></li>
                                <li><a href = "">ddd</a></li>
                                <li><a href = "">ddd</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div style="height: 150px; background-color: #fff; clear:both;"></div>
        <script src="https://rawgit.com/kottenator/jquery-circle-progress/1.2.1/dist/circle-progress.js"></script>
        <script src="../../JS/common.js"></script>
        <script src="../../JS/mypage.js"></script>
        <%@ include file="../footer.jspf" %>
    </body>
</html>