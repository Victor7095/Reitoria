<%-- 
    Document   : manutencao
    Created on : 07/06/2018, 13:44:35
    Author     : Natan S. dos Santos
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página em Manutenção</title><link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <%@page import="com.br.OMT.models.*"%>
        <%@include file="../header.jsp"%>
        <%!HttpSession session;%>
        <%!Discente u;%>
        <%!Entidade e;%>
        <%if (request.getSession().getAttribute("usuario") != null && request.getSession().getAttribute("entidade") != null) {%>
        <%e = (Entidade) request.getSession().getAttribute("entidade");%>
        <%if (e.getTipo() == 'R') {%>
        <%@include file="../reitoria/reitoriaMenu.jsp"%>
        <%} else if (e.getTipo() == 'C') {%>
        <%@include file="../campus/campusMenu.jsp"%>
        <%}%>
        <%} else if (request.getSession().getAttribute("usuario") != null && request.getSession().getAttribute("entidade") == null) {%>
        <%@include file="../discente/alunoMenu.jsp"%>
        <%}%>
        <div class="container">
            <div class="text-center">
                <img src="../img/Icons/errors/aviso_manutencao.png" alt="Página em Manutenção">
            </div>
        </div>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
    </body>
</html>
