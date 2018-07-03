<%-- 
    Document   : pagina_inicial
    Created on : 07/06/2018, 15:17:41
    Author     : Natan S. dos Santos
--%>

<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home Reitoria - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/forms.css">
        <link rel="stylesheet" type="text/css" href="../CSS/general.css">
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <% if (request.getSession().getAttribute("usuario") != null) {%>

        <%@include file="campusMenu.jsp"%>   
        <div class="center-align container row" >
            <%-- <%@include file="alunoMenu.jsp"%> MENU--%>
            <div class="card col s12 l10 offset-l1">
                <div class="card-content" id="recentBlock1">
                    <input type="image" src="" name="recent1">
                    <label id="recentText1"/>
                </div>   
                <div class="card-content" id="recentBlock2">
                    <input type="image" src="" name="recent2">
                    <label id="recentText2"/>
                </div>    
                <div class="card-content" id="recentBlock3">
                    <input type="image" src="" name="recent3">
                    <label id="recentText3"/>
                </div>    
                <div class="card-content" id="recentBlock4">
                    <input type="image" src="" name="recent3">
                    <label id="recentText2"/>
                </div>    
            </div>
        </div>
        <%} else {%> 
        <h1> Acesso negado <a href="../home.jsp">Volte para a tela de login </a></h1>
        <%}%>
        <%@include file="../footer.jsp"%>
    </body>
</html>


