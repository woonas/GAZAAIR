<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>비밀번호 재확인</title>
        <!--        bootstrap validator-->
        <link rel="stylesheet" href="<%=request.getContextPath() %>/Vendor/bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/Vendor/bootstrapValidator/bootstrapValidator.css"/>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath() %>/Vendor/bootstrapValidator/bootstrapValidator.js"></script>
        
        <link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/my_page.css">
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
    <%@ include file="../../common/nav.jspf" %>
        <section class="content">
            <h3>비밀번호 확인</h3>
            <ul class="list-type2 list-border">
                <li>회원님의 개인 정보를 안전하게 보호하기 위해 아시아나항공은 비밀번호를 암호화하여 저장, 관리하고 있습니다.</li>
            </ul>
            <form id="defaultForm" method="post" action="<%=path %>/Resources/JSP/mypage/password_changeOk.do" class="form-horizontal">
                <fieldset>
                    <div class="table-form pw-change-table">
                        <div class="form-group row clearfix">
                            <div class="control-label table-row-title">기존 비밀번호</div>
                            <div class="col-xs-3" style="width: 345px;">
                                <input type="password" class="form-control" required placeholder="비밀번호를 입력하세요"
                                       name="oldPassword">
                            </div>
                            <div style="clear: right; width: 675px"></div>
                        </div>
                        <div class="form-group row clearfix">
                            <div class="control-label table-row-title">신규 비밀번호</div>
                            <div class="col-xs-3" style="width: 345px;">
                                <input type="password" class="form-control" required placeholder="영문+숫자+특수문자 8~20자리"
                                       name="password">
                            </div>
                        </div>
                        <div class="form-group row clearfix">
                            <div class="control-label table-row-title">신규 비밀번호 확인</div>
                            <div class="col-xs-3" style="width: 345px;">
                                <input type="password" class="form-control" required placeholder="영문+숫자+특수문자 8~20자리"
                                       name="confirmPassword">
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="form-group">
                    <div class="button-wrapper">
                        <a href=""><input type="submit" class="btn confirm blueBtn" value="확인"></a>
                    </div>
                </div>
            </form>
            <ul class="list-type2 last-note bg-gray6">
                <li class="list-inside-title">유의사항</li>
                <li>영문 대/소문자, 숫자, 특수문자 중 세 가지 이상 조합하여 8 ~ 20자리 이내 입력</li>
                <li>사용가능한 특수문자 : ! # $ * - . / : = ? @ [ \ ] ^ _ { | } ~</li>
                <li>한글, 공백, 동일숫자, 연속숫자 3자리 이상, 아시아나클럽 회원 아이디 및 회원번호 입력 불가</li>
                <li>생년월일, 이메일, 휴대전화 번호(마지막 4자리) 등 타인이 쉽게 유추 가능한 비밀번호의 사용은 불가합니다.</li>
                <li>비밀번호 변경은 3개월 이내에 주기적으로 변경하시기를 권해 드립니다.</li>
            </ul>
        </section>
        <script src="<%=path %>/Resources/JS/validator.js"></script>
        <script src="<%=path %>/Resources/JS/common.js"></script>
        <%@ include file="../../common/footer.jspf" %>
    </body>
</html>