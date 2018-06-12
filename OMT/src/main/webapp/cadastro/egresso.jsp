<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Aluno - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/forms.css">
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
        <div class="row">
            <div class="col s12 l6 offset-l3">
                <div id="omt-card">
                    <h4 class="center-align">Cadastro de Egresso</h4>
                    <br>
                    <div class="row">
                        <div class="col s12 offset-s1 l10 offset-l1">
                            <form method="post" id="cadastrar-evento" action="/OMT/DiscenteServlet" 
                                  enctype="multipart/form-data">
                                <div class="row">
                                    <div class="input-field col s12 l10 offset-l1">
                                        <label for="usuario">Matrícula</label>
                                        <input type="text" id="usuario" name="usuario" maxlength="12" required>
                                    </div>
                                </div>
                                <!--<div class="row">
                                    <div class="input-field col s12 l5 offset-l1">
                                        <label for="senha">Senha</label>
                                        <input type="password" id="senha" name="senha" required>
                                    </div>
                                    <div class="input-field col s12 l5">
                                        <label for="confirmar">Confirmar Senha</label>
                                        <input type="password" id="confirmar" name="confirmar" required>
                                    </div>
                                </div>-->
                                <div class="row">
                                    <div class="input-field col s12 l10 offset-l1">
                                        <label for="nome">Nome Completo</label>
                                        <input type="text" id="nome" name="nome" required>                                        
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12 l5 offset-l1">
                                        <label for="cpf">CPF</label>
                                        <input type="text" id="cpf" name="cpf" maxlength="18" required> 
                                    </div>
                                    <div class="input-field col s12 l5">
                                        <label for="rg">RG</label>
                                        <input type="text" id="rg" name="rg" required> 
                                    </div>
                                </div>
                                <br><br>
                                <div class="row center">
                                    <div class="col m12 l2 offset-l2 btn-mb-md">
                                        <button type="reset" class="btn btn-large waves-effect white black-text">Limpar</button>
                                    </div>
                                    <div class="col m12 l2 offset-l3">
                                        <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect green">Cadastrar</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- TESTANDO AQUI
                <div class="card">
                    <div class="card-action green darken-3 white-text center-align">
                        <h3>Cadastro de Egresso</h3>
                    </div>
                    <br>
                    <div class="card-content">
                        <div class="row">
                            <form class="col s12" method="post" id="cadastrar-evento" action="/OMT/DiscenteServlet" 
                                  enctype="multipart/form-data">
                                <div class="row">
                                    <div class="input-field col s12 l10 offset-l1">
                                        <label for="usuario">Matrícula</label>
                                        <input type="text" id="usuario" name="usuario" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12 l5 offset-l1">
                                        <label for="senha">Senha</label>
                                        <input type="password" id="senha" name="senha" required>
                                    </div>
                                    <div class="input-field col s12 l5">
                                        <label for="confirmar">Confirmar Senha</label>
                                        <input type="password" id="confirmar" name="confirmar" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12 l10 offset-l1">
                                        <label for="nome">Nome Completo</label>
                                        <input type="text" id="nome" name="nome" required>                                        
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12 l5 offset-l1">
                                        <label for="cpf">CPF</label>
                                        <input type="text" id="cpf" name="cpf" required> 
                                    </div>
                                    <div class="input-field col s12 l5">
                                        <label for="rg">RG</label>
                                        <input type="text" id="rg" name="rg" required> 
                                    </div>
                                </div>
                                <br><br>
                                <div class="row center">
                                    <div class="col m12 l2 offset-l2 btn-mb-md">
                                        <button type="reset" class="btn btn-large waves-effect white black-text">Limpar</button>
                                    </div>
                                    <div class="col m12 l2 offset-l3">
                                        <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect green">Cadastrar</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                -->
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
