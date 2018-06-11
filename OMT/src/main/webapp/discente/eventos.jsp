<%-- 
    Document   : eventos
    Created on : 11/06/2018, 00:02:19
    Author     : vinic
--%>

<%@page import="com.br.OMT.DAO.EventoDAO"%>
<%@page import="com.br.OMT.models.Eventos"%>
<%@page import="com.br.OMT.DAO.FotosEventosDAO"%>
<%@page import="com.br.OMT.models.FotosEventos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% List<Eventos> list = new EventoDAO().listEventos(); // Request Sessão
            for (Eventos e : list) {
        %>
        <h3><%=e.getId()%></h3>
        <h3><%=e.getNome()%></h3>
        <h3><%=e.getDescricao()%></h3>
        <%
            List<FotosEventos> list2 = new FotosEventosDAO().listFotosEventos(e.getId()); // Request Sessão
            for (FotosEventos fe : list2) {
        %>
        <img src="/OMT/EventosServlet?id=<%=fe.getId()%>" width="100" height="100"/>
        <%}%>
        <%}%>
    </body>
</html>
