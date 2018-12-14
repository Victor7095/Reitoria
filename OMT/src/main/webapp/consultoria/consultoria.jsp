<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="DiscenteDAO" class="com.br.OMT.DAO.DiscenteDAO"/>
<jsp:useBean id="Criptografia" class="com.br.OMT.Utils.Criptografia"/>
<c:set var="discentes" value="${DiscenteDAO.listar()}"/>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Consultar Egressos</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/addons/datatables.min.css">
    </head>

    <body>
        <jsp:include page="../header.jsp"/>
        <main>
            <div class="container my-4" >
                <div class="card px-4 py-4">
                    <h1 class="font-weight-bold mb-4">Veja nossos Egressos</h1>
                    <table class="table table-sm table-striped table-bordered table-hover" id="table-egressos">
                        <caption>Lista de egressos</caption>
                        <thead>
                            <tr>
                                <th>Nome<i class="fa fa-sort float-right"></i></th>
                                <th>Forma��o<i class="fa fa-sort float-right"></i></th>
                                <th>Campus<i class="fa fa-sort float-right"></i></th>
                                <th>Ano de forma��o <i class="fa fa-sort float-right"></i></th>
                                <th>Curr�culo<i class="fa fa-sort float-right"></i></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${discentes}" var="discente">
                                <c:set target="${discente}" property="nome" value="${Criptografia.decrypt(discente.nomeBanco)}"/>
                                <c:set target="${discente}" property="usuario" value="${Criptografia.decrypt(discente.usuarioBanco)}"/>
                                <tr>
                                    <td><c:out value="${discente.nome}"/></td>               
                                    <td>${discente.formacao.nome}</td>
                                    <td>${discente.formacao.campus.nome}</td>
                                    <td>${discente.formacao.anoTermino}</td>
                                    <td><a class="blue-text" href="curriculoDiscente.jsp?id=${discente.id}">curriculo</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Nome</th>
                                <th>Forma��o</th>
                                <th>Campus</th>
                                <th>Ano de forma��o</th>
                                <th>Curr�culo</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </main>
        <jsp:include page="../footer.jsp"/>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
        <script src="../js/general.js"></script>
        <script src="../js/jquery.mask.min.js"></script>
        <script src="../js/mascaras.js"></script>
        <script src="../js/addons/datatables.min.js"></script>
        <script>
            $("#table-egressos").DataTable({
                initComplete: function () {
                    this.api().columns().every(function () {
                        var column = this;
                        var select = $('<select class="custom-select w-auto"><option value=""></option></select>')
                                .appendTo($(column.header()))
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
