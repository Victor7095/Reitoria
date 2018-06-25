<%-- 
    Document   : estagios
    Created on : 07/06/2018, 15:19:56
    Author     : Natan S. dos Santos
--%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Estágios</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/general.css">
    </head>
    <body>
        <%@include file="../header.jsp"%>  
        <% if (request.getSession().getAttribute("usuario") != null) {%>

        <%@include file="alunoMenu.jsp"%>  
        <h1>Hello World!</h1>
        <%} else {%>
        <h1> Acesso negado <a href="../home.jsp">Volte para a tela de login </a></h1>
        <%}%>
        <%@include file="../footer.jsp"%>
    </body>
</html>
