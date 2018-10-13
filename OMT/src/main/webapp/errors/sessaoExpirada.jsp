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
        <title>Sessão expirada</title>
        <script defer src="../fileinput/js/fontawesome-all.min.js"></script> 
        <link rel="stylesheet" type="text/css" href="/OMT/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="/OMT/css/mdb.min.css">  
        <link rel="stylesheet" type="text/css" href="/OMT/css/fontawesome-all.css">
        <link rel="stylesheet" type="text/css" href="/OMT/css/style.css">  
    </head>
    <body>
        <jsp:include page="../header.jsp"/>
        <div class="container my-4">
            <div class="text-center py-4"> 
                <i class="fa fa-exclamation-circle fa-4x red-text mb-3 animated tada infinite"></i>
                <p class="h1-responsive">Sua sessão expirou. <a href="../home.jsp">Volte</a> para a tela de login e entre novamente.</p>
            </div>
        </div>
        <jsp:include page="../footer.jsp"/>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/mdb.min.js"></script>
        <script src="../js/general.js"></script>
    </body>
</html>
