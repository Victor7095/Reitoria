<%-- 
    Document   : erro
    Created on : 07/06/2018, 13:12:49
    Author     : Natan S. dos Santos
--%>
<%@page import="com.br.OMT.models.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERRO 404</title>
        <script defer src="../fileinput/js/fontawesome-all.min.js"></script> 
        <link rel="stylesheet" type="text/css" href="/OMT/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="/OMT/css/mdb.min.css">  
        <link rel="stylesheet" type="text/css" href="/OMT/css/fontawesome-all.css">
        <link rel="stylesheet" type="text/css" href="/OMT/css/style.css">  
    </head>
    <body>
        <jsp:include page="../header.jsp"/>
        <c:if test="${not empty usuario}">
            <c:if test="${usuario['class'].name eq 'com.br.OMT.models.Discente'}">
                <jsp:include page="/discente/menu.jsp"/>
            </c:if>
            <c:if test="${usuario['class'].name eq 'com.br.OMT.models.Usuario'}">
                <c:if test="${entidade.tipo eq 'R'.charAt(0)}">
                    <jsp:include page="/reitoria/menu.jsp"/>
                </c:if>
                <c:if test="${entidade.tipo eq 'C'.charAt(0)}">
                    <jsp:include page="/campus/menu.jsp"/>
                </c:if>
            </c:if>
        </c:if>
        <div class="container">
            <div class="text-center">
                <img src="/OMT/img/Icons/errors/error_404.png" alt="error 404">
            </div>
        </div>
        <jsp:include page="../footer.jsp"/>
        <script src="/OMT/js/jquery-3.3.1.min.js"></script>
        <script src="/OMT/js/popper.min.js"></script>
        <script src="/OMT/js/bootstrap.js"></script>
        <script src="/OMT/js/mdb.min.js"></script>
        <script src="../js/general.js"></script>
    </body>
</html>
