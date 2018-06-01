<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="/OMT/AdminstradoresServlet">
            <div class="row">
                <div class="col s10 offset-s1">
                    <label> Usuário padrão</label>
                </div>
            </div>  
            <div class="row">
                <div class="col s10 offset-s1">
                    <label for="nome">Nome</label>
                    <input type="text" id="nome" name="nome"  required>
                </div>
            </div>   
            <div class="row">
                <div class="col s10 offset-s1">
                    <label for="usuario">Usuário (nome para entrar no sistema)</label>
                    <input type="text" id="usuario" name="usuario"  required>
                </div>
            </div>  
            <div class="row">
                <div class="col s10 offset-s1">
                    <label for="senha">Senha</label>
                    <input type="password" id="senha" name="senha"  required>
                </div>
            </div>
            
            <button type="submit" name="acao" value="cadastrar">Cadastrar </button>
        </form>
    </body>
</html>
