<%-- 
    Document   : pagina_inicial
    Created on : 07/06/2018, 15:17:41
    Author     : Natan S. dos Santos
--%>

<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="com.br.OMT.DAO.EventoDAO"%>
<%@page import="com.br.OMT.models.Eventos"%>
<%@page import="com.br.OMT.DAO.FotosEventosDAO"%>
<%@page import="com.br.OMT.models.FotosEventos"%>
<%@page import="java.util.List"%>
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
        <% if (request.getSession().getAttribute("usuario") != null) {%>

        <%@include file="alunoMenu.jsp"%>   
        <div class="center-align container row" >
            <% if (request.getSession().getAttribute("usuario") != null) {%>
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
                    <!--<a href="/OMT/pdf">Olá mundo!</a>-->
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
                                    <div class="valign-wrapper" style="height: 100%;">
                                        <img class="foto-evento" src="/OMT/EventosServlet?id=<%=fe.getId()%>">
                                    </div>
                                </div>
                                <% }%>
                            </div>
                        </div>
                        <%}%>
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
        </div>
        <%} else {%> 
        <h1> Acesso negado <a href="../home.jsp">Volte para a tela de login </a></h1>
        <%}%>
        <%@include file="../footer.jsp"%>
    </body>
</html>

