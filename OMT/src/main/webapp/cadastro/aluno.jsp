<%-- 
    Document   : aluno
    Created on : 28/05/2018, 20:38:44
    Author     : Gabriel San Martin
--%>
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
    </head>
    <body>
        <header>

        </header>
        <div class="container">
            <div class="row">
                <div class="col s12">
                    <div class="card">
                        <div class="card-action green darken-3 white-text center-align" title="Cadastrar um aluno">
                            <h3>Cadastro de Aluno</h3>
                        </div>
                        <br>
                        <div class="card-content">
                            <div class="row">
                                <form class="col s12" name="cadastrar-aluno" method="post" action="/OMT/DiscenteServlet"
                                      enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="input-field col s12 offset-s0 m5 offset-m1">
                                            <label for="usuario">Matrícula</label>
                                            <input type="text" id="usuario" name="usuario" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12 m5 offset-m1">
                                            <label for="senha">Senha</label>
                                            <input type="password" id="senha" name="senha" required>
                                        </div>
                                        <div class="input-field col s12 m5">
                                            <label for="confirmar">Confirmar Senha</label>
                                            <input type="password" id="confirmar" name="confirmar" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12 m10 offset-m1">
                                            <label for="nome">Nome Completo</label>
                                            <input type="text" id="nome" name="nome" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12 m5 offset-m1">
                                            <label for="cpf">CPF</label>
                                            <input type="text" name="cpf" id="cpf" maxlength="14" required>
                                        </div>
                                        <div class="input-field col s12 m5">
                                            <label for="rg">RG</label>
                                            <input type="text" id="rg" name="rg" maxlength="" required>
                                        </div>
                                    </div>
                                    <img src="/OMT/DiscenteServlet" width="500" height="500"/>
                                    <input type="file" name="foto"/>
                                    <!--<div class="row">
                                        <div class="col s4 offset-s4">
                                            <img src="../../../Imagens/student.png" width="200" height="200" id="imagem">
                                            <input type="file" name="file" id="inputFoto" accept="image/*" hidden>
                                            <button class="btn green" type="button" id="selecionar">Escolher foto de perfil</button>
                                            <button class="btn btn-outline-red" type="button" id="redefinir">Redefinir foto</button>
                                        </div>
                                    </div>-->

                                    <br><br>
                                    <div class="row center">
                                        <div class="col s12 m2 offset-m2 btn-mb-sm">
                                            <button type="reset" class="btn btn-large waves-effect waves-green">Limpar</button>
                                        </div>
                                        <div class="col s12 m2 offset-m4">
                                            <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect waves-green">Cadastrar</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="../JS/jquery-3.2.1.min.js"></script>
        <script src="../JS/jquery.mask.js"></script>
        <script src="../JS/mask.js"></script>
        <script src="../CSS/parallax-template/js/materialize.js"></script>
    </body>
</html>
