<%-- 
    Document   : evento
    Created on : 28/05/2018, 20:39:30
    Author     : Gabriel San Martin
--%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="CursosEspecializantesDAO" class="com.br.OMT.DAO.CursosEspecializantesDAO"/>
<c:set var="cursosEspecializantes" value="${CursosEspecializantesDAO.listEventos()}"/>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cursos Especializantes</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <jsp:include page="../header.jsp" />
        <jsp:include page="campusMenu.jsp" />
        <div class="container">
            <div class="card px-4 py-4">
                <h1 class="font-weight-bold mb-4">Cursos Especializantes</h1>
                <div class="btn-group mb-4">
                    <a href="../campus/cadastrarEvento.jsp" class="btn btn-md btn-light-green"><i class="fa fa-plus mr-1"></i>Cadastrar Curso Especializante</a>
                </div>
                <c:if test="${cursosEspecializantes.size()>0}">
                    <table class="table mb-4">
                        <caption>Lista de eventos</caption>
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
                            <c:forEach items="${cursosEspecializantes}" var="cursoEspecializante">
                                <tr>
                                    <td><c:out value="${cursoEspecializante.nome}"/></td>
                                    <td><c:out value="${cursoEspecializante.descricao}"/></td>
                                    <td><c:out value="${cursoEspecializante.local}"/></td>
                                    <td><c:out value="${cursoEspecializante.dataInicioInscricao}"/></td>
                                    <td><c:out value="${cursoEspecializante.dataFinalInscricao}"/></td>
                                    <td><c:out value="${cursoEspecializante.dataInicioEvento}"/></td>
                                    <td><c:out value="${cursoEspecializante.dataFinalEvento}"/></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:if>
                <c:if test="${cursosEspecializantes.size()==0}">
                    <h1 class="text-center my-5">Nenhum evento registrado ainda</h1>
                </c:if>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
    </body>
</html>