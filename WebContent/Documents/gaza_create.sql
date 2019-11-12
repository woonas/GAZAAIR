--특수문자 사용하기
set define off;

--시퀀스
CREATE SEQUENCE airplane_sq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE airport_sq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE product_sq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE recommandproduct_sq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE flight_sq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE seatreserve_sq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE companion_sq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE food_sq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE ordertbl_sq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE payment_sq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE account_sq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE credit_sq
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE event_sq
START WITH 1
INCREMENT BY 1;




/* 새 테이블 */
CREATE TABLE zipcode (
                         zipcode VARCHAR(5) NOT NULL, /* 우편번호 */
                         sido VARCHAR(24) NOT NULL, /* 시도 */
                         sigungu VARCHAR(24), /* 시군구 */
                         eupmyun VARCHAR(24), /* 읍면 */
                         doro VARCHAR(30), /* 도로명 */
                         dong VARCHAR(30), /* 동명 */
                         num1 NUMBER, /* 지번본번 */
                         num2 NUMBER /* 지번부번 */
);

COMMENT ON TABLE zipcode IS '새 테이블';

COMMENT ON COLUMN zipcode.zipcode IS '우편번호';

COMMENT ON COLUMN zipcode.sido IS '시도';

COMMENT ON COLUMN zipcode.sigungu IS '시군구';

COMMENT ON COLUMN zipcode.eupmyun IS '읍면';

COMMENT ON COLUMN zipcode.doro IS '도로명';

COMMENT ON COLUMN zipcode.dong IS '동명';

COMMENT ON COLUMN zipcode.num1 IS '지번본번';

COMMENT ON COLUMN zipcode.num2 IS '지번부번';

/* 장바구니4 */
CREATE TABLE time (
                      timeNum NUMBER NOT NULL, /* 시간대번호 */
                      sale NUMBER /* 할인율 */
);

COMMENT ON TABLE time IS '장바구니4';

COMMENT ON COLUMN time.timeNum IS '시간대번호';

COMMENT ON COLUMN time.sale IS '할인율';

CREATE UNIQUE INDEX PK_time
    ON time (
             timeNum ASC
        );

/* 새 테이블16 */
CREATE TABLE seatReserve (
                             seatReserveNum NUMBER NOT NULL, /* 좌석일련번호 */
                             flightNum NUMBER NOT NULL, /* 운행번호 */
                             seatType NUMBER NOT NULL, /* 좌석타입 */
                             seatNo NUMBER NOT NULL, /* 좌석번호 */
                             reserved NUMBER /* 예약여부 */
);

COMMENT ON TABLE seatReserve IS '새 테이블16';

COMMENT ON COLUMN seatReserve.seatReserveNum IS '좌석일련번호';

COMMENT ON COLUMN seatReserve.flightNum IS '운행번호';

COMMENT ON COLUMN seatReserve.seatType IS '좌석타입';

COMMENT ON COLUMN seatReserve.seatNo IS '좌석번호';

COMMENT ON COLUMN seatReserve.reserved IS '예약여부';

CREATE UNIQUE INDEX PK_seatReserve
    ON seatReserve (
                    seatReserveNum ASC
        );

/* 새 테이블5 */
CREATE TABLE seat (
                      seatType NUMBER NOT NULL, /* 좌석타입 */
                      seatContent VARCHAR2(255) NOT NULL /* 좌석타입이름 */
);

COMMENT ON TABLE seat IS '새 테이블5';

COMMENT ON COLUMN seat.seatType IS '좌석타입';

COMMENT ON COLUMN seat.seatContent IS '좌석타입이름';

CREATE UNIQUE INDEX PK_seat
    ON seat (
             seatType ASC
        );

/* 새 테이블17 */
CREATE TABLE reviewBoardReply (
                                  replyNum NUMBER NOT NULL, /* 댓글번호 */
                                  commentt VARCHAR2(1000), /* 댓글내용 */
                                  memberId VARCHAR2(15) NOT NULL, /* 아이디 */
                                  reviewNum NUMBER, /* 원글번호 */
                                  ip VARCHAR2(20), /* 아이피 */
                                  writeDate DATE /* 작성일자 */
);

