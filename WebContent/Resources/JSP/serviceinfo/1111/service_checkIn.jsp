<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체크인</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../../HTML/not_using/main.js"></script>
<style>
hr {
	margin-bottom: 20px;
	margin:15px 0 15px 0;
	height: 1px;
	border: none;
	background-color: #aaa;
}

h4 {
	float: left;
	text-weight: bold;
	color: black;
	margin: 5px 0 30px;
}

#warp {
	width: 100%;
}

#contents {
	max-width: 1200px;
	margin: 0px auto;
}

#title {
	height: 200px;
	text-align: center;
}

#title h1 {
	margin: 55px 0;
}

.checkBtn {
	background-color: #777;
	color: white;
	float: left;
	border: 1px solid gray;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 17px;
	font-weight: bold;
	width: 50%;
}

.checkBtn>img {
	width: 20px;
	height: 20px;
}

.checkBtn:hover {
	background-color: #555;
}

.onContent {
	display: none;
	padding: 100px 20px;
	height: 100%;
}

table {
	width: 100%;
	height: 200px;
	text-align: center;
	color: black;
	font-size: 17px;
	border-collapse: collapse;
	margin-bottom:15px;
}

table td {
	border: 1px solid black;
}

.mainT {
	font-size: 18px;
	background: #6d6e70;
	color: white;
}

.li {
	margin-left: 19px;
	margin-bottom: 10px;
	text-align: left;
	list-style-type:none;
}
</style>
<script>

 //이미지 추가
	$(function(){
		for(i=1;i<=4;i++){
			$("#setImg").append("<img src='../IMG/service/c"+i+".png'/>");

			$("#acSetImg").append("<img src='../IMG/service/ac"+i+".png'/>");
		}
		
/* 			$('#n1').show(); //페이지를 로드할 때 표시할 요소
			$('#n2').hide(); //페이지를 로드할 때 숨길 요소
			$('#n1').click(function(){
			$('#n1').hide(); //클릭 시 첫 번째 요소 숨김
			$('#n2').show(); //클릭 시 두 번째 요소 표시
			$('#c1').hide();
			$('#c2').style("display","block");
			return false;
			}); */
			
	});	 
	
	function start() {
		//탭메뉴
		var btnIdList = [ 'onCheckAll', 'autoCheckAll' ];
		var paneIdList = [ 'onCheck', 'autoCheck' ];
		var btnList = [ '온라인 체크인', '오토 체크인' ];
		var i;
		var checkBtnHTML = "";
		var tabPanelHTML = "";
		for (i = 0; i < paneIdList.length; i++) {
			checkBtnHTML += "<button class='checkBtn' id='" + btnIdList[i]
					+ "' onclick='openPage(\"" + paneIdList[i] + "\", this, \""
					+ btnIdList[i] + "\")'><img src='../../../IMG/icon/check.png'/>"
					+ btnList[i] + "</button> ";
		}
		document.getElementById("checkBtn").innerHTML = checkBtnHTML;

		// 기본값 선택
		document.getElementById("onCheckAll").click();
		
	}
	function openPage(pageName, elmnt, btnId) {
		var i, onContent, checkBtns;

		// 전체 숨김
		onContent = document.getElementsByClassName("onContent");
		for (i = 0; i < onContent.length; i++) {
			onContent[i].style.display = "none";
		}

		// 배경색 삭제
		checkBtns = document.getElementsByClassName("checkBtn");
		for (i = 0; i < checkBtns.length; i++) {
			checkBtns[i].style.backgroundColor = "";
			checkBtns[i].style.color = "";
			var imgTag = checkBtns[i].firstChild;
			imgTag.style.display = "none";
		}
		
		// 클릭된 컨텐츠 보이기
		document.getElementById(pageName).style.display = "block";

		// 클릭된 버튼 색상 변경
		elmnt.style.backgroundColor = "#fff";
		elmnt.style.color = "#555";
	
	}
</script>
</head>
<body onload="start()">
	<%@ include file="../../common/nav.jspf" %>
		<div id="contents">
			<section id="title">
				<h3 style="margin-bottom:">체크인</h3>
			</section>
			<section id="online">
				<div id="checkBtn"></div>
				<div id="tabPanel" >
					<div id="onCheck" class='onContent'	>
						<!-- 온라인 체크인 이용안내 테이블 -->
						<h4>이용 안내</h4>
						<table>
							<thead>
								<tr>
									<td class="mainT">구분</td>
									<td class="mainT">이용 시간</td>
									<td class="mainT">이용 노선</td>
									<td class="mainT">이용 대상</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="mainT">국내선</td>
									<td>출발 48시간 ~ 30분 전까지</td>
									<td rowspan="2">전 노선</td>
									<td rowspan="2">항공권 결제가 완료된 전자항공권(E-Ticket)소지 고객</td>
								</tr>
								<tr>
									<td scope="row" class="mainT">국제선</td>
									<td>출발 48시간 ~ 1시간 전까지 <br> (미주 노선은 출발 24시간 전부터)
									</td>
								</tr>
							</tbody>
						</table>
						<ul>
							<li>· 이용 제한 노선 : 부산 출발 국내선 및 일부 부정기편</li>
							<li>· 이용 제한 대상 : 타사 항공기로 운항하는 공동운항편 이용 고객</li>
						</ul>
						<hr />
						<!-- 이용 안내 div -->
						<h4>이용 방법</h4>
						<div id="useDiv"></div>
						<div id="viewImg">
							<div id="setImg"></div>
							<div id="ctr">
								<div></div><div></div><div></div><div></div>
							</div>
						</div>						
						<div id="idx"></div>
					</div>
					<!-- 오토 체크인 이용안내 테이블 --> 
						<div id="autoCheck" class="onContent">
						<h4>이용 안내</h4>
						<table>
							<tbody>
								<tr>
									<td class="mainT">이용 시간</td>
									<td>- 항공권 결제 이후 ~ 출발 48시간 전까지 (국내선 출발 30일 전, 국제선 출발 361일 전부터 가능합니다.)</td>
								</tr>
								<tr>
									<td class="mainT">이용 대상</td>
									<td>-항공권 결제가 완료된 모든 이용고객 모바일 탑승권 발급 가능한 노선 <br/>* 이용 제한 대상: 단체 예약 및 만 2세 미만 유아 동반 고객, 특별서비스 신청 고객(UM, YPTA 등) 공동운항편 이용 고객)
									</td>
								</tr>
							</tbody>
						</table>
						<!-- 이용 안내 div --> 
						<h4>이용 방법</h4>
						<div id="acUseDiv"></div>
						<div id="acViewImg">
							<div id="acSetImg"></div>
							<div id="acCtr">
								<div></div><div></div><div></div><div></div>
							</div>
						</div>
						</div>
				</div> 
			</section>	
		</div>

	</div>
	<%@ include file="../../common/footer.jspf" %>
</body>
</html>