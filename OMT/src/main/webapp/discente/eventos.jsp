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
<%@page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Eventos</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">
        <link rel="stylesheet" type="text/css" href="../CSS/general.css">

    </head>
    <body>
        <%@include file="../header.jsp"%>
        <% if (request.getSession().getAttribute("usuario") != null) {%>

        <%@include file="alunoMenu.jsp"%>    
        <div class="container">
            <% List<Eventos> list = new EventoDAO().listEventos(); // Request Sessão
                //for (Eventos e : list) {
            %>
            <%--<% List<FotosEventos> list2 = new FotosEventosDAO().listFotosEventos(e.getId()); // Request Sessão
                if (list2 != null && list2.size() > 0) {%>
            <div class="carousel carousel-slider">
                <%   for (FotosEventos fe : list2) {%>
                <a class="carousel-item" href="#one!"><img src="/OMT/EventosServlet?id=<%=fe.getId()%>"></a>
                    <%}%>
                List<FotosEventos> list2 = new FotosEventosDAO().listFotosEventos(e.getId()); // Request Sessão
                if (list2 != null && list2.size() > 0) {%> 
            <div class="carousel carousel-slider">
                <%   for (FotosEventos fe : list2) {%>
                <a class="carousel-item" href="#one!"><img src="/OMT/EventosServlet?id=<%=fe.getId()%>"></a>
                    <%}%>
            </div>
            <%}%>
            <%}%>--%>
            <div class="container">
                <div class="card-panel">
                    <a href="/OMT/pdf">Olá mundo!</a>
                    <div class="row">
                        <%for (Eventos e : list) {%>
                        <div class="col s12 m6">
                            <div class="carousel carousel-slider center">
                                <%
                                    List<FotosEventos> list2 = new FotosEventosDAO().listFotosEventos(e.getId());
                                %>
                                <div class="carousel-fixed-item center">
                                    <a class="btn waves-effect blue white-text">Saiba mais</a>
                                </div>
                                <%for (FotosEventos fe : list2) {%>
                                <div class="carousel-item teal white-text" href="#one!">
                                    <h2><%=e.getNome()%></h2>
                                    <img class="foto-evento" src="/OMT/EventosServlet?id=<%=fe.getId()%>">
                                    <p class="white-text"><%=e.getDescricao()%></p>
                                </div>
                                <% }%>
                            </div>
                        </div>
                        <%}%>
                    </div>
                </div>
            </div>
        </div>
        <%} else {%>
        <h1> Acesso negado <a href="../home.jsp">Volte para a tela de login </a></h1>
        <%}%>
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
        <%@include file="../footer.jsp"%>
    </body>
</html>