COMMENT ON TABLE reviewBoardReply IS '새 테이블17';

COMMENT ON COLUMN reviewBoardReply.replyNum IS '댓글번호';

COMMENT ON COLUMN reviewBoardReply.commentt IS '댓글내용';

COMMENT ON COLUMN reviewBoardReply.memberId IS '아이디';

COMMENT ON COLUMN reviewBoardReply.reviewNum IS '원글번호';

COMMENT ON COLUMN reviewBoardReply.ip IS '아이피';

COMMENT ON COLUMN reviewBoardReply.writeDate IS '작성일자';

CREATE UNIQUE INDEX PK_reviewBoardReply
    ON reviewBoardReply (
                         replyNum ASC
        );

/* 후기게시판 */
CREATE TABLE reviewBoard (
                             reviewNum NUMBER NOT NULL, /* 일련번호 */
                             reviewType NUMBER NOT NULL, /* 글타입 */
                             subject VARCHAR2(200) NOT NULL, /* 제목 */
                             content CLOB NOT NULL, /* 글내용 */
                             writer VARCHAR2(15) NOT NULL, /* 작성자 */
                             hit NUMBER, /* 조회수 */
                             regdate DATE NOT NULL, /* 등록일 */
                             ip VARCHAR(20) NOT NULL /* 아이피 */
);

COMMENT ON TABLE reviewBoard IS '후기게시판';

COMMENT ON COLUMN reviewBoard.reviewNum IS '일련번호';

COMMENT ON COLUMN reviewBoard.reviewType IS '글타입';

COMMENT ON COLUMN reviewBoard.subject IS '제목';

COMMENT ON COLUMN reviewBoard.content IS '글내용';

COMMENT ON COLUMN reviewBoard.writer IS '작성자';

COMMENT ON COLUMN reviewBoard.hit IS '조회수';

COMMENT ON COLUMN reviewBoard.regdate IS '등록일';

COMMENT ON COLUMN reviewBoard.ip IS '아이피';

CREATE UNIQUE INDEX PK_reviewBoard
    ON reviewBoard (
                    reviewNum ASC
        );

/* 회원정보 */
CREATE TABLE register (
                          num <Not specified>, /* 새 컬럼 */
                          COL2 <Not specified>, /* 새 컬럼2 */
                          COL3 <Not specified>, /* 새 컬럼3 */
                          COL4 <Not specified>, /* 새 컬럼4 */
                          COL5 <Not specified>, /* 새 컬럼5 */
                          COL6 <Not specified>, /* 새 컬럼6 */
                          COL7 <Not specified>, /* 새 컬럼7 */
                          COL8 <Not specified>, /* 새 컬럼8 */
                          COL9 <Not specified> /* 새 컬럼9 */
);

COMMENT ON TABLE register IS '회원정보';

COMMENT ON COLUMN register.num IS '새 컬럼';

COMMENT ON COLUMN register.COL2 IS '새 컬럼2';

COMMENT ON COLUMN register.COL3 IS '새 컬럼3';

COMMENT ON COLUMN register.COL4 IS '새 컬럼4';

COMMENT ON COLUMN register.COL5 IS '새 컬럼5';

COMMENT ON COLUMN register.COL6 IS '새 컬럼6';

COMMENT ON COLUMN register.COL7 IS '새 컬럼7';

COMMENT ON COLUMN register.COL8 IS '새 컬럼8';

COMMENT ON COLUMN register.COL9 IS '새 컬럼9';

/* 새 테이블7 */
CREATE TABLE recommandProduct (
                                  recommandNum NUMBER NOT NULL, /* 추천번호 */
                                  productNum NUMBER, /* 상품번호 */
                                  regdate DATE DEFAULT sysdate /* 등록일 */
);

COMMENT ON TABLE recommandProduct IS '새 테이블7';

COMMENT ON COLUMN recommandProduct.recommandNum IS '추천번호';

COMMENT ON COLUMN recommandProduct.productNum IS '상품번호';

COMMENT ON COLUMN recommandProduct.regdate IS '등록일';

CREATE UNIQUE INDEX PK_recommandProduct
    ON recommandProduct (
                         recommandNum ASC
        );

