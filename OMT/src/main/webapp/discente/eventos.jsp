<%-- 
    Document   : eventos
    Created on : 11/06/2018, 00:02:19
    Author     : vinic
--%>

<%@page import="com.br.OMT.DAO.EventoDAO"%>
<%@page import="com.br.OMT.models.Eventos"%>
<%@page import="com.br.OMT.DAO.FotosEventosDAO"%>
<%@page import="com.br.OMT.models.FotosEventos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Eventos</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">
    </head>
    <body>
        <div class="container">
            <% List<Eventos> list = new EventoDAO().listEventos(); // Request Sessão
                for (Eventos e : list) {
            %>
            <h3>ID: <%=e.getId()%></h3>
            <h3>Nome: <%=e.getNome()%></h3>
            <h3>Descrição: <%=e.getDescricao()%></h3>
            <%
                List<FotosEventos> list2 = new FotosEventosDAO().listFotosEventos(e.getId()); // Request Sessão
                if (list2 != null && list2.size() > 0) {%>
            <div class="carousel carousel-slider">
                <%   for (FotosEventos fe : list2) {%>
                <a class="carousel-item" href="#one!"><img src="/OMT/EventosServlet?id=<%=fe.getId()%>"></a>
                    <%}%>
            </div>
            <%}%>
            <%}%>
        </div>
        <script src="../JS/jquery-3.2.1.min.js"></script>
        <script src="../JS/jquery.mask.js"></script>
        <script src="../JS/mask.js"></script>
        <script src="../CSS/parallax-template/js/materialize.js"></script>
        <script>
            $(document).ready(function () {
                $('.carousel.carousel-slider').carousel({
                    fullWidth: true,
                    indicators: true
                });
            });
        </script>
    </body>
</html>
