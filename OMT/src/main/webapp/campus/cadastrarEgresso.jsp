<%-- 
    Document   : evento
    Created on : 28/05/2018, 20:39:30
    Author     : Gabriel San Martin
--%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="Sexo" class="com.br.OMT.Beans.SexoBean"/>
<jsp:useBean id="EstadoCivil" class="com.br.OMT.Beans.EstadoCivilBean"/>
<jsp:useBean id="Etnia" class="com.br.OMT.Beans.EtniaBean"/>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Egresso</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <jsp:include page="../header.jsp" />
        <jsp:include page="menu.jsp" />
        <jsp:include page="../cadastro/egresso.jsp" />
        <jsp:include page="../footer.jsp" />
    </body>
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/mdb.min.js"></script>
    <script src="../js/general.js"></script>
    <script src="../js/jquery.mask.min.js"></script>
    <script src="../js/mascaras.js"></script>
    <script>
        $('#cadastrar-egresso').submit(function () {
            $('#cpf').unmask('000.000.000-00');
            $('#rg').unmask('00.000.000-0');
        });
    </script>
</body>
</html>