<%-- 
    Document   : evento
    Created on : 28/05/2018, 20:39:30
    Author     : Gabriel San Martin
--%>
<%@page import="com.br.OMT.DAO.EventoDAO"%>
<%@page import="com.br.OMT.models.Evento"%>
<%@page import="java.util.List"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Eventos</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <%@include file="../header.jsp" %>
        <%@include file="../campus/campusMenu.jsp"%>
        <% if (usuario != null) {
                List<Evento> eventos = new EventoDAO().listEventos();%>
        <div class="container">
            <div class="card px-4 py-4">
                <h1 class="font-weight-bold mb-4">Eventos</h1>
                <div class="btn-group mb-4">
                    <a href="../campus/cadastrarEvento.jsp" class="btn btn-md btn-light-green"><i class="fa fa-plus mr-1"></i>Cadastrar Evento</a>
                </div>
                <%if (eventos.size() > 0) {%>
                <table class="table mb-4">
                    <thead class="table-dark">
                    <th>Nome</th>
                    <th>Descrição</th>
                    <th>Local</th>
                    <th>In. Inscrições</th>
                    <th>Fim Inscrições</th>
                    <th>In. Evento</th>
                    <th>Fim Evento</th>
                    </thead>
                    <tbody>
                        <%for (Evento e : eventos) {%>
                        <tr>
                            <td><%=e.getNome()%></td>
                            <td><%=e.getDescricao()%></td>
                            <td><%=e.getLocal()%></td>
                            <td><%=e.getDataInicioInscricao()%></td>
                            <td><%=e.getDataFinalInscricao()%></td>
                            <td><%=e.getDataInicioEvento()%></td>
                            <td><%=e.getDataFinalEvento()%></td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
                <%} else {%>
                <h1 class="text-center my-5">Nenhum evento registrado ainda</h1>
                <%}%>
            </div>
        </div>
        <%}%>
        <%@include file="../footer.jsp" %>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
    </body>
</html>