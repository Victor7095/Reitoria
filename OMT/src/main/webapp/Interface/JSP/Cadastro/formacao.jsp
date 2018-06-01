<%-- 
    Document   : formacao
    Created on : 31/05/2018, 23:11:12
    Author     : vinic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="/OMT/FormacaoServlet">
            <label>Nome</label>
            <input type="type" name="nome"/>
            <label>Escola</label>
            <input type="type" name="escola"/>
            <label> Ano de finalização</label>
            <input type="type" name="anofinalizacao"/>   
            <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect waves-green">Cadastrar</button>


        </form>
    </body>
</html>
