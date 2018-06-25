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
        <title>Home Aluno - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/forms.css">
        <link rel="stylesheet" type="text/css" href="../CSS/general.css">
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <%@include file="alunoMenu.jsp"%>    
        <div class="center-align container row" >
            <%-- <%@include file="alunoMenu.jsp"%> MENU--%>
            <div class="card col s10">
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
            <div class=" center-align col s4">
            <nav id="nav_news" class=" col s10"> 
                <a class="tab" title="primeira" href="#"><<</a>
                <a class="tab" title="anterior" href="#"><</a>
                <a class="tab" title="atual" href="#">Página atual</a>
                <a class="tab" title="proxima" href="#">></a>
                <a class="tab" title="ultima" href="#">>></a>
            </nav>
            </div>
            
        </div>
            <%@include file="../footer.jsp"%>
    </body>
</html>

