<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isErrorPage="true" %>
<c:set var="errorCode" value="${requestScope['javax.servlet.error.status_code']}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류페이지</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/layout.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/Resources/HTML/not_using/main.js"></script>
<script src="error.js"></script>
<style>
	#content{
		max-width : 1200px;
		margin: 0 auto;
		padding: 100px 0 150px;
	}
	#content>div{
		width: 1000px;
		margin: 0 auto;
	}
	.col-two-fifth{
		height: 330px;
		text-align: center;
		float: left;
	}
	.col-three-fifth{
		height: 330px;
		line-height: 40px;
		padding-left: 60px;
	}
	.col-three-fifth>b:first-child{
		font-size: 200%;
	}
	.col-two-fifth img{
		margin: 0 auto;
		width: 400px;
	}
	h3{
		margin: 10px 0;
		width: 150px;
		height: 40px;
		line-height: 40px;
		font-size: 180%;
		background-color: #ceeaef;
		color: #fff;
		margin: 0 auto;
		border-radius: 10px;
	}
	button{
		width: 120px;
		height: 30px;
	}
</style>
<script>
	$(function(){
		$("button").click(function(){
			location.href = "../../..";
		});
	});
</script>
</head>
<body>
<%@ include file="/Resources/JSP/common/nav.jspf" %>
<section>
	<div id="content">
		<div class="row clearfix">
			<div class="col-two-fifth">
				<img src="<%=request.getContextPath() %>/Resources/IMG/etc/error.png"/>
				<h3>${errorCode } 에러</h3>		
			</div>
			<div class="col-three-fifth" >
				<c:if test="${errorCode==404 }">
				<b>죄송합니다.</b><br/><br/>
				<b>요청하신 페이지를 찾을 수 없습니다.</b>
				<p>
					방문하시려는 페이지의 주소가 잘못 입력되었거나,<br/>
					페이지의 주소가 변경 혹은 삭제되어 요청하신 페이지를 찾을 수 없습니다.<br/>
					입력하신 주소가 정확한지 다시 한번 확인해 주시기 바랍니다.<br/>
					관련 문의사항은 가자에어 고객센터에 알려주시면 친절하게 안내해 드리겠습니다.<br/>
					감사합니다.
				</p>
				</c:if>
				<c:if test="${errorCode!=400 }">
				<b>죄송합니다.</b><br/><br/>
				<b>기술적인 문제로 서비스에 접속이 되지 않았습니다.</b>
				<p>
					일시적인 현상으로, 잠시 후 다시 이용해 보시면 정상 접속될 수 있습니다.<br/>
					담당부서에서 확인중이나, 문제가 계속되는 경우 접속 오류에 대해<br/>
					가자에어 고객센터로 연락 부탁 드립니다.<br/>
					이용에 불편을 드려 다시 한 번 사과 드립니다.<br/>
				</p>
				</c:if>
				<button class="blueBtn">홈으로 이동</button>
			</div>
		</div>
	</div>
</section>
<%@ include file="/Resources/JSP/common/footer.jspf" %>
</body>
</html>