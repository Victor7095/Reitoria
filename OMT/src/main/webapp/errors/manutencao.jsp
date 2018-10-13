<%-- 
    Document   : manutencao
    Created on : 07/06/2018, 13:44:35
    Author     : Natan S. dos Santos
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página em Manutenção</title>
        <link rel="stylesheet" href="/OMT/css/bootstrap.css"/>
        <link rel="stylesheet" href="/OMT/css/mdb.css"/>
        <link rel="stylesheet" href="/OMT/css/fontawesome-all.css">
        <link rel="stylesheet" href="/OMT/css/style.css">
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
                <img src="../img/Icons/errors/aviso_manutencao.png" alt="Página em Manutenção">
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
