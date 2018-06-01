<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/OMT/ProjetoServlet" method="POST">
            <label>Nome</label>
            <input type="text" name="nome"/>
            <label>Descrição</label>
            <input type="text" name="descricao"/>
            <label>Area</label>
            <input type="text" name="area"/>

            <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect waves-green">Cadastrar</button>

        </form>
    </body>
</html>
