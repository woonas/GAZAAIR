<%--
  Created by IntelliJ IDEA.
  User: gyzz
  Date: 11/8/19
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>기내 Wi-Fi</title>
        <link rel="stylesheet" href="../../CSS/information.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
        <%@ include file="../common/nav.jspf" %>
        <%@ include file="info_nav.jspf" %>
        <section class="content">
            <h3>기내 Wi-Fi</h3>
            <br>
            <p class="section-title">기내 Wi-Fi 및 항공 로밍 서비스 안내</p>
            <div>기내에서 실시간 정보 검색은 물론 전화 통화까지 편리하게 이용하실 수 있습니다.</div>
            <p class="section-title">기내 Wi-Fi 사용 안내</p>
            <ul class="list-type2">
                <li>기내 Wi-Fi 사용가능 기종 : A350</li>
                <li>기내 Wi-Fi 요금제 구매 : A350 탑승 후 개인 휴대전화 및 디바이스를 통해 구매 가능</li>
                <li>기내 Wi-Fi 요금제 : 1시간 이용 - USD 11.95 / 3시간 이용 - USD 16.95 / 비행 중 무제한 - USD 21.95</li>
            </ul>
            <br><br>
            <table class="table-list wifi-table">
                <col-group>
                    <col style="width: 33.33%; height: 700px; padding: 30px;">
                    <col style="width: 33.33%; height: 700px; padding: 30px;">
                    <col style="height: 700px; padding: 30px;">
                </col-group>
                <tbody>
                    <tr>
                        <td class="text-align-center">
                            <br>
                            <div class="number-wrapper">01</div>
                            <p>[OZ Wi-Fi] 선택</p>
                            <br>
                            <img src="../../IMG/information/wifi/img_cabin_wifi_01.png" alt="">
                            <br>
                            <br>
                            <div>
                                Wi-Fi가 가능한 개인 기기에서 <br>
                                “OZ Wi-Fi 선택하십시요.
                            </div>
                            <br>
                        </td>
                        <td class="text-align-center">
                            <br>
                            <div class="number-wrapper">02</div>
                            <p>웹브라우저 실행</p>
                            <br>
                            <img src="../../IMG/information/wifi/img_cabin_wifi_02.png" alt="">
                            <br>
                            <br>
                            <div>
                                웹브라우저를 실행하십시오. <br>
                                자동으로 아시아나 포털사이트로 연결됩니다.
                            </div>
                            <br>
                        </td>
                        <td class="text-align-center">
                            <br>
                            <div class="number-wrapper">03</div>
                            <p>[go online] 버튼 클릭</p>
                            <br>
                            <img src="../../IMG/information/wifi/img_cabin_wifi_03.png" alt="">
                            <br>
                            <br>
                            <div>
                                Gaza Portal 자동 연결 후 <br>
                                “go online” 버튼을 클릭하십시오.
                            </div>
                            <br>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-align-center">
                            <br>
                            <div class="number-wrapper">04</div>
                            <p>요금제 선택</p>
                            <br>
                            <img src="../../IMG/information/wifi/img_cabin_wifi_04.png" alt="">
                            <br>
                            <br>
                            <div>
                                요금제를 선택하여 주세요.
                            </div>
                            <br>
                        </td>
                        <td class="text-align-center">
                            <br>
                            <div class="number-wrapper">05</div>
                            <p>로그인</p>
                            <br>
                            <img src="../../IMG/information/wifi/img_cabin_wifi_05.png" alt="">
                            <br>
                            <br>
                            <div>
                                로그인 후 사용할 수 있으며, 계정이 없을 경우 <br>
                                신규 가입하신 후 사용 가능합니다.
                            </div>
                            <br>
                        </td>
                        <td class="text-align-center">
                            <br>
                            <div class="number-wrapper">06</div>
                            <p>요금결제</p>
                            <br>
                            <img src="../../IMG/information/wifi/img_cabin_wifi_06.png" alt="">
                            <br>
                            <br>
                            <div>
                                파나스카이 계정이 없을 경우 <br>
                                신규 가입 하시기 바랍니다.
                            </div>
                            <br>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="font-brown">* 결제 완료 시점부터 사용 시간이 적용되며, 사용유무와 관계없이 시간 경과 후 종료</div>
            <br>
            <p class="section-title">기내 로밍(Roaming) 사용 안내</p>
            <ol id="wifi-ol">
                <li>기내에서 휴대전화를 이용하실 수 있습니다. (음성 통화 및 문자 메시지) 이용을 원치 않으시면 비행기 모드로 설정하십시오.</li>
                <li>기내 로밍 서비스를 이용하시려면 휴대폰을 켜고 비행기 모드를 해제하십시오.</li>
                <li>자동으로 연결되며, 안내 문자 메시지가 수신됩니다. 자동 연결이 안 될 경우, 휴대전화 네트워크 설정에서 Aeromobile을 선택하십시오.</li>
                <li>이제 음성 통화와 문자 메시지 이용이 가능합니다. 기내 로밍 요금은 휴대전화 통신사에서 부과합니다.</li>
            </ol>
            <p class="section-title">기내 로밍 사용료(Roaming Fee)</p>
            <p>휴대전화 통신사에서 별도 부과</p>
        </section>
        <%@ include file="../common/footer.jspf" %>
        <script src="../../JS/information.js"></script>
    </body>
</html>