/* 상품 */
CREATE TABLE product (
                         productNum NUMBER NOT NULL, /* 상품번호 */
                         depart VARCHAR2(5) NOT NULL, /* 출발지 */
                         arrive VARCHAR2(5) NOT NULL, /* 도착지 */
                         price NUMBER NOT NULL, /* 가격 */
                         productCnt NUMBER NOT NULL, /* 예매횟수 */
                         sale NUMBER, /* 할인 */
                         regdate DATE DEFAULT sysdate /* 등록일 */
);

COMMENT ON TABLE product IS '상품';

COMMENT ON COLUMN product.productNum IS '상품번호';

COMMENT ON COLUMN product.depart IS '출발지';

COMMENT ON COLUMN product.arrive IS '도착지';

COMMENT ON COLUMN product.price IS '가격';

COMMENT ON COLUMN product.productCnt IS '예매횟수';

COMMENT ON COLUMN product.sale IS '할인';

COMMENT ON COLUMN product.regdate IS '등록일';

CREATE UNIQUE INDEX PK_product
    ON product (
                productNum ASC
        );

/* 새 테이블12 */
CREATE TABLE people (
                        peopleNum NUMBER NOT NULL, /* 승객타입분류번호 */
                        peopleType VARCHAR2(10) NOT NULL, /* 승객타입 */
                        peopleSale Number NOT NULL /* 할인율 */
);

COMMENT ON TABLE people IS '새 테이블12';

COMMENT ON COLUMN people.peopleNum IS '승객타입분류번호';

COMMENT ON COLUMN people.peopleType IS '승객타입';

COMMENT ON COLUMN people.peopleSale IS '할인율';

CREATE UNIQUE INDEX PK_people
    ON people (
               peopleNum ASC
        );

/* 새 테이블3 */
CREATE TABLE payment (
                         payNum NUMBER NOT NULL, /* 결제번호 */
                         orderNum NUMBER NOT NULL, /* 예매번호 */
                         memberNum NUMBER NOT NULL, /* 회원번호 */
                         milesNum NUMBER NOT NULL, /* 마일리지번호 */
                         paymentType NUMBER NOT NULL, /* 결제방식 */
                         totalPrice NUMBER NOT NULL, /* 총가격 */
                         payDate DATE NOT NULL /* 결제일자 */
);

COMMENT ON TABLE payment IS '새 테이블3';

COMMENT ON COLUMN payment.payNum IS '결제번호';

COMMENT ON COLUMN payment.orderNum IS '예매번호';

COMMENT ON COLUMN payment.memberNum IS '회원번호';

COMMENT ON COLUMN payment.milesNum IS '마일리지번호';

COMMENT ON COLUMN payment.paymentType IS '결제방식';

COMMENT ON COLUMN payment.totalPrice IS '총가격';

COMMENT ON COLUMN payment.payDate IS '결제일자';

CREATE UNIQUE INDEX PK_payment
    ON payment (
                payNum ASC
        );

/* 새 테이블11 */
CREATE TABLE ordertbl (
    orderNum NUMBER NOT NULL /* 예매번호 */
);

COMMENT ON TABLE ordertbl IS '새 테이블11';

COMMENT ON COLUMN ordertbl.orderNum IS '예매번호';

CREATE UNIQUE INDEX PK_ordertbl
    ON ordertbl (
                 orderNum ASC
        );

/* 새 테이블18 */
CREATE TABLE orderedFlight (
                               orderedFilghtNum NUMBER NOT NULL, /* 주문여정번호 */
                               orderNum NUMBER, /* 예매번호 */
                               foodNum NUMBER, /* 기내식번호 */
                               CompanionNum NUMBER, /* 동승객번호 */
                               seatReserveNum NUMBER, /* 좌석일련번호 */
                               flightNum NUMBER NOT NULL /* 운행번호 */
);

COMMENT ON TABLE orderedFlight IS '새 테이블18';

COMMENT ON COLUMN orderedFlight.orderedFilghtNum IS '주문여정번호';

COMMENT ON COLUMN orderedFlight.orderNum IS '예매번호';

COMMENT ON COLUMN orderedFlight.foodNum IS '기내식번호';

COMMENT ON COLUMN orderedFlight.CompanionNum IS '동승객번호';

