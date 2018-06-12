<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Novo administrador - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
    </head>
    <body>
        <header>
            <div class="container">
                <div id="omt-header-wrapper">
                    <div id="omt-header">
                        <div id="img-wrapper">
                            <div id="logo">
                                <a id="omt-logo">
                                    <img src="../img/logoOMT.png" alt="OMT">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="container">
            <div class="row">
                <div class="col s12 l6 offset-l3">
                    <form id="cadastrar-formacao" method="POST" action="/OMT/AdminstradoresServlet" class="card-panel">

                        <div class="row">
                            <div class="input-field col s12">
                                <input name="nome" id="nome" type="text" class="validate" required>
                                <label for="nome">Nome</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input id="usuario" type="text" class="validate" name="usuario" required=""/>
                                <label for="usuario">Usuário (nome para entrar no sistema)</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="senha" type="password" class="validate" name="senha" required/>
                                <label for="senha">Senha</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12 right-align">
                                <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect waves-green">Confirmar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <footer>
            <div class="container">
                
            </div>
        </footer>
        <script src="../JS/jquery-3.2.1.min.js"></script>
        <script src="../JS/jquery.mask.js"></script>
        <script src="../JS/mask.js"></script>
        <script src="../CSS/parallax-template/js/materialize.js"></script>
    </body>
</html>
