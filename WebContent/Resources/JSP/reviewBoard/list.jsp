<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<style>
	body{width:800px;margin:0 auto}
	ul,li{list-style-type:none;padding:0;margin:0;}
	div ul{width:800px}
	div li{float:left}
	div li{width:100px}
	div li:nth-child(2){width:400px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis}
	
</style>
</head>
<body>
<h1>게시판 목록</h1>
총레코드수 : ${vo.totalRecord }
총페이지 : ${vo.pageNum }/${vo.totalPage } 
<div>
	<ul>
		<li>번호</li>
		<li>제목</li>
		<li>글쓴이</li>
		<li>조회수</li>
		<li>날짜</li>
	</ul>
	<c:forEach var="v" items="${lst }">
	<ul>
		<li>${v.num }</li>
		<li><a href="<%=request.getContextPath()%>/Resources/JSP/reviewBoard/view.do?num=${v.num }&pageNum=${vo.pageNum}">${v.subject }</a></li>
		<li>${v.userId }</li>
		<li>${v.hit }</li>
		<li>${v.regDate }</li>
	</ul>
	</c:forEach>
</div>
	<c:if test="${vo.pageNum<=1 }">
		prev
	</c:if>
	<c:if test="${vo.pageNum>1 }">
		<a href="<%=request.getContextPath()%>/Resources/JSP/reviewBoard/list.do?pageNum=${vo.pageNum-1 }">prev</a>
	</c:if>
	
	<c:forEach var="i" begin="${vo.startPage }" end="${vo.startPage+vo.onePageMax-1 }">
		<c:if test="${i<=vo.totalPage }">
			<a href="<%=request.getContextPath()%>/Resources/JSP/reviewBoard/list.do?pageNum=${i }">${i }</a>
		</c:if>
	</c:forEach>
	
	<c:if test="${vo.pageNum==vo.totalPage }">
		next
	</c:if>
	<c:if test="${vo.pageNum<vo.totalPage }">	
		<a href="<%=request.getContextPath()%>/Resources/JSP/reviewBoard/list.do?pageNum=${vo.pageNum+1 }">next</a><br/>
	</c:if>
	
<a href="<%=request.getContextPath()%>/Resources/JSP/reviewBoard/index.do">홈</a>
<a href="<%=request.getContextPath()%>/Resources/JSP/reviewBoard/write.do">글쓰기</a>

</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객의 말씀</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/main.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/layout.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/review.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/Resources/JS/main.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/Vendor/RichText/jquery.richtext.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Vendor/RichText/richtext.min.css">

</head>
<body onload="start()">
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
								<tbody>
									<c:forEach var="v" items="${lst}">
										<tr>
											<td>
												<h4><a href="<%=request.getContextPath() %><%=request.getContextPath()%>/Resources/JSP/reviewBoard/view.do?num=${v.num}&pageNum=${vo.pageNum}">${v.subject }</a></h4>
												${v.content }
											</td>
											<td>아이디: ${v.writer }</td>
											<td>조회수 ${v.hit }</td>
											<td>${v.regDate }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<a href="<%=request.getContextPath() %>/index.do">홈</a>
				<a href="<%=request.getContextPath() %>/Resources/JSP/reviewBoard/write.do">글쓰기</a>
			</section>
		</div>
								

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
		tabBtnHTML += "<img src='../IMG/icon/check.png'/>"+btnList[i]+"</button> ";
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
<%@ include file="../nav.jspf" %>
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
								<tbody>
									<c:forEach var="v" items="${lst}">
										<tr>
											<td>
												<h4><a href="#">${v.subject }</a></h4>
												${v.content }
											</td>
											<td>아이디: ${v.writer }</td>
											<td>조회수 ${v.hit }</td>
											<td>${v.regDate }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</section>
		</div>
<%@ include file="../footer.jspf" %>
</body>
</html>