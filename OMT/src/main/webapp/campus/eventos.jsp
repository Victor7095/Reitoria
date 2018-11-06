<%-- 
    Document   : evento
    Created on : 28/05/2018, 20:39:30
    Author     : Gabriel San Martin
--%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="EventoDAO" class="com.br.OMT.DAO.EventoDAO"/>
<c:set var="eventos" value="${EventoDAO.listEventos()}"/>
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
        <link rel="stylesheet" href="../css/addons/datatables.min.css">
    </head>
    <body>
        <jsp:include page="../header.jsp" />
        <jsp:include page="../campus/menu.jsp" />
        <main>
            <div class="container">
                <div class="card px-4 py-4">
                    <h1 class="font-weight-bold mb-4">Eventos</h1>
                    <div class="btn-group mb-4">
                        <a href="../campus/cadastrarEvento.jsp" class="btn btn-md btn-light-green">
                            <i class="fa fa-plus mr-1"></i>Cadastrar Evento</a>
                    </div>
                    <c:if test="${eventos.size()>0}">
                        <table class="table table-striped table-bordered table-hover table-sm table-responsive" id="table-eventos">
                            <caption>Lista de eventos</caption>
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Descrição</th>
                                    <th>Local</th>
                                    <th>In. Inscrições</th>
                                    <th>Fim Inscrições</th>
                                    <th>In. Evento</th>
                                    <th>Fim Evento</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${eventos}" var="evento">
                                    <tr>
                                        <td>${evento.nome}</td>
                                        <td>${evento.descricao}</td>
                                        <td>${evento.local}</td>
                                        <td>${evento.dataInicioInscricao}</td>
                                        <td>${evento.dataFinalInscricao}</td>
                                        <td>${evento.dataInicioEvento}</td>
                                        <td>${evento.dataFinalEvento}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>Nome</th>
                                    <th>Descrição</th>
                                    <th>Local</th>
                                    <th>In. Inscrições</th>
                                    <th>Fim Inscrições</th>
                                    <th>In. Evento</th>
                                    <th>Fim Evento</th>
                                </tr>
                            </tfoot>
                        </table>
                    </c:if>
                    <c:if test="${eventos.size()==0}">
                        <h1 class="text-center my-5">Nenhum evento registrado ainda</h1>
                    </c:if>
                </div>
            </div>
        </main>
        <jsp:include page="../footer.jsp" />
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
        <script src="../js/general.js"></script>
        <script src="../js/addons/datatables.min.js"></script>
        <script>
            var table = $("#table-eventos").DataTable({
                initComplete: function () {
                    this.api().columns().every(function () {
                        var column = this;
                        var select = $('<select><option value=""></option></select>')
                                .appendTo($(column.footer()).empty())
                                .on('change', function () {
                                    var val = $.fn.dataTable.util.escapeRegex(
                                            $(this).val()
                                            );

                                    column
                                            .search(val ? '^' + val + '$' : '', true, false)
                                            .draw();
                                });

                        column.data().unique().sort().each(function (d, j) {
                            select.append('<option value="' + d + '">' + d + '</option>')
                        });
                    });
                },
                "language": {
                    "url": "/OMT/js/addons/datatables-pt-br.json"
                },
                "order": [[0, "asc"]],
                "pagingType": "full_numbers"
            });
            $(".datatables_length").addClass("bs-select");
        </script>
    </body>
</html>
