<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Novo administrador - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
        <script src="../fileinput/js/fontawesome-all.min.js"></script>
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="container">
            <div class="row">
                <div class="col s12 l6 offset-l3">
                    <div class="card-panel">
                        <div class="row">
                            <div class="col s12 l10 offset-l1">
                                <form id="cadastrar-formacao" method="POST" action="/OMT/AdminstradoresServlet">
                                    <div class="row"><h4 class="center-align">Novo Administrador</h4></div>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="nome" id="nome" type="text" class="validate" required>
                                            <label for="nome">Nome</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input id="usuario" type="text" class="validate" name="usuario" required=""/>
                                            <label for="usuario">Nome de Usuário</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input id="senha" type="password" class="validate" name="senha" required/>
                                            <label for="senha">Senha</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input id="confirmar" type="password" class="validate" name="senha" required/>
                                            <label for="confirmar">Confirmar Senha</label>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col s12 m3 center offset-m2 offset-l3 xl4 offset-xl2 btn-mb-md">
                                            <button type="reset" class="btn waves-effect waves-green"><i class="fas fa-eraser"></i>Limpar</button>
                                        </div>
                                        <div class="col s12 m3 center offset-m2 offset-l1 xl4">
                                            <button type="submit" name="acao" value="cadastrar" class="btn waves-effect waves-green">
                                                <i class="fa fa-check"></i>Cadastrar</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../footer.jsp"%>
        <script src="../JS/jquery-3.2.1.min.js"></script>
        <script src="../JS/jquery.mask.js"></script>
        <script src="../JS/mask.js"></script>
        <script src="../CSS/parallax-template/js/materialize.js"></script>
    </body>
</html>
