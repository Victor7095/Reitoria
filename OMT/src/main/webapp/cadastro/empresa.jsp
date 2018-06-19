<%-- 
    Document   : empresa
    Created on : 28/05/2018, 20:39:40
    Author     : Gabriel San Martin
--%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Empresa - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">    
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
        <script defer src="../fileinput/js/fontawesome-all.min.js"></script> 
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="container">
            <div class="row">
                <div class="col s12 l8 offset-l2">
                    <div class="card">
                        <div class="card-action green darken-3 white-text center-align">
                            <h3>Cadastro de Empresa</h3>
                        </div>
                        <br>
                        <div class="card-content">
                            <div class="row">
                                <form class="col s12" method="post" name="cadastrar-empresa" action="/OMT/EmpresaServlet">
                                    <div class="row">
                                        <div class="input-field col s12 l6 offset-l1">
                                            <label class="active" for="cnpj">CNPJ</label>
                                            <input type="text" id="cnpj" name="cnpj" class="validate" required>
                                        </div>
                                        <div class="input-field col s12 l4">
                                            <label class="active" for="cnae">CNAE</label>
                                            <input type="text" id="cnae" name="cnae" class="validate" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12 l10 offset-l1">
                                            <label class="active" for="nome">Nome da Empresa</label>
                                            <input type="text" id="nome" name="nome" class="validate" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12 l10 offset-l1">
                                            <label class="active" for="nomeFantasia">Nome Fantasia da Empresa</label>
                                            <input type="text" id="nomeFantasia" name="nomeFantasia" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12 l3 offset-l1">
                                            <label class="active" for="cep">CEP</label>
                                            <input type="text" id="cep" name="cep" class="validate" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 l10 offset-l1">
                                            <label class="active" for="estado">Estado</label>
                                            <input type="text" id="estado" name="estado" readonly required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 l10 offset-l1">
                                            <label class="active" for="cidade">Cidade</label>
                                            <input type="text" id="cidade" name="cidade" readonly required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 l10 offset-l1">
                                            <label class="active" for="bairro">Bairro</label>
                                            <input type="text" id="bairro" name="bairro" readonly required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 l10 offset-l1">
                                            <label class="active" for="rua">Rua</label>
                                            <input type="text" id="rua" name="rua" readonly required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 l10 offset-l1">
                                            <label class="active" for="numero">Numero</label>
                                            <input type="text" id="numero" name="numero" >
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 l10 offset-l1">
                                            <label class="active" for="complemento">Complemento</label>
                                            <input type="text" id="complemento" name="complemento" readonly required>
                                        </div>
                                    </div>  

                                    <div class="row">
                                        <div class="col s12 l10 offset-l1">
                                            <label> Usuário padrão</label>
                                        </div>
                                    </div>  
                                    <div class="row">
                                        <div class="col s12 l10 offset-l1">
                                            <label for="nome">Nome</label>
                                            <input type="text" id="nomeUsuario" name="nomeUsuario" class="validate" required>
                                        </div>
                                    </div>   
                                    <div class="row">
                                        <div class="col s12 l10 offset-l1">
                                            <label for="usuario">Usuário (nome para entrar no sistema)</label>
                                            <input type="text" id="usuario" name="usuario" class="validate" required>
                                        </div>
                                    </div>  
                                    <div class="row">
                                        <div class="col s12 l10 offset-l1">
                                            <label for="senha">Senha</label>
                                            <input type="password" id="senha" name="senha" class="validate" required>
                                        </div>
                                    </div>  

                                    <br><br>

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
        <script src="../CSS/parallax-template/js/materialize.js"></script>
        <script src="../JS/jquery.mask.js"></script>
        <script src="../JS/mask.js"></script>
        <script src="../JS/consultaCNPJ.js"></script>
    </body>
</html>
