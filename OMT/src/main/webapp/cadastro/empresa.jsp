<%-- 
    Document   : empresa
    Created on : 28/05/2018, 20:39:40
    Author     : Gabriel San Martin
--%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Empresa - OMT</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="container">
            <div class="card px-4 py-4">
                <h1 class="font-weight-bold mb-4">Cadastro de Empresa</h1>
                <form method="post" name="cadastrar-empresa" action="/OMT/EmpresaServlet">
                    <section>
                        <h4 class="mb-4"><strong>Dados da empresa</strong></h4>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="cnpj">CNPJ</label>
                                <input class="form-control validate" type="text" id="cnpj" name="cnpj" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="cnae">CNAE</label>
                                <input class="form-control validate" type="text" id="cnae" name="cnae" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nome">Nome da Empresa</label>
                            <input class="form-control validate" type="text" id="nome" name="nome" required>
                        </div>
                        <div class="form-group">
                            <label for="nomeFantasia">Nome Fantasia da Empresa</label>
                            <input class="form-control" type="text" id="nomeFantasia" name="nomeFantasia" required>
                        </div>
                        <div class="form-group">
                            <label for="cep">CEP</label>
                            <input class="form-control validate" type="text" id="cep" name="cep" required>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="estado">Estado</label>
                                <input class="form-control" type="text" id="estado" name="estado" readonly required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="cidade">Cidade</label>
                                <input class="form-control" type="text" id="cidade" name="cidade" readonly required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="bairro">Bairro</label>
                                <input class="form-control" type="text" id="bairro" name="bairro" readonly required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="rua">Rua</label>
                                <input class="form-control" type="text" id="rua" name="rua" readonly required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="numero">Número</label>
                                <input class="form-control" type="text" id="numero" name="numero" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="complemento">Complemento</label>
                            <input class="form-control" type="text" id="complemento" name="complemento" readonly required>
                        </div>  
                    </section>
                    <hr class="my-4">
                    <section>
                        <h4 class="mb-4"><strong>Usuário padrão</strong></h4>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="nome">Nome</label>
                                <input class="form-control validate" type="text" id="nomeUsuario" name="nomeUsuario" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="usuario">Usuário (nome para entrar no sistema)</label>
                                <input class="form-control validate" type="text" id="usuario" name="usuario" required>
                            </div>
                        </div>  
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="senha">Senha</label>
                                <input class="form-control validate" id="senha" type="password" name="senha" required/>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="confirmar">Confirmar Senha</label>
                                <input class="form-control validate" id="confirmar" type="password" name="senha" required/>
                            </div>
                        </div>
                    </section>
                    <div class="text-right">
                        <button type="submit" name="acao" value="cadastrar" class="btn btn-md btn-light-green waves-effect">
                            <i class="fa fa-check mr-1"></i>Cadastrar</button>
                        <button type="reset" class="btn btn-md btn-grey waves-effect"><i class="fas fa-eraser mr-1"></i>Limpar</button>
                    </div>
                </form>
            </div>
        </div>
        <%@include file="../footer.jsp"%>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
        <script src="../js/jquery.mask.min.js"></script>
        <script src="../js/mascaras.js"></script>
        <script src="../JS/consultaCNPJ.js"></script>
    </body>
</html>