COMMENT ON COLUMN orderedFlight.seatReserveNum IS '좌석일련번호';

COMMENT ON COLUMN orderedFlight.flightNum IS '운행번호';

CREATE UNIQUE INDEX PK_orderedFlight
    ON orderedFlight (
                      orderedFilghtNum ASC
        );

/* 공지사항 게시판 */
CREATE TABLE noticeBoard (
                             noticeNum NUMBER NOT NULL, /* 일련번호 */
                             noticeType NUMBER NOT NULL, /* 글타입 */
                             subject VARCHAR2(200) NOT NULL, /* 제목 */
                             content CLOB NOT NULL, /* 글내용 */
                             hit NUMBER, /* 조회수 */
                             regdate DATE DEFAULT sysdate NOT NULL /* 등록일 */
);

COMMENT ON TABLE noticeBoard IS '공지사항 게시판';

COMMENT ON COLUMN noticeBoard.noticeNum IS '일련번호';

COMMENT ON COLUMN noticeBoard.noticeType IS '글타입';

COMMENT ON COLUMN noticeBoard.subject IS '제목';

COMMENT ON COLUMN noticeBoard.content IS '글내용';

COMMENT ON COLUMN noticeBoard.hit IS '조회수';

COMMENT ON COLUMN noticeBoard.regdate IS '등록일';

CREATE UNIQUE INDEX PK_noticeBoard
    ON noticeBoard (
                    noticeNum ASC
        );

/* 새 테이블8 */
CREATE TABLE miles (
                       milesNum NUMBER NOT NULL, /* 마일리지번호 */
                       point NUMBER, /* 포인트 */
                       startDate DATE DEFAULT sysdate
    /* 등록일 */
);

COMMENT ON TABLE miles IS '새 테이블8';

COMMENT ON COLUMN miles.milesNum IS '마일리지번호';

COMMENT ON COLUMN miles.point IS '포인트';

COMMENT ON COLUMN miles.startDate IS '등록일';

CREATE UNIQUE INDEX PK_miles
    ON miles (
              milesNum ASC
        );

/* 회원정보 */
CREATE TABLE member (
                        memberNum NUMBER NOT NULL, /* 회원번호 */
                        memberId VARCHAR2(15) NOT NULL, /* 아이디 */
                        memberPwd VARCHAR2(15) NOT NULL, /* 비밀번호 */
                        memberNameKor VARCHAR2(10) NOT NULL, /* 한글이름 */
                        memberNameEng VARCHAR2(30) NOT NULL, /* 영어이름 */
                        nation VARCHAR2(50) NOT NULL, /* 국가 */
                        gender VARCHAR2(1) NOT NULL, /* 성별 */
                        tel VARCHAR2(13) NOT NULL, /* 전화번호 */
                        altTel VARCHAR2(13), /* 유선전화 */
                        zipcode VARCHAR2(5) NOT NULL, /* 우편번호 */
                        addr VARCHAR2(100) NOT NULL, /* 주소 */
                        detailaddr VARCHAR2(50), /* 상세주소 */
                        email VARCHAR2(50) NOT NULL, /* 이메일 */
                        birthday VARCHAR2(10) NOT NULL, /* 생년월일 */
                        agree VARCHAR2(200) NOT NULL, /* 개인정보동의 */
                        directronic VARCHAR2(200), /* 이벤트동의 */
                        flightcnt NUMBER DEFAULT 0, /* 탑승횟수 */
                        regdate DATE DEFAULT sysdate
                            NOT NULL /* 등록일 */
);

COMMENT ON TABLE member IS '회원정보';

COMMENT ON COLUMN member.memberNum IS '회원번호';

COMMENT ON COLUMN member.memberId IS '아이디';

COMMENT ON COLUMN member.memberPwd IS '비밀번호';

COMMENT ON COLUMN member.memberNameKor IS '한글이름';

COMMENT ON COLUMN member.memberNameEng IS '영어이름';

COMMENT ON COLUMN member.nation IS '국가';

COMMENT ON COLUMN member.gender IS '성별';

COMMENT ON COLUMN member.tel IS '전화번호';

COMMENT ON COLUMN member.altTel IS '유선전화';

COMMENT ON COLUMN member.zipcode IS '우편번호';

