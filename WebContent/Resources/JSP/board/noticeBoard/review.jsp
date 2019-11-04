<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객의 말씀</title>
<link rel="stylesheet" href="../../../CSS/navNfooter.css" type="text/css"/>
<link rel="stylesheet" href="../../../CSS/layout.css" type="text/css"/>
<link rel="stylesheet" href="../../../CSS/review.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../../HTML/not_using/main.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/Vendor/RichText/jquery.richtext.min.js"></script>
<link rel="stylesheet" href="../../../../Vendor/RichText/richtext.min.css">

<script>
function start(){
	//탭메뉴
	var btnIdList = ['btnReview', 'btnAsk'];
	var paneIdList = ['paneReview','paneAsk'];
	var btnList = ['이용후기','문의사항'];
	var tabBtnHTML = "";
	var tabPanelHTML = "";
	for(i=0; i<paneIdList.length; i++){
		tabBtnHTML += "<button class='tabBtn' id='"+btnIdList[i]+"' onclick='";
		tabBtnHTML += "openPage(\""+paneIdList[i]+"\", this, \""+btnIdList[i]+"\")'>";
		tabBtnHTML += "<img src='../../../IMG/icon/check.png'/>"+btnList[i]+"</button> ";
	}
	document.getElementById("tabBtn").innerHTML = tabBtnHTML;
	
	//로드 시 열리는 페이지 선택
	document.getElementById("btnReview").click();
	
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
$(function(){
	$("#editor").richText({
	});
});
</script>
</head>
<body onload="start()">
<%@ include file="../../common/nav.jspf" %>
		<div id="contents">
			<section id="title">
				<h3>고객의 말씀</h3>
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
					<div id="paneReview" class='tabcontent'>
						<div class='boardList'>
							<table class="boardTbl">
								<colgroup>
									<col width="60%">
									<col width="15%">
									<col width="15%">
									<col width="10%">
								</colgroup>
								<thead>
									<tr>
										<td><h4><a href="#"><span class="noticeTag">BEST</span>
										가자에어 기내식 이코노미석 인천에서 자그레브 직항 대실망...</a></h4>가자에어 기내식 이코노미석 인천에서 자그레브 직항 대실망...</td>
										<td>아이디: hi0933</td>
										<td>조회수 4,528</td>
										<td>2019.08.28</td>
									</tr>
									<tr>
										<td><h4><a href="#"><span class="noticeTag">BEST</span>
										가자에어 하노이 탑승후기, 비즈니스 클래스, 기내식</a></h4>가자에어 하노이 탑승후기, 비즈니스 클래스, 기내식</td>
										<td>아이디: seif23</td>
										<td>조회수 2,893</td>
										<td>2019.07.31</td>
									</tr>
									<tr>
										<td><h4><a href="#"><span class="noticeTag">BEST</span>
										인천-밀라노 가자에어 KE927 프레스티지 슬리피 좌석 및...</a></h4>인천-밀라노 가자에어 KE927 프레스티지 슬리피 좌석 및...</td>
										<td>아이디: liewi</td>
										<td>조회수 5,528</td>
										<td>2019.06.28</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><h4><a href="#"><span class="noticeTag">new</span>
										9월 날씨, 인천-다낭 가자에어 탑승 후기, 포켓 와이파이</a></h4>9월 날씨, 인천-다낭 가자에어 탑승 후기, 포켓 와이파이</td>
										<td>아이디: 3943we</td>
										<td>조회수 1,578</td>
										<td>2019.09.29</td>
									</tr>
									<tr>
										<td><h4><a href="#">[모스크바/러시아] 항공리뷰 : 가자에어(GAZA Air)...</a></h4>
										[모스크바/러시아] 항공리뷰 : 가자에어(GAZA Air)...</td>
										<td>아이디: harry</td>
										<td>조회수 3,022</td>
										<td>2019.09.28</td>
									</tr>
									<tr>
										<td><h4><a href="#">동유럽 여행 :) 가자에어 KE0935, KE0938</a></h4>
										동유럽 여행 :) 가자에어 KE0935, KE0938</td>
										<td>아이디: poter</td>
										<td>조회수 528</td>
										<td>2019.09.27</td>
									</tr>
									<tr>
										<td><h4><a href="#">방콕 항공권, 가자에어 KE657 후기! 태국 수완나폼 고고</a></h4>
										방콕 항공권, 가자에어 KE657 후기! 태국 수완나폼 고고</td>
										<td>아이디: rotterdam</td>
										<td>조회수 28</td>
										<td>2019.09.18</td>
									</tr>
									<tr>
										<td><h4><a href="#">라운지, 가자에어 기내식 과일식 (feat. 공항철도는 어디에서..</a></h4>
										라운지, 가자에어 기내식 과일식 (feat. 공항철도는 어디에서..</td>
										<td>아이디: note32</td>
										<td>조회수 1,320</td>
										<td>2019.08.28</td>
									</tr>
									<tr>
										<td><h4><a href="#">괌여행 - 가자에어 프레스티지석 / 웨스틴호텔</a></h4>
										괌여행 - 가자에어 프레스티지석 / 웨스틴호텔</td>
										<td>아이디: ssieow12</td>
										<td>조회수 128</td>
										<td>2019.08.20</td>
									</tr>
									<tr>
										<td><h4><a href="#">유럽 비행기표예약 & 인천-비엔나 가자에어 KE937 탑승과 근황</a></h4>
										유럽 비행기표예약 & 인천-비엔나 대한항공 KE937 탑승과 근황</td>
										<td>아이디: weoj23</td>
										<td>조회수 728</td>
										<td>2019.08.16</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="pagingDiv">
							<div id="pagination"></div>
						</div>
					</div>
				</div>
					<div id="paneAsk" class='tabcontent'>
						<div class='boardList'>
							<div class="askWrap">
								<form id="askForm" name="askForm">
									<div>
										<div>질문 분류</div>
										<select>
											<option>예매/결제</option>
											<option>취소/환불</option>
											<option>회원정보</option>
											<option>이벤트</option>
											<option>영수증</option>
											<option>마일리지</option>
											<option>분쟁</option>
											<option>신고하기</option>
											<option>고객의소리</option>
										</select>
									</div>
									<div>
										<div>제목</div>
										<input type="text" id="askTitle" name="askTitle" />
									</div>
									<div>
										<textarea id="editor"></textarea>
									</div>
									<div>
										<input type="submit" id="askSubmit" class="blueBtn" value="문의하기"/>
									</div>
								</form>
							</div>
						</div>
					</div>
			</section>
			
		</div>
		<%@ include file="../../common/footer.jspf" %>
</body>
</html>