<%-- 
    Document   : erro
    Created on : 07/06/2018, 13:44:44
    Author     : Natan S. dos Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERRO 500</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">
        <!-- bootstrap 4.x is supported. You can also use the bootstrap css 3.3.x versions -->
        <link rel="stylesheet" href="../fileinput/css/bootstrap.css">
        <link href="../fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
        <!-- optionally uncomment line below if using a theme or icon set like font awesome (note that default icons used are glyphicons and `fa` theme can override it) -->
        <script defer src="../fileinput/js/fontawesome-all.min.js"></script> 
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/forms.css">
        <link rel="stylesheet" type="text/css" href="../CSS/general.css">  
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
        <a href="../home.jsp"> Página Inicial</a>|
        <a href="#"> Página do IFAM </a>
        <div class="center-align card">
            <img src="../img/Icons/errors/error_500.png" alt="error 500">
        </div>
        <jsp:include page="../footer.jsp"/>
        <script src="/OMT/js/jquery-3.3.1.min.js"></script>
        <script src="/OMT/js/popper.min.js"></script>
        <script src="/OMT/js/bootstrap.js"></script>
        <script src="/OMT/js/mdb.min.js"></script>
    </body>
</html>