COMMENT ON COLUMN member.addr IS '주소';

COMMENT ON COLUMN member.detailaddr IS '상세주소';

COMMENT ON COLUMN member.email IS '이메일';

COMMENT ON COLUMN member.birthday IS '생년월일';

COMMENT ON COLUMN member.agree IS '개인정보동의';

COMMENT ON COLUMN member.directronic IS '이벤트동의';

COMMENT ON COLUMN member.flightcnt IS '탑승횟수';

COMMENT ON COLUMN member.regdate IS '등록일';

CREATE UNIQUE INDEX PK_member
    ON member (
               memberNum ASC
        );

/* 새 테이블10 */
CREATE TABLE grade (
                       gradeType VARCHAR2(30) NOT NULL, /* 회원등급 */
                       needmiles NUMBER /* 등급필요포인트 */
);

COMMENT ON TABLE grade IS '새 테이블10';

COMMENT ON COLUMN grade.gradeType IS '회원등급';

COMMENT ON COLUMN grade.needmiles IS '등급필요포인트';

CREATE UNIQUE INDEX PK_grade
    ON grade (
              gradeType ASC
        );

/* 새 테이블4 */
CREATE TABLE food (
                      foodNum NUMBER NOT NULL, /* 기내식번호 */
                      foodType VARCHAR2(30), /* 기내식종류 */
                      foodName VARCHAR2(30), /* 기내식이름 */
                      foodImg VARCHAR2(100), /* 기내식이미지 */
                      foodContent VARCHAR2(255), /* 기내식설명 */
                      foodingredient VARCHAR2(255), /* 기내식재료 */
                      foodPrice NUMBER /* 기내식가격 */
);

COMMENT ON TABLE food IS '새 테이블4';

COMMENT ON COLUMN food.foodNum IS '기내식번호';

COMMENT ON COLUMN food.foodType IS '기내식종류';

COMMENT ON COLUMN food.foodName IS '기내식이름';

COMMENT ON COLUMN food.foodImg IS '기내식이미지';

COMMENT ON COLUMN food.foodContent IS '기내식설명';

COMMENT ON COLUMN food.foodingredient IS '기내식재료';

COMMENT ON COLUMN food.foodPrice IS '기내식가격';

CREATE UNIQUE INDEX PK_food
    ON food (
             foodNum ASC
        );

/* 장바구니3 */
CREATE TABLE flight (
                        flightNum NUMBER NOT NULL, /* 운행번호 */
                        airplaneName VARCHAR2(20) NOT NULL, /* 기종 */
                        productNum NUMBER NOT NULL, /* 상품번호 */
                        departTime VARCHAR2(30) NOT NULL, /* 출발시간 */
                        arriveTime VARCHAR2(30) NOT NULL, /* 도착시간 */
                        sale NUMBER /* 할인율 */
);

COMMENT ON TABLE flight IS '장바구니3';

COMMENT ON COLUMN flight.flightNum IS '운행번호';

COMMENT ON COLUMN flight.airplaneName IS '기종';

COMMENT ON COLUMN flight.productNum IS '상품번호';

COMMENT ON COLUMN flight.departTime IS '출발시간';

COMMENT ON COLUMN flight.arriveTime IS '도착시간';

COMMENT ON COLUMN flight.sale IS '할인율';

CREATE UNIQUE INDEX PK_flight
    ON flight (
               flightNum ASC
        );

/* 장바구니 */
CREATE TABLE favorite (
                          favoriteNum NUMBER NOT NULL, /* 관심노선번호 */
                          productNum NUMBER, /* 상품번호 */
                          memberNum NUMBER /* 회원번호 */
);

COMMENT ON TABLE favorite IS '장바구니';

COMMENT ON COLUMN favorite.favoriteNum IS '관심노선번호';

COMMENT ON COLUMN favorite.productNum IS '상품번호';

COMMENT ON COLUMN favorite.memberNum IS '회원번호';

CREATE UNIQUE INDEX PK_favorite
    ON favorite (
                 favoriteNum ASC
        );

