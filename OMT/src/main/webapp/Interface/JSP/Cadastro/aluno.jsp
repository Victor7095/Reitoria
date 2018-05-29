<%-- 
    Document   : aluno
    Created on : 28/05/2018, 20:38:44
    Author     : Gabriel San Martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Aluno - OMT</title>
        <link rel="stylesheet" type="text/css" href="../../_CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../../_CSS/parallax-template/css/style.css">        
    </head>
    <body>
        <header>

        </header>
        <div class="container">
            <div class="row">
                <div class="col s8 offset-s2">
                    <div class="card">
                        <div class="card-action green darken-3 white-text center-align" title="Cadastrar um aluno">
                            <h3>Cadastro de Aluno</h3>
                        </div>
                        <br>
                        <div class="card-content">
                            <div class="row">
                                <form class="col s12" name="cadastrar-aluno" method="post" action="">
                                    <div class="row">
                                        <div class="input-field col s5 offset-s1">
                                            <label for="usuario">Usuário</label>
                                            <input type="text" id="usuario" name="usuario" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s5 offset-s1">
                                            <label for="senha">Senha</label>
                                            <input type="password" id="senha" name="senha" required>
                                        </div>
                                        <div class="input-field col s5">
                                            <label for="confirmar">Confirmar Senha</label>
                                            <input type="password" id="confirmar" name="confirmar" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s10 offset-s1">
                                            <label for="nome">Nome Completo</label>
                                            <input type="text" id="nome" name="nome" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s6 offset-s1">
                                            <label for="cpf">CPF</label>
                                            <input type="text" name="cpf" id="cpf" maxlength="14" required>
                                        </div>
                                        <div class="input-field col s4">
                                            <label for="rg">RG</label>
                                            <input type="text" id="rg" name="rg" maxlength="" required>
                                        </div>
                                    </div>

                                    <!--<div class="row">
                                        <div class="col s4 offset-s4">
                                            <img src="../../../Imagens/student.png" width="200" height="200" id="imagem">
                                            <input type="file" name="file" id="inputFoto" accept="image/*" hidden>
                                            <button class="btn green" type="button" id="selecionar">Escolher foto de perfil</button>
                                            <button class="btn btn-outline-red" type="button" id="redefinir">Redefinir foto</button>
                                        </div>
                                    </div>-->

                                    <br><br>
                                    <div class="row">
                                        <div class="col s2 offset-s3">
                                            <button type="reset" class="btn btn-large waves-effect waves-green">Limpar</button>
                                        </div>
                                        <div class="col s2 offset-s1">
                                            <button type="submit" class="btn btn-large waves-effect waves-green">Cadastrar</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="../../_JS/jquery-3.2.1.min.js"></script>
        <script src="../../_JS/jquery.mask.js"></script>
        <script src="../../_JS/mask.js"></script>
        <script src="../../_CSS/parallax-template/js/materialize.js"></script>
        
        <script>
            
        </script>
    </body>
</html>
