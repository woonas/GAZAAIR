<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="../../../CSS/navNfooter.css" type="text/css"/>
<link rel="stylesheet" href="../../../CSS/layout.css" type="text/css"/>
<link rel="stylesheet" href="../../../CSS/notice.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body onload="start()">
	<%@ include file="../../common/nav.jspf" %>
	<section class="content">
		<div id="contents">
			<section id="title">
				<h3>공지사항</h3>
				<div class="search">
					<select name="searchOption" id="searchOption" class="searchOption" title="검색 분류 선택">
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
								<tbody>
								<c:forEach var="v" items="${lst}">
									<tr>
										<td>
											<h4><span class="noticeTag">
												<c:if test="${v.type == 0}">
													공지
												</c:if>
												<c:if test="${v.type == 1}">
													NEW
												</c:if>
												</span>
												<a href="<%=request.getContextPath()%>/Resources/JSP/board/noticeBoard/noticeBoard_view.do?num=${v.num}&pageNum=${vo.pageNum}">${v.subject }</a>
												<br>
											</h4>
											${v.content }
										</td>
										<td>조회수 ${v.hit}</td>
										<td>${v.regdate}</td>
									</tr>
								</c:forEach>
							</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="pagingDiv">
					<div id="pagination">
						<c:if test="${vo.pageNum<=1}">
							<a href="#" onclick="return false;" class="pageNum" >prev</a>
						</c:if>
						<c:if test="${vo.pageNum>1}">
							<a href="<%=request.getContextPath() %>/Resources/JSP/board/noticeBoard/noticeBoard_list.do?pageNum=${vo.pageNum-1}">prev</a>
						</c:if>
						
						<c:if test="${vo.totalPage >= vo.startPage+vo.onePageMax-1 }">
							<c:set var="printPage" value="${vo.startPage+vo.onePageMax-1 }" />
						</c:if>
						
						<c:if test="${vo.totalPage < vo.startPage+vo.onePageMax-1 }">
							<c:set var="printPage" value="${vo.totalPage }" />
						</c:if>
						
						<c:forEach var="i" begin="${vo.startPage}" end="${printPage }">
							<c:if test="${i<=vo.totalPage}">
								<c:if test="${i == vo.pageNum }">
									<a href="<%=request.getContextPath() %>/Resources/JSP/board/noticeBoard/noticeBoard_list.do?pageNum=${i}" class="pageNum active">${i}</a>
								</c:if>
								<c:if test="${i != vo.pageNum }">
									<a href="<%=request.getContextPath() %>/Resources/JSP/board/noticeBoard/noticeBoard_list.do?pageNum=${i}" class="pageNum">${i}</a>
								</c:if>
							</c:if>
						</c:forEach>
						
						<c:if test="${vo.pageNum==vo.totalPage}">
							<a href="#" onclick="return false;" class="pageNum">next</a><br/>
						</c:if>
						<c:if test="${vo.pageNum<vo.totalPage}">
							<a href="<%=request.getContextPath() %>/Resources/JSP/board/noticeBoard/noticeBoard_list.do?pageNum=${vo.pageNum+1}">next</a><br/>
						</c:if>
					</div>
				</div>
			</section>
		</div>
	</section>
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
				tabBtnHTML += "<img src='../../../IMG/icon/check.png'/>"+btnList[i]+"</button> ";
			}
			document.getElementById("tabBtn").innerHTML = tabBtnHTML;
			
			//로드 시 열리는 페이지 선택
			document.getElementById("btnAll").click();
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
	<%@ include file="../../common/footer.jspf" %>
	<script src="../../../JS/common.js"></script>
</body>
</html>