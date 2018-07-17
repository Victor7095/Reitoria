<%-- 
    Document   : pagina_inicial
    Created on : 07/06/2018, 15:17:41
    Author     : Natan S. dos Santos
--%>
<%@page import="com.br.OMT.Utils.Criptografia"%>
<%@page import="java.util.List"%>
<%@page import="com.br.OMT.models.Discente"%>
<%@page import="com.br.OMT.DAO.DiscenteDAO"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page import="com.br.OMT.models.Entidade"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home Reitoria - OMT</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <% if (request.getSession().getAttribute("usuario") != null) {%>
        <%!HttpSession session;%>
        <%if (request.getSession().getAttribute("usuario") != null && request.getSession().getAttribute("entidade") != null) {%>
        <%!Entidade e;%>
        <%e = (Entidade) request.getSession().getAttribute("entidade");%>
        <%if (e.getTipo() == 'R') {%>
        <%@include file="../reitoria/reitoriaMenu.jsp"%>
        <%} else if (e.getTipo() == 'C') {%>
        <%@include file="../campus/campusMenu.jsp"%>
        <%} else {%>
        <% response.getWriter().print("Deu Erro");%>
        <%}%>

        <%}%>

        <% DiscenteDAO ddao = new DiscenteDAO();
            List<Discente> discentes = ddao.listar();%>
        <div class="container" >
            <%-- <%@include file="alunoMenu.jsp"%> MENU--%>
            <div class="card px-4 py-4">
                <h1 class="font-weight-bold mb-4">Egressos</h1>
                <div class="btn-group mb-4">
                    <a class="btn btn-md btn-light-green" href="../cadastro/egresso.jsp">
                        <i class="fa fa-plus mr-1"></i>Novo egresso</a>
                </div>
                <form>
                    <div class="form-group">
                        <input type="search" class="form-control" placeholder="Pesquisar">
                    </div>
                </form>
                <table class="table">
                    <tr>
                        <th>Nome</th>
                        <th>RG</th>
                        <th>CPF</th>
                    </tr>
                    <%for (Discente d : discentes) {
                            d.setNome(Criptografia.decrypt(d.getNomeBanco()));
                            d.setRG(Criptografia.decrypt(d.getRGbanco()));
                            d.setCPF(Criptografia.decrypt(d.getCPFbanco()));
                    %>
                    <tr>
                        <td><%=d.getNome()%></td>
                        <td class="RG"><%=d.getRG()%></td>
                        <td class="CPF"><%=d.getCPF()%></td>                      
                    </tr>
                    <%}%>
                </table>
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
        <script src="../js/jquery.mask.min.js"></script>
        <script src="../js/mascaras.js"></script>
    </body>
</html>


