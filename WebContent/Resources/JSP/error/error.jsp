<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류페이지</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/layout.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/main.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/Resources/JS/main.js"></script>
<style>
	#content{
		max-width : 1200px;
		margin: 0 auto;
	}
	#content>div:first-child{
		width: 100%;
		margin-top: 50px;
		text-align: center;
	}
	#content>div:first-child img{
		margin: 0 auto;
		width: 500px;
	}
	h3{
		margin: 10px 0;
		width: 150px;
		background-color: #36f;
		color: #fff;
		margin: 0 auto;
		border-radius: 10px;
	}
</style>
</head>
<body>
<%@ include file="/Resources/JSP/nav.jspf" %>
<section>
	<div id="content">
		<div>
			<img src="<%=request.getContextPath() %>/Resources/IMG/etc/error.png"/>		
		</div>
		<div>
			<h3>404</h3>
			<b>죄송합니다.</b>
			<b>요청하신 페이지를 찾을 수 없습니다.</b>
			<p>
				방문하시려는 페이지의 주소가 잘못 입력되었거나,<br/>
				페이지의 주소가 변경 혹은 삭제되어 요청하신 페이지를 찾을 수 없습니다.<br/>
				입력하신 주소가 정확한지 다시 한번 확인해 주시기 바랍니다.<br/>
				관련 문의사항은 가자에어 고객센터에 알려주시면 친절하게 안내해 드리겠습니다.<br/>
				감사합니다.
			</p>
		</div>
	</div>
</section>
<%@ include file="/Resources/JSP/footer.jspf" %>
</body>
</html>