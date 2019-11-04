<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>회원탈퇴</title>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/my_page.css">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
        <style>
            .btn-wrapper>input[type=button] {
                margin-top: 30px;
                margin-bottom: 70px;
                border-radius: 0;
                padding: 15px 40px;
                width: 150px;
                font-size: 120%;
            }
            .btn-wrapper>input[type=button] { margin-right: 20px; }
            #caution{
            	display: none;
            }
        </style>
        <script>
        	$(function(){
        		//취소버튼 누르면 뒤로
        		$(".whiteBtn").click(function(){
        			history.back();
        		});
        		//동의 안하면 회원탈퇴 못하게.
        		$(".blueBtn").click(function(){
        			if(!$("#agree_1").is(":checked")){
        				$(".blueBtn").prop("disabled", true);
            			$("#caution").css("display", "block");
        			}
        		});
        		
        		$("#agree_1").click(function(){
        			if($("#agree_1").is(":checked")){
        				$(".blueBtn").prop("disabled", false);
            			$("#caution").css("display", "none");
        			}else{
        				$(".blueBtn").prop("disabled", true);
            			$("#caution").css("display", "block");
        			}
        		});
        	});
        	
        </script>
    </head>
    <body>
    <%@ include file="../../common/nav.jspf" %>
        <section class="content">
            <h3>회원탈퇴</h3>
            <br>
            <ul class="list-type2 last-note">
                <li class="list-inside-title">회원 탈퇴 신청 전 유의사항</li>
                <li>가자에어 회원번호 및 적립된 마일리지는 그대로 유지됩니다.</li>
                <li>인터넷 회원가입 정보 중 아이디(ID), 비밀번호가 삭제됩니다. 그 외의 정보는 그대로 유지되며, 이메일 수신에 동의하신 회원님께서는 기존대로 이메일이 발송됩니다.</li>
            </ul>
            <br>
            <form method="post" action="<%=request.getContextPath()%>/Resources/JSP/mypage/account_deleteOk.do">
            <div class="table-form">
                <div class="row clearfix">
                    <div class="table-row-title">
                        회원 아이디
                    </div>
                    <div>
                        <input type="text" name="memberId" value="${memberId }" style="width: 296px;" readonly>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="table-row-title">
                        비밀번호 확인
                    </div>
                    <div>
                        <input type="password" placeholder="비밀번호를 입력하세요" name="pwdChk" style="width: 296px;">
                    </div>
                </div>
            </div>
            
            <ul class="list-type4">
                <li>
                    <input type="checkbox" class="checkbox1" id="agree_1">
                    <label for="agree_1">위의 유의사항을 확인하였고, 웹사이트 회원 탈퇴에 동의합니다.</label>
                </li>
                <li id="caution" class="font-red">*회원 탈퇴에 동의하신 후 회원탈퇴가 가능합니다.</li>
            </ul>
            
            <div class="button-wrapper">
                <input type="submit" class ="blueBtn" value="회원탈퇴">
                <input type="button" class ="whiteBtn" value="취소">
            </div>
            </form>
        </section>
        <script src="<%=path %>/Resources/JS/common.js"></script>
        <%@ include file="../../common/footer.jspf" %>
    </body>
</html>