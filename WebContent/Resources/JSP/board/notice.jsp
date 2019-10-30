<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="../../CSS/main.css" type="text/css"/>
<link rel="stylesheet" href="../../CSS/notice.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../JS/main.js"></script>
<script>
function start(){
	//탭메뉴
	var btnIdList = ['btnAll', 'btnGAZA', 'btnPartner', 'btnOthers'];
	var paneIdList = ['noticeAll','noticeGAZA','noticePartner','noticeOthers'];
	var btnList = ['전체','가자항공소식','제휴사소식','기타'];
	var tabBtnHTML = "";
	var tabPanelHTML = "";
	for(i=0; i<paneIdList.length; i++){
		tabBtnHTML += "<button class='tabBtn' id='"+btnIdList[i]+"' onclick='";
		tabBtnHTML += "openPage(\""+paneIdList[i]+"\", this, \""+btnIdList[i]+"\")'>";
		tabBtnHTML += "<img src='../../IMG/icon/check.png'/>"+btnList[i]+"</button> ";
	}
	document.getElementById("tabBtn").innerHTML = tabBtnHTML;
	
	//로드 시 열리는 페이지 선택
	document.getElementById("btnAll").click();
	
	//pagination 생성
	var pageCnt = 5;
	var pageBtnHTML = "<a href='#'>&laquo;</a>";
	for(i=1; i<=pageCnt; i++){
		pageBtnHTML += "<a href='#' class='pageNum' onclick='clicked(this)'>"+i+"</a>";
	}
	pageBtnHTML += "<a href='#'>&raquo;</a>";
	document.getElementById("pagination").innerHTML = pageBtnHTML;
	document.getElementById("pagination").childNodes[1].classList.add('active');
	
}
function clicked(elmnt){//클릭된 페이지버튼에 클래스 추가
	var allPageNum = document.getElementsByClassName("pageNum");
	for(i=0; i<allPageNum.length; i++){
		allPageNum[i].classList.remove('active');
	}
	elmnt.classList.add('active');
}
function openPage(pageName, elmnt, btnId) {//탭메뉴 클릭시 열리는 페이지 생성
	var i, tabcontent, tabBtns;
	
	// 전체 숨김
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}

	// 배경색, 체크이미지 전체 삭제
	tabBtns = document.getElementsByClassName("tabBtn");
	for (i = 0; i < tabBtns.length; i++) {
		tabBtns[i].style.backgroundColor = "";
		tabBtns[i].style.color = "";
		var imgTag = tabBtns[i].firstChild;
		imgTag.style.visibility = "hidden";
	}
	
	//체크 이미지 보이기
	elmnt.firstChild.style.visibility = "visible";

	// 클릭된 컨텐츠 보이기
	document.getElementById(pageName).style.display = "block";

	// 클릭된 버튼 색상 변경
	elmnt.style.backgroundColor = "#fff";
	elmnt.style.color = "#555";
}
</script>
</head>
<body onload="start()">
<div id="warp">
<%@ include file="../nav.jspf" %>
		<div id="contents">
			<section id="title">
				<h3>공지사항</h3>
				<div class="search">
					<select name="searchOption" id="searchOption" class="searchOption" title="검색 분류 선택" value="0">
					<option value="0">제목 + 내용</option>
					<option value="1">제목</option>
					<option value="2">내용</option>
					</select>
					<input type="text" class="textField" placeholder="검색어를 입력하세요." title="검색 내용 작성"/>
					<button class="searchBtn">검색</button>
				</div>
			</section>
			<section id="board">
				<div id="tabBtn"></div>
				<div id="tabPanel">
					<div id="noticeAll" class='tabcontent'>
						<div class='boardList'>
							<table class="boardTbl">
								<colgroup>
									<col width="75%">
									<col width="15%">
									<col width="10%">
								</colgroup>
								<thead>
									<tr>
										<td><h4><a href="#"><span class="noticeTag">공지</span>
										국제선/국내선 좌석 유료 사전예매 시행 안내</a></h4>국제선/국내선 좌석 유료 사전예매 시행 안내</td>
										<td>조회수 4,528</td>
										<td>2019.08.28</td>
									</tr>
									<tr>
										<td><h4><a href="#"><span class="noticeTag">공지</span>
										제주공항 위탁수하물 접수 시간 안내</a></h4>제주공항발 위탁수하물은 공항 혼잡도 예방을 위하여, 항공기 출발 4시간 전부터 국내선 탑승수속 카운터에 위탁하실 수 있습니다.</td>
										<td>조회수 2,893</td>
										<td>2019.07.31</td>
									</tr>
									<tr>
										<td><h4><a href="#"><span class="noticeTag">공지</span>
										인천 ↔ 뉴욕(JFK) 노선 증편 운항 안내 (매일 2편 운항!)</a></h4>인천 ↔ 뉴욕(JFK) 노선 증편 운항 안내 (매일 2편 운항!)</td>
										<td>조회수 5,528</td>
										<td>2019.06.28</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><h4><a href="#"><span class="noticeTag">new</span>
										2019년 10월 한국출발 국제선 유류할증료</a></h4>2019년 10월 한국출발 국제선 유류할증료</td>
										<td>조회수 1,578</td>
										<td>2019.09.29</td>
									</tr>
									<tr>
										<td><h4><a href="#">추석 연휴기간 사전(웹/모바일)체크인 이용 권유 안내</a></h4>
										추석 연휴기간 사전(웹/모바일)체크인 이용 권유 안내</td>
										<td>조회수 3,022</td>
										<td>2019.09.28</td>
									</tr>
									<tr>
										<td><h4><a href="#">항공사 e-티켓 확인증 사칭 악성 메일 주의 안내</a></h4>
										항공사 e-티켓 확인증 사칭 악성 메일 주의 안내</td>
										<td>조회수 528</td>
										<td>2019.09.27</td>
									</tr>
									<tr>
										<td><h4><a href="#">10월 국내선 유류할증료</a></h4>
										10월 국내선 유류할증료</td>
										<td>조회수 28</td>
										<td>2019.09.18</td>
									</tr>
									<tr>
										<td><h4><a href="#">맥북 프로 15인치 베트남 노선 운송 불가 안내</a></h4>
										베트남 당국의 요청으로 배터리 화재의 위험이 있는 맥북 프로 15인치의 운송이 금지됩니다.</td>
										<td>조회수 1,320</td>
										<td>2019.08.28</td>
									</tr>
									<tr>
										<td><h4><a href="#">국내선 셀프체크인 전면 시행 안내</a></h4>
										국내선 셀프체크인 전면 시행 안내</td>
										<td>조회수 128</td>
										<td>2019.08.20</td>
									</tr>
									<tr>
										<td><h4><a href="#">아비앙카 인 브라질항공 (O6) 스타얼라이언스 탈퇴 및 제휴 종료 안내</a></h4>
										아비앙카 인 브라질항공 (O6)는 2019년 9월 1일부로 스타얼라이언스에서 탈퇴함에 따라 당사와 아비앙카 인 브라질항공 (O6)...</td>
										<td>조회수 728</td>
										<td>2019.08.16</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div id="noticeGAZA" class='tabcontent'>
						<div class='boardList'>
							<table class="boardTbl">
								<colgroup>
									<col width="75%">
									<col width="15%">
									<col width="10%">
								</colgroup>
								<thead>
									<tr>
										<td><h4><a href="#"><span class="noticeTag">공지</span>
										국제선/국내선 좌석 유료 사전예매 시행 안내</a></h4>국제선/국내선 좌석 유료 사전예매 시행 안내</td>
										<td>조회수 4,528</td>
										<td>2019.08.28</td>
									</tr>
									<tr>
										<td><h4><a href="#"><span class="noticeTag">공지</span>
										제주공항 위탁수하물 접수 시간 안내</a></h4>제주공항발 위탁수하물은 공항 혼잡도 예방을 위하여, 항공기 출발 4시간 전부터 국내선 탑승수속 카운터에 위탁하실 수 있습니다.</td>
										<td>조회수 2,893</td>
										<td>2019.07.31</td>
									</tr>
									<tr>
										<td><h4><a href="#"><span class="noticeTag">공지</span>
										인천 ↔ 뉴욕(JFK) 노선 증편 운항 안내 (매일 2편 운항!)</a></h4>인천 ↔ 뉴욕(JFK) 노선 증편 운항 안내 (매일 2편 운항!)</td>
										<td>조회수 5,528</td>
										<td>2019.06.28</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><h4><a href="#">추석 연휴기간 사전(웹/모바일)체크인 이용 권유 안내</a></h4>
										추석 연휴기간 사전(웹/모바일)체크인 이용 권유 안내</td>
										<td>조회수 3,022</td>
										<td>2019.09.28</td>
									</tr>
									<tr>
										<td><h4><a href="#">항공사 e-티켓 확인증 사칭 악성 메일 주의 안내</a></h4>
										항공사 e-티켓 확인증 사칭 악성 메일 주의 안내</td>
										<td>조회수 528</td>
										<td>2019.09.27</td>
									</tr>
									<tr>
										<td><h4><a href="#">맥북 프로 15인치 베트남 노선 운송 불가 안내</a></h4>
										베트남 당국의 요청으로 배터리 화재의 위험이 있는 맥북 프로 15인치의 운송이 금지됩니다.</td>
										<td>조회수 1,320</td>
										<td>2019.08.28</td>
									</tr>
									<tr>
										<td><h4><a href="#">국내선 셀프체크인 전면 시행 안내</a></h4>
										국내선 셀프체크인 전면 시행 안내</td>
										<td>조회수 128</td>
										<td>2019.08.20</td>
									</tr>
									<tr>
										<td><h4><a href="#">가자에어클럽 일반 규정 일부 개정 관련 안내</a></h4>
										2019년 9월 1일부로 고객의 안전과 서비스 향상을 위하여 아시아나클럽 일반 규정 일부가 개정되오니 이용에 참고하시기 바랍...</td>
										<td>조회수 1,578</td>
										<td>2019.08.18</td>
									</tr>
									<tr>
										<td><h4><a href="#">아비앙카 인 브라질항공 (O6) 스타얼라이언스 탈퇴 및 제휴 종료 안내</a></h4>
										아비앙카 인 브라질항공 (O6)는 2019년 9월 1일부로 스타얼라이언스에서 탈퇴함에 따라 당사와 아비앙카 인 브라질항공 (O6)...</td>
										<td>조회수 728</td>
										<td>2019.08.16</td>
									</tr>
									<tr>
										<td><h4><a href="#">19년 추석 기간 국내선 임시편 예약 오픈 안내</a></h4>
										19년 추석 기간 국내선 임시편 예약 오픈 안내</td>
										<td>조회수 10,503</td>
										<td>2019.08.15</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div id="noticePartner" class='tabcontent'>
						<div class='boardList'>
							<table class="boardTbl">
								<colgroup>
									<col width="75%">
									<col width="15%">
									<col width="10%">
								</colgroup>
								<tbody>
									<tr>
										<td><h4><a href="#">현대렌탈케어 마일리지 적립 신규제휴 개시 안내</a></h4>
										현대렌탈케어 마일리지 적립 신규제휴 개시 안내</td>
										<td>조회수 268</td>
										<td>2019.07.22</td>
									</tr>
									<tr>
										<td><h4><a href="#">삼성리워즈 포인트 제휴 종료 안내</a></h4>
										삼성리워즈 포인트 제휴 종료 안내</td>
										<td>조회수 542</td>
										<td>2019.07.02</td>
									</tr>
									<tr>
										<td><h4><a href="#">DB손해보험 다이렉트 자동차보험 마일리지 적립 신규 제휴 개시 안내</a></h4>
										DB손해보험 다이렉트 자동차보험 마일리지 적립 신규 제휴 개시 안내</td>
										<td>조회수 513</td>
										<td>2019.06.19</td>
									</tr>
									<tr>
										<td><h4><a href="#">이마트 제휴 - 적립요율 변경 안내</a></h4>
										이마트 제휴 - 적립요율 변경 안내</td>
										<td>조회수 1,008</td>
										<td>2019.06.04</td>
									</tr>
									<tr>
										<td><h4><a href="#">레스케이프(L’escape)호텔 마일리지 적립 신규제휴 개시 안내</a></h4>
										레스케이프(L’escape)호텔 마일리지 적립 신규제휴 개시 안내</td>
										<td>조회수 300</td>
										<td>2019.05.31</td>
									</tr>
									<tr>
										<td><h4><a href="#">트립닷컴(Trip.com) 마일리지 적립 신규제휴 개시 안내</a></h4>
										트립닷컴(Trip.com) 마일리지 적립 신규제휴 개시 안내</td>
										<td>조회수 3,870</td>
										<td>2019.04.25</td>
									</tr>
									<tr>
										<td><h4><a href="#">벅시(BUXI) 마일리지 적립 신규제휴 개시 안내 </a></h4>
										벅시(BUXI) 마일리지 적립 신규제휴 개시 안내 </td>
										<td>조회수 539</td>
										<td>2019.03.25</td>
									</tr>
									<tr>
										<td><h4><a href="#">국제선/국내선 좌석 유료 사전예매 시행 안내</a></h4>
										국제선/국내선 좌석 유료 사전예매 시행 안내</td>
										<td>조회수 4,528</td>
										<td>2019.08.28</td>
									</tr>
									<tr>
										<td><h4><a href="#">「드림플러스 아시아나」 체크카드 출시 안내</a></h4>
										「드림플러스 아시아나」 체크카드 출시 안내</td>
										<td>조회수 1,537</td>
										<td>2019.01.14</td>
									</tr>
									<tr>
										<td><h4><a href="#">타임즈 카 렌탈(Times Car Rental) 마일리지적립 신규제휴 개시 안내</a></h4>
										타임즈 카 렌탈(Times Car Rental) 마일리지적립 신규제휴 개시 안내</td>
										<td>조회수 598</td>
										<td>2018.11.19</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div id="noticeOthers" class='tabcontent'>
						<div class='boardList'>
							<table class="boardTbl">
								<colgroup>
									<col width="75%">
									<col width="15%">
									<col width="10%">
								</colgroup>
								<tbody>
									<tr>
										<td><h4><a href="#">삼성카드로 A380타고 5,000마일 받으세요</a></h4>
										삼성카드로 A380타고 5,000마일 받으세요</td>
										<td>조회수 2,268</td>
										<td>2014.06.22</td>
									</tr>
									<tr>
										<td><h4><a href="#">ADM Policy</a></h4>
										대리점을 위한 가자에어의 ADM(AGENT DEBIT MEMO) 운영 방식 공지입니다.</td>
										<td>조회수 1,542</td>
										<td>2014.05.21</td>
									</tr>
									<tr>
										<td><h4><a href="#">제주 항공권 7일간 할인 판매</a></h4>
										제주 항공권 미리 구매하세요. 딱, 7일 동안 70~75% 할인 항공권을 판매</td>
										<td>조회수 3,513</td>
										<td>2014.02.06</td>
									</tr>
									<tr>
										<td><h4><a href="#">KT 휴대폰 인증 일시 중단 안내</a></h4>
										12월 10일(화) 02시 ~ 04시, KT의 휴대폰 인증서비스가 일시 중단됩니다.</td>
										<td>조회수 33</td>
										<td>2013.12.14</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="pagingDiv">
					<div id="pagination"></div>
				</div>
			</section>
			
		</div>
		<%@ include file="../footer.jspf" %>
</div>
</body>
</html>