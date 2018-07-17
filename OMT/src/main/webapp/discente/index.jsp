<%-- 
    Document   : pagina_inicial
    Created on : 07/06/2018, 15:17:41
    Author     : Natan S. dos Santos
--%>

<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="com.br.OMT.DAO.EventoDAO"%>
<%@page import="com.br.OMT.models.Evento"%>
<%@page import="com.br.OMT.DAO.FotosEventosDAO"%>
<%@page import="com.br.OMT.models.FotosEventos"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home Aluno - OMT</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <%@include file="alunoMenu.jsp"%>   
        <% if (discente != null) {
                List<Evento> eventos = new EventoDAO().listEventos();%>
        <div class="container">
            <div class="card px-4 py-4">
                <h1 class="mb-4">Bem-vindo <%=discente.getNome()%>!</h1>
                <section>
                    <h2 class="font-weight-bold mb-4">Eventos</h2>
                    <!-- Card deck -->
                    <div class="row">
                        <%for (Evento e : eventos) {%>
                        <div class="col-md-3">
                            <!-- Card -->
                            <div class="card mb-4">

                                <!--Card image-->
                                <div class="view overlay">
                                    <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/16.jpg" alt="Card image cap">
                                    <a href="#!">
                                        <div class="mask rgba-white-slight"></div>
                                    </a>
                                </div>

                                <!--Card content-->
                                <div class="card-body">

                                    <!--Title-->
                                    <h4 class="card-title"><%=e.getNome()%></h4>
                                    <!--Text-->
                                    <p class="card-text"><%=e.getDescricao()%></p>
                                    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                                    <button type="button" class="btn btn-blue btn-md">Leia mais</button>

                                </div>

                            </div>
                            <!-- Card -->
                        </div>
                        <%}%>
                    </div>
                    <!-- Card deck -->
                </section>
            </div>
        </div>
        <%} else {%>
        <h1> Acesso negado <a href="../home.jsp">Volte para a tela de login </a></h1>
        <%}%>
        <%@include file="../footer.jsp"%>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
    </body>
</html>

