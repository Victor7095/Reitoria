<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Novo curso extra - OMT</title>
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
                <div class="col s12 l8 offset-l2">
                    <div id="omt-card">
                        <div class="row">
                            <form id="cadastrar-formacao"  class="col s10 offset-s1 l8 offset-l2" method="post" action="/OMT/CursosEspecializantesServlet">
                                <h4>Cadastro de Curso Extra</h4><br>
                                <div class="row">
                                    <div class="input-field col s12 m6">
                                        <input name="nome" id="nome" type="text" class="validate">
                                        <label for="nome">Nome</label>
                                    </div>
                                    <div class="input-field col s12 m6">
                                        <input id="nivel" type="text" class="validate" name="nivel"/>
                                        <label for="nivel">Nivel</label>
                                    </div>
                                </div>
                                <br>
                                <div class="row center">
                                    <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect green">Confirmar</button>
                                </div>
                            </form>
                        </div>
                    </div>
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
