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
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <jsp:include page="../header.jsp" />
        <jsp:include page="reitoriaMenu.jsp" /> 
        <div class="container">
            <div class="card">
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
        <jsp:include page="../footer.jsp" />
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
    </body>
</html>


