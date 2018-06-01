<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="/OMT/TrabalhoServlet">
            <label> Profissao</label>
            <input type="text" name="profissao"/>
            <label> Tipo</label>
            <input type="text" name="tipo"/>
            <label> Salario</label>
            <input type="text" name="salario"/>
            <label> Descricao</label>
            <input type="text" name="descricao"/>
            <label> Periodo de inscrição</label>
            <input type="text" name="inicio"/>
            <label> Termino da inscrição</label>
            <input type="text" name="Fim"/>
            
            <button type="submit" name="acao" value="cadastrar">Cadastrar</button>
        </form>
    </body>
</html>
