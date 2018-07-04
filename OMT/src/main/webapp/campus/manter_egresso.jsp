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
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/forms.css">
        <link rel="stylesheet" type="text/css" href="../CSS/general.css">
        <script src="../fileinput/js/fontawesome-all.min.js"></script>
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
        <div class="container row" >
            <%-- <%@include file="alunoMenu.jsp"%> MENU--%>
            <div class="card col s12 l10 offset-l1">
                <a class="btn" href="../cadastro/egresso.jsp">
                    <i class="fa fa-plus"></i>Novo egresso</a>
                <table>
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
        <script src="../JS/jquery-3.2.1.min.js"></script>
        <script src="../JS/jquery.mask.js"></script>
        <script src="../JS/mask.js"></script>
    </body>
</html>