/* 새 테이블6 */
CREATE TABLE event (
                       eventNum NUMBER NOT NULL, /* 이벤트일련번호 */
                       eventName VARCHAR2(50) NOT NULL, /* 이벤트제목 */
                       eventThumbnail VARCHAR2(100) NOT NULL, /* 썸네일이미지 */
                       eventImg VARCHAR2(100) NOT NULL, /* 이벤트이미지 */
                       eventContent VARCHAR2(255) NOT NULL, /* 이벤트내용 */
                       eventCompany VARCHAR(40) NOT NULL, /* 제휴사 */
                       startDate VARCHAR2(10) NOT NULL, /* 이벤트시작일 */
                       endDate VARCHAR2(10) NOT NULL, /* 이벤트마감일 */
                       regDate DATE DEFAULT sysdate /* 등록일 */
);

COMMENT ON TABLE event IS '새 테이블6';

COMMENT ON COLUMN event.eventNum IS '이벤트일련번호';

COMMENT ON COLUMN event.eventName IS '이벤트제목';

COMMENT ON COLUMN event.eventThumbnail IS '썸네일이미지';

COMMENT ON COLUMN event.eventImg IS '이벤트이미지';

COMMENT ON COLUMN event.eventContent IS '이벤트내용';

COMMENT ON COLUMN event.eventCompany IS '제휴사';

COMMENT ON COLUMN event.startDate IS '이벤트시작일';

COMMENT ON COLUMN event.endDate IS '이벤트마감일';

COMMENT ON COLUMN event.regDate IS '등록일';

CREATE UNIQUE INDEX PK_event
    ON event (
              eventNum ASC
        );

/* 새 테이블14 */
CREATE TABLE credit (
                        creditNum NUMBER NOT NULL, /* 카드일련번호 */
                        payNum NUMBER, /* 결제번호 */
                        company VARCHAR2(20) NOT NULL, /* 카드사 */
                        creditNo NUMBER NOT NULL, /* 카드번호 */
                        expireDate VARCHAR2(5) NOT NULL, /* 만료일 */
                        creditName VARCHAR2(10) NOT NULL /* 카드주인이름 */
);

COMMENT ON TABLE credit IS '새 테이블14';

COMMENT ON COLUMN credit.creditNum IS '카드일련번호';

COMMENT ON COLUMN credit.payNum IS '결제번호';

COMMENT ON COLUMN credit.company IS '카드사';

COMMENT ON COLUMN credit.creditNo IS '카드번호';

COMMENT ON COLUMN credit.expireDate IS '만료일';

COMMENT ON COLUMN credit.creditName IS '카드주인이름';

CREATE UNIQUE INDEX PK_credit
    ON credit (
               creditNum ASC
        );

/* 장바구니 */
CREATE TABLE cart (
);

COMMENT ON TABLE cart IS '장바구니';

/* 장바구니2 */
CREATE TABLE airport (
                         airportNum NUMBER NOT NULL, /* 공항번호 */
                         IATA VARCHAR2(5) NOT NULL, /* IATA코드 */
                         city VARCHAR2(50) NOT NULL, /* 도시 */
                         continent VARCHAR2(50) NOT NULL, /* 대륙 */
                         latitude VARCHAR2(20) NOT NULL, /* 위도 */
                         longitude VARCHAR2(20) NOT NULL, /* 경도 */
                         cityimg VARCHAR2(100) NOT NULL /* 도시이미지 */
);

COMMENT ON TABLE airport IS '장바구니2';

COMMENT ON COLUMN airport.airportNum IS '공항번호';

COMMENT ON COLUMN airport.IATA IS 'IATA코드';

COMMENT ON COLUMN airport.city IS '도시';

COMMENT ON COLUMN airport.continent IS '대륙';

COMMENT ON COLUMN airport.latitude IS '위도';

COMMENT ON COLUMN airport.longitude IS '경도';

COMMENT ON COLUMN airport.cityimg IS '도시이미지';

CREATE UNIQUE INDEX PK_airport
    ON airport (
                airportNum ASC
        );

/* 새 테이블2 */
CREATE TABLE airplane (
                          airplaneName VARCHAR2(20) NOT NULL, /* 기종 */
                          seatMAX NUMBER NOT NULL /* 비행기총좌석수 */
);

COMMENT ON TABLE airplane IS '새 테이블2';

