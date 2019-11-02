<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마일리지 내역</title>
<link rel="stylesheet" href="../../CSS/main.css" type="text/css"/>
<link rel="stylesheet" href="../../CSS/layout.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
	#contents{
		max-width: 1200px;
		margin: 0px auto;
	}
	#usable_miles>div{
		text-align: center;
	}
	#usable_miles b{
		color: #36f;
		font-size: 200%;
	}
	#usable_miles>table{
		border-top: 2px solid #aaa;
		margin: 30px auto;
		width: 80%;
		height: 200px;
		line-height: 50px;
		border-collapse: collapse;
		text-align: right;
	}
	#usable_miles td{
		padding: 0 15px;
	}
	#usable_miles tbody td:first-child{
		text-align: left;
	}
	#usable_miles tbody td:last-child{
		color: #36f;
		font-weight: bold;
	}
	#usable_miles td:last-child{
		border-right: 0;
	}
	#usable_miles thead{
		text-align: center;
	}
	#usable_miles>table td{
		border-right: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
	}
	#usable_miles tr:last-child{
		border-bottom: 2px solid #ccc;
	}
	#usable_miles tbody tr:last-child{
		background-color: #eee;
	}
	#miles_info{
		width: 80%;
		margin: 0 auto;
	}
	#miles_info ul, miles_lnfo li{
		list-style-type: none;
	}
	#miles_info li:last-child{
		text-align: right;
		line-height: 60px;
	}
	#miles_info button{
		width: 170px;
		height: 40px;	
	}
	#milesSearch{
		width: 80%;
		height: 200px;
		margin: 0 auto;
	}
	#milesSearch>div:first-child{
		width: 20%;
		height: 200px;
		background-color: #ccc;
		float:left;
		line-height: 50px;
	}
	#milesSearch>div:first-child>div{
		height: 50px;
	}
	#milesSearch>div:last-child{
		width: 100%;
		height: 200px;
		background-color: gray;
	}
	#milesForm input[type=radio]{
		opacity: 0.2;
		z-index: 9999;
		position: relative;
		margin-left: 2%;
		cursor : pointer;
	}
	#milesForm span{
		margin-left: -1%;
	}
	#milesForm>div{
		width: 100%;
		height: 50px;
		line-height: 50px;
		border: 1px solid white;
	}
	#milesForm input[type=radio]:checked + div{
		background: url(../../IMG/icon/check_round_blue.png) no-repeat;
		background-size: 100%;
	}
	.radioCover{
		width: 15px;
		height: 15px;
		background-color: white;
		display: inline-block;
		position: relative;
		left: -2%;
		z-index: 0;
		background: url(../IMG/icon/check_round_empty.png) no-repeat;
		background-size: 100%;
	}
	#milesForm>div:nth-child(3) input{
		opacity: 0.2;
	}
	.radioBtn{
		display: inline-block;
		background-color: black;
		width: 10%;
		height: 40px;
		border-radius : 5px;
		text-align: center;
		line-height: 40px;
	}
	#milesSearch>div:first-child{padding-left:30px}
		
</style>
<%
	String name = "홍길동";
	String point = "0";
%>
</head>
<body>
<%@ include file="../../JSP/nav.jspf" %>
	<div id="contents">
		<h3>적립/사용 내역</h3>
		<div id="usable_miles">
			<div>
				<h4><% out.println(name); %>님의 사용가능 마일리지</h4>
				<h4><b><% out.println(point); %></b>마일</h4>
			</div>
			<table>
				<colgroup>
					<col width="25%">
					<col width="25%">
					<col width="25%">
					<col width="25%">
				</colgroup>
				
				<thead>
					<tr>
						<td>구분</td>
						<td>적립마일리지</td>
						<td>사용마일리지</td>
						<td>잔여 마일리지</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>유효기간 미적용</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
					</tr>
					<tr>
						<td>유효기간 적용</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
					</tr>
					<tr>
						<td>합계</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
					</tr>
				</tbody>
				
			</table>
		</div>
		<div id="miles_info">
			<ul>
				<li>&bull;&nbsp;2008년 10월 1일부터 적립하는 마일리지는 유효기간이 적용됩니다.</li>
				<li>&bull;&nbsp;회원 등급별 마일리지 유효기간은 매직 마일즈, 실버, 골드 회원은 10년, 다이아몬드, 다이아몬드 플러스, 
					플래티늄 회원은 12년입니다.
				</li>
				<li><button class="blueBtn">마일리지 유효기간 안내</button></li>
			</ul>
		</div>
		<h3>적립/사용 상세내역 조회</h3>
		<div id="milesSearch">
			<div>
				<div>구분</div>
				<div>조회기간</div>
			</div>
			
			<div>
				<form method="post" id="milesForm" name="milesForm">
					<div>
						<input type="radio" name="milesKind" id="kindAll" value="kindAll">
						<div class="radioCover"></div><span>전체</span>
						<input type="radio" name="milesKind" id="kindSave" value="kindSave">
						<div class="radioCover"></div><span>적립</span>
						<input type="radio" name="milesKind" id="kindUse" value="kindUse">
						<div class="radioCover"></div><span>사용</span>
					</div>
					<div>
						<input type="radio" name="milesPeriod" id="period" value="period">
						<div class="radioCover"></div><span>기간으로 조회</span>
						<input type="radio" name="milesPeriod" id="register" value="register">
						<div class="radioCover"></div><span>가입일로부터 조회</span>
					</div>
					<div>
						<input type="radio" id="periodNum1" name="periodNum" value="1">
						<label class="radioBtn" for="periodNum1">1개월</label>
						<input type="radio" id="periodNum3" name="periodNum" value="3">
						<label class="radioBtn" for="periodNum3">3개월</label>
						<input type="radio" id="periodNum6" name="periodNum" value="6">
						<label class="radioBtn" for="periodNum6">6개월</label>
						<input type="radio" id="periodNum12" name="periodNum" value="12">
						<label class="radioBtn" for="periodNum12">1년</label>
						<input type="radio" id="periodNum0" name="periodNum" value="0">
						<label class="radioBtn" for="periodNum0">직접선택</label>
					</div>
					<div>
						달력 ---- 달력 <input type="submit" value="조회하기">
					</div>
				</form>	
			</div>
		</div>
	</div>
<%@ include file="../../JSP/footer.jspf" %>
</body>
</html>