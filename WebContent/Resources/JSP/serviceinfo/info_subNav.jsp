<%--
  Created by IntelliJ IDEA.
  User: gyzz
  Date: 11/4/19
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
    <head>
        <title>Title</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <style>
            body { height: 300px;}
            .bread_crumbs {
                position: relative;
                height: 45px;
                width: 100vw;
                left: 0;
                background-color: #aaa;
            }
            
            .bread_crumbs>* {
                line-height: 45px;
                display: block;
                float: left;
                text-align: center;
            }
            
            .bread_crumbs>a {
                width: 50px;
                color: #fff;
            }
            
            .bread_crumbs>div {
                min-width: 150px;
                max-width: 400px;
                margin-right: 25px;
            }

            .bread_crumbs select {
                appearance: none;
                -webkit-appearance: none;
                box-shadow: none;
                border-radius: 0;
                width: 100%;
                border: 0;
                padding: 10px;
                font-size: 100%;
                color: #fff;
                background-color: #aaa;
            }

            
        </style>
    </head>
    <body>
        <div class="bread_crumbs">
            <a href="#">홈</a>
            <div>
                <select name="" id="category1">
                    <option value="">여행준비</option>
                    <option value="">여행</option>
                    <option value="">가자클럽</option>
                </select>
            </div>
            <div>
                <select name="" id="category2">
                    <option value="">11</option>
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                </select>
            </div>
            <div>
                <select name="" id="category3">
                    <option value="">11</option>
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                </select>
            </div>
        </div>
        
        
        <div>
            <div>여행준비</div>
            <div>
                예약 및 체크인
                <ul>
                    <li>예약 안내</li>
                    <li>사전 체크인</li>
                    <li>공항 체크인</li>
                </ul>
            </div>
            <div>
                수하물
                <ul>
                    <li>이용 안내</li>
                    <li>위탁 수하물</li>
                    <li>휴대 수하물</li>
                    <li>운송제한 물품</li>
                    <li>수하물 보상</li>
                </ul>
            </div>
            <div>
                도움이 필요한 고객
                <ul>
                    <li>유아여행 안내</li>
                    <li>혼자 여행하는 어린이/청소년</li>
                    <li>임신 중 여행</li>
                    <li>장애인 고객</li>
                    <li>패밀리 서비스</li>
                    <li>반려동물 동반</li>
                    <li>의료도움이 필요한 고객</li>
                </ul>
            </div>
           <div>
                출입국신고서
                <ul>
                    <li>출입국 신고서</li>
                    <li>미국 입출국 기록(I-94)전자열람</li>
                </ul>
            </div>
        </div>
        <div>
            <div>여행</div>
            <div>
                공항에서
                <ul>
                    <li>공항 안내</li>
                    <li>탑승수속 절차</li>
                    <li>라운지 이용</li>
                </ul>
            </div>
            <div>
                기내에서
                <ul>
                    <li>클래스별안내</li>
                    <li>기내식/음료</li>
                    <li>기내서비스순서</li>
                    <li>기내특별서비스</li>
                    <li>기내유실물조회</li>
                    <li>기내 엔터테인먼트</li>
                    <li>기내지 GAZAAIR 모바일앱</li>
                    <li>국제선 기내면세품</li>
                    <li>국내선 기내통신 판매</li>
                    <li>기내건강</li>
                    <li>휴대용전지기기 사용안내</li>
                </ul>
            </div>
            <div>
                항공기 정보
                <ul>
                    <li>1111</li>
                    <li>2222</li>
                    <li>3333</li>
                    <li>4444</li>
                </ul>
            </div>
           <div>
                유료서비스
                <ul>
                    <li>레그룸 좌석</li>
                    <li>국내선 비즈니스 존</li>
                    <li>프론트 존</li>
                    <li>듀오 좌석</li>
                    <li>이코노미 스마티움</li>
                    <li>로얄 비즈니스</li>
                    <li>업그레이드 스탠바이</li>
                    <li>기내 Wi-Fi</li>
                    <li>도움이 필요한 고객</li>
                </ul>
            </div>
        </div>
        <div>
            <div>가자클럽</div>
            <div>
                회원제도
                <ul>
                    <li>회원안내</li>
                    <li>특별 프로그램</li>
                    <li>할인제휴사</li>
                </ul>
            </div>
            <div>
                마일리지적립
                <ul>
                    <li>아시아나항공</li>
                    <li>스타얼라이언스/제휴항공사</li>
                    <li>신용카드</li>
                    <li>호텔</li>
                    <li>렌터카</li>
                    <li>쇼핑</li>
                    <li>기타제휴사</li>
                    <li>누락마일리지적립</li>
                </ul>
            </div>
            <div>
                마일리지사용
                <ul>
                    <li>가자에어</li>
                    <li>스타얼라이언스/제휴항공사</li>
                    <li>마일리지 사용 제휴사</li>
                </ul>
            </div>
        </div>
        <script src="../../JS/common.js"></script>
        <script src="../../JS/information.js"></script>
    </body>
</html>