COMMENT ON COLUMN airplane.airplaneName IS '기종';

COMMENT ON COLUMN airplane.seatMAX IS '비행기총좌석수';

CREATE UNIQUE INDEX PK_airplane
    ON airplane (
                 airplaneName ASC
        );

/* 회원정보2 */
CREATE TABLE admin (
                       adminNum NUMBER NOT NULL, /* 회원번호 */
                       adminId VARCHAR2(15) NOT NULL, /* 아이디 */
                       adminPwd VARCHAR2(15) NOT NULL, /* 비밀번호 */
                       adimName VARCHAR2(10) NOT NULL, /* 한글이름 */
                       adminTel VARCHAR2(13) NOT NULL, /* 전화번호 */
                       adminEmail VARCHAR2(50) NOT NULL, /* 이메일 */
                       adminRegdate DATE DEFAULT sysdate
                           NOT NULL /* 등록일 */
);

COMMENT ON TABLE admin IS '회원정보2';

COMMENT ON COLUMN admin.adminNum IS '회원번호';

COMMENT ON COLUMN admin.adminId IS '아이디';

COMMENT ON COLUMN admin.adminPwd IS '비밀번호';

COMMENT ON COLUMN admin.adimName IS '한글이름';

COMMENT ON COLUMN admin.adminTel IS '전화번호';

COMMENT ON COLUMN admin.adminEmail IS '이메일';

COMMENT ON COLUMN admin.adminRegdate IS '등록일';

CREATE UNIQUE INDEX PK_admin
    ON admin (
              adminNum ASC
        );

/* 새 테이블15 */
CREATE TABLE account (
                         accountNum NUMBER NOT NULL, /* 통장일련번호 */
                         payNum NUMBER, /* 결제번호 */
                         bankName VARCHAR2(20) NOT NULL, /* 은행명 */
                         accountNo NUMBER NOT NULL, /* 계좌번호 */
                         accountName VARCHAR2(10) NOT NULL /* 계좌주명 */
);

COMMENT ON TABLE account IS '새 테이블15';

COMMENT ON COLUMN account.accountNum IS '통장일련번호';

COMMENT ON COLUMN account.payNum IS '결제번호';

COMMENT ON COLUMN account.bankName IS '은행명';

COMMENT ON COLUMN account.accountNo IS '계좌번호';

COMMENT ON COLUMN account.accountName IS '계좌주명';

CREATE UNIQUE INDEX PK_account
    ON account (
                accountNum ASC
        );

/* 새 테이블9 */
CREATE TABLE MyMiles (
                         myMilesNum NUMBER NOT NULL, /* 일련번호 */
                         milesNum NUMBER, /* 마일리지번호 */
                         memberNum NUMBER /* 회원번호 */
);

COMMENT ON TABLE MyMiles IS '새 테이블9';

COMMENT ON COLUMN MyMiles.myMilesNum IS '일련번호';

COMMENT ON COLUMN MyMiles.milesNum IS '마일리지번호';

COMMENT ON COLUMN MyMiles.memberNum IS '회원번호';

CREATE UNIQUE INDEX PK_MyMiles
    ON MyMiles (
                myMilesNum ASC
        );

/* 새 테이블13 */
CREATE TABLE Companion (
                           CompanionNum NUMBER NOT NULL, /* 동승객번호 */
                           peopleNum NUMBER NOT NULL, /* 승객타입분류번호 */
                           CompanionName VARCHAR2(10) NOT NULL, /* 이름 */
                           CompanionBirth VARCHAR2(10) NOT NULL, /* 생년월일 */
                           isDisabled NUMBER /* 장애인여부 */
);

COMMENT ON TABLE Companion IS '새 테이블13';

COMMENT ON COLUMN Companion.CompanionNum IS '동승객번호';

COMMENT ON COLUMN Companion.peopleNum IS '승객타입분류번호';

COMMENT ON COLUMN Companion.CompanionName IS '이름';

COMMENT ON COLUMN Companion.CompanionBirth IS '생년월일';

COMMENT ON COLUMN Companion.isDisabled IS '장애인여부';

CREATE UNIQUE INDEX PK_Companion
    ON Companion (
                  CompanionNum ASC
        );
