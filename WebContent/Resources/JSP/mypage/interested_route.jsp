<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>관심노선</title>
        <link rel="stylesheet" href="../not_using/mypage.css">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/navNfooter.css" type="text/css"/>
        <script>window.onbeforeunload = () => window.scrollTo(0, 0)</script>
    </head>
    <body>
    <%@ include file="../common/nav.jspf" %>
        <section class="content">
            <h3>관심노선</h3>
            <div class="clearfix">
                <div class="section-title">
                    <a href = "#"><input type="button" value="관심노선추가" class="blueBtn"></a>
                </div>
                <div>
                
                </div>
            </div>
        </section>
        <script src="../../JS/common.js"></script>
        <script src="../../JS/mypage.js"></script>
        <%@ include file="../common/footer.jspf" %>
    </body>
</html>