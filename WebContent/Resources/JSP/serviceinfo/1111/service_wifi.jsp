<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유료 부가서비스</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../../HTML/not_using/main.js"></script>
<style>
h4 {
	float: left;
	font-weight: bold;
	color: black;
	font-size:25px;
}
nav {
	width: 100%;
	height: 70px;
	background-color: gray;
}

#warp {
	width: 100%;
	height:2200px;
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
.onContent {
	display: none;
	padding: 100px 20px;
	height: 100%;
}
li{
	list-style-type:none;
}
</style>
<script>
</script>
</head>
<body>
<%@ include file="../../common/nav.jspf" %>
		<div id="contents">
			<section id="title">
				<h3>기내 WI-FI</h3>
				<h4>기내 WI-FI 및 항공 로밍 서비스 안내</h4><br/><br/>
				<div style="float:left">기내에서 실시간 정보 검색은 물론 전화 통화까지 편리하게 이용하실 수 있습니다.</div><br/><br/>
				<h4>기내 WI-FI 사용 안내</h4><br/><br/>
				<div>
				<ul>
					<li style="float:left; margin-bottom:10px;">· 기내 WI-FI 요금제 구매 : 항공기 탑승 후 개인 휴대전화 및 디바이스를 통해 구매 가능</li>
					<li style="float:left; margin-bottom:10px;">· 기내 WI-FI 요금제 : 1시간 이용 - USD 11.95 / 3시간 이용 - USD 16.95 / 비행중 무한 - USD 21.95</li>
				</ul>
				</div>
				<div>
					<img src="../../../IMG/service/wifi.png" style="width:100%;"/>
					<img src="../../../IMG/service/wifi2.png" style="width:100%;"/>
				</div><br/>
				<div>
				<font style="color:#ab7d55; float:left"> * 결제 완료 시점부터 사용 시간이 적용되며, 사용유무와 관계없이 시간 경과 후 종료</font>
				</div><br/>
				<h4 style="margin:15px 0 15px 0;">기내 로밍(Roaming) 사용 안내</h4><br/><br/><br/>
				<ol>
					<li style="float:left; margin-bottom:10px;">1.기내에서 휴대전화를 이용하실 수 있습니다. (음성 통화 및 문자 메시지) 이용을 원치 않으시면 비행기 모드로 설정하십시오.</li>
					<li style="float:left; margin-bottom:10px;">2.기내 로밍 서비스를 이용하시려면 휴대폰을 켜고 비행기 모드를 해제하십시오.</li>
					<li style="float:left; margin-bottom:10px;">3.자동으로 연결되며, 안내 문자 메시지가 수신됩니다. 자동 연결이 안 될 경우, 휴대전화 네트워크 설정에서 Aeromobile을 선택하십시오.</li>
					<li style="float:left; margin-bottom:10px;">4.이제 음성 통화와 문자 메시지 이용이 가능합니다. 기내 로밍 요금은 휴대전화 통신사에서 부과합니다.</li>	
				</ol>
			</section>
		</div>	
	</div>
	<%@ include file="../../common/footer.jspf" %>
</body>
</html>