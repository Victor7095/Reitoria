<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Campus - OMT</title>
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
                <div class="col s8 offset-s2">
                    <div class="card">
                        <div class="card-action green darken-3 white-text center-align">
                            <h3>Cadastro de Campus</h3>
                        </div>
                        <br>
                        <div class="card-content">
                            <div class="row">
                                <form class="col s12" method="post" name="cadastrar-campus" action="/OMT/CampusServlet">
                                    <div class="row">
                                        <div class="input-field col s6 offset-s1">
                                            <label for="cnpj">CNPJ</label>
                                            <input type="text" id="cnpj" name="cnpj" required>
                                        </div>
                                        <div class="input-field col s4">
                                            <label for="cnae">CNAE</label>
                                            <input type="text" id="cnae" name="cnae" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s10 offset-s1">
                                            <label for="nome">Nome do Campus</label>
                                            <input type="text" id="nome" name="nome" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s10 offset-s1">
                                            <label for="nomeFantasia">Nome Fantasia do Campus</label>
                                            <input type="text" id="nomeFantasia" name="nomeFantasia" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s3 offset-s1">
                                            <label for="cep">CEP</label>
                                            <input type="text" id="cep" name="cep" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s10 offset-s1">
                                            <label for="estado">Estado</label>
                                            <input type="text" id="estado" name="estado" readonly required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s10 offset-s1">
                                            <label for="cidade">Cidade</label>
                                            <input type="text" id="cidade" name="cidade" readonly required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s10 offset-s1">
                                            <label for="bairro">Bairro</label>
                                            <input type="text" id="bairro" name="bairro" readonly required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s10 offset-s1">
                                            <label for="rua">Rua</label>
                                            <input type="text" id="rua" name="rua" readonly required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s10 offset-s1">
                                            <label for="numero">Numero</label>
                                            <input type="text" id="numero" name="numero" >
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s10 offset-s1">
                                            <label for="complemento">Complemento</label>
                                            <input type="text" id="complemento" name="complemento" readonly required>
                                        </div>
                                    </div>  
                                    <!-- CONSERTAR
                                    <div class="row">
                                        <div class="input-field col s10 offset-s1">
                                            <select id="tipo" name="tipo">
                                                <option value="" disabled selected>Tipo</option>
                                                <option value="1">Campus</option>
                                                <option value="2">Reitoria</option>
                                            </select>
                                            <label for="tipo">Tipo</label>
                                        </div>
                                    </div>
                                    -->
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

                                    <br><br>
                                    <div class="row">
                                        <div class="col s2 offset-s3">
                                            <button type="reset" class="btn btn-large waves-effect waves-green">Limpar</button>
                                        </div>
                                        <div class="col s2 offset-s1">
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
        <footer>
            <div class="container">

            </div>
        </footer>
        <script src="../JS/jquery-3.2.1.min.js"></script>
        <script src="../CSS/parallax-template/js/materialize.js"></script>
        <script src="../JS/jquery.mask.js"></script>
        <script src="../JS/mask.js"></script>
        <script src="../JS/consultaCEP.js"></script>
        <script>
            $(document).ready(function () {
                $('tipo').formSelect();
            });
        </script>
    </body>
</html>
