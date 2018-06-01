<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="/OMT/CursosEspecializantesServlet">
            <label> Nome</label>
            <input type="text" name="nome">
            <label> Nível </label>
            <input type="text" name="nivel">
            
            <button name="acao" value="cadastrar"> Cadastrar</button>
        </form>
    </body>
</html>
