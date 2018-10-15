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
        <title>Observatório Mundo do Trabalho</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/datatables/datatables.min.css">
    </head>

    <body>
        <jsp:include page="../header.jsp"/>
        <main>
            <div class="container" >
                <div class="card px-4 py-4">
                    <h1 class="font-weight-bold mb-4">Veja nossos Egressos</h1>
                    <table class="table table-striped table-bordered table-hover table-sm" id="table-egressos">
                        <caption>Lista de egressos</caption>
                        <thead>
                            <tr>
                                <th>Nome<i class="fa fa-sort float-right"></i></th>
                                <th>Formação<i class="fa fa-sort float-right"></i></th>
                                <th>Campus<i class="fa fa-sort float-right"></i></th>
                                <th>Ano de formação <i class="fa fa-sort float-right"></i></th>
                                <th>Currículo<i class="fa fa-sort float-right"></i></th>
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
                                    <td>00/00/2000</td>
                                    <td><a class="blue-text" href="curriculoDiscente.jsp?id=${discente.id}">curriculo</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Nome</th>
                                <th>Formação</th>
                                <th>Campus</th>
                                <th>Ano de formação</th>
                                <th>Currículo</th>
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
        <script src="../js/datatables/datatables.min.js"></script>
        <script>
            $("#table-egressos").DataTable({
                "language": {
                    "url": "/OMT/js/datatables/datatables-pt-br.json"
                },
                "order": [[0, "asc"]],
                "pagingType": "full_numbers"
            });
            $(".datatables_length").addClass("bs-select");
        </script>
    </body>
</html>
