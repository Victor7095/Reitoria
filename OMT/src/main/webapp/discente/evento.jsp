<%-- 
    Document   : pagina_inicial
    Created on : 07/06/2018, 15:17:41
    Author     : Natan S. dos Santos
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="EventoDAO" class="com.br.OMT.DAO.EventoDAO"/>
<jsp:useBean id="FotosEventosDAO" class="com.br.OMT.DAO.FotosEventosDAO"/>
<jsp:useBean id="URLDecoder" class="java.net.URLDecoder"/>
<c:set var="evento" value="${EventoDAO.buscarPorURL(param.q)}"/>
<c:set target="${evento}" property="fotos" value="${FotosEventosDAO.listFotosEventos(evento.id)}"/>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>${evento.nome}</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <jsp:include page="../header.jsp"/>
        <jsp:include page="../discente/menu.jsp"/>
        <main>
            <c:if test="${not empty usuario}">
                <div class="container">
                    <div class="card px-4 py-4">
                        <section>
                            <h1 class="mb-4 font-weight-bold">${evento.nome}</h1>
                            <p class="text-muted">
                                <fmt:formatDate pattern="dd/MM/yyyy" value="${evento.dataInicioEvento}"/>
                            </p>
                            <div class="row">
                                <!--Slides-->
                                <c:forEach items="${evento.fotos}" var="foto">
                                    <div class="col-sm-12 col-md-6 col-lg-3 mb-4">
                                        <img class="d-block w-100 rounded" src="/OMT/EventoServlet?id=${foto.id}" alt="First slide">
                                    </div>
                                </c:forEach>
                            </div>
                            <p>
                                <c:out value="${evento.descricao}"/>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec.
                            </p>
                            <table class="table table-sm w-auto">
                                <tbody>
                                    <tr>
                                        <td class="font-weight-bold">Ini�cio das inscri��es</td>
                                        <td class="text-left">
                                            <fmt:formatDate type = "both" dateStyle = "short" pattern="dd/MM/yyyy" value="${evento.dataInicioInscricao}"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="font-weight-bold">Fim das inscri��es</td>
                                        <td class="text-left">
                                            <fmt:formatDate type = "both" dateStyle = "short" pattern="dd/MM/yyyy" value="${evento.dataFinalInscricao}"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="font-weight-bold">Ini�cio do Evento</td>
                                        <td class="text-left">
                                            <fmt:formatDate type = "both"  dateStyle = "short" timeStyle = "short" value="${evento.dataInicioEvento}"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="font-weight-bold">Fim das Evento</td>
                                        <td class="text-left">
                                            <fmt:formatDate type = "both" dateStyle = "short" timeStyle = "short" value="${evento.dataFinalEvento}"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </section>
                    </div>
                </div>
            </c:if>
            <c:if test="${empty usuario}">
                <h1> Acesso negado <a href="../home.jsp">Volte para a tela de login </a></h1>
            </c:if>
        </main>
        <jsp:include page="../footer.jsp"/>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
        <script src="../js/general.js"></script>
    </body>
</html>

