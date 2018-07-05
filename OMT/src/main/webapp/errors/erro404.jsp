<%-- 
    Document   : erro
    Created on : 07/06/2018, 13:12:49
    Author     : Natan S. dos Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERRO 404</title>
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
    <%} else if(request.getSession().getAttribute("usuario") != null && request.getSession().getAttribute("entidade") == null){%>
            <%@include file="../discente/alunoMenu.jsp"%>
    <%}%>
    <body>
        <a href="../home.jsp"> Página Inicial</a>|
        <a href="#"> Página do IFAM </a>
        <div class="center-align">

            <img src="../img/Icons/errors/error_404.png" alt="error 404">
        </div>
    </body>
</html>
