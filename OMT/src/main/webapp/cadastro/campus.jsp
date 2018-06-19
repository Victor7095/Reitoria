<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Campus - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">    
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
        <script src="../fileinput/js/fontawesome-all.min.js"></script>
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="container">
            <div class="row">
                <div class="col s12 xl8 offset-xl2">
                    <div class="card">
                        <div class="card-action green darken-3 white-text center-align">
                            <h3>Cadastro de Campus</h3>
                        </div>
                        <br>
                        <div class="card-content">
                            <div class="row">
                                <form class="col s12" method="post" name="cadastrar-campus" action="/OMT/CampusServlet">
                                    <div class="row">
                                        <div class="input-field col s12 xl6 offset-xl1">
                                            <label for="cnpj">CNPJ</label>
                                            <input type="text" id="cnpj" name="cnpj" required>
                                        </div>
                                        <div class="input-field col s12 xl4">
                                            <label for="cnae">CNAE</label>
                                            <input type="text" id="cnae" name="cnae" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12 xl10 offset-xl1">
                                            <label for="nome">Nome do Campus</label>
                                            <input type="text" id="nome" name="nome" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12 xl10 offset-xl1">
                                            <label for="nomeFantasia">Nome Fantasia do Campus</label>
                                            <input type="text" id="nomeFantasia" name="nomeFantasia" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12 xl3 offset-xl1">
                                            <label for="cep">CEP</label>
                                            <input type="text" id="cep" name="cep" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 xl10 offset-xl1">
                                            <label for="estado">Estado</label>
                                            <input type="text" id="estado" name="estado" readonly required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 xl10 offset-xl1">
                                            <label for="cidade">Cidade</label>
                                            <input type="text" id="cidade" name="cidade" readonly required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 xl10 offset-xl1">
                                            <label for="bairro">Bairro</label>
                                            <input type="text" id="bairro" name="bairro" readonly required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 xl10 offset-xl1">
                                            <label for="rua">Rua</label>
                                            <input type="text" id="rua" name="rua" readonly required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 xl10 offset-xl1">
                                            <label for="numero">Numero</label>
                                            <input type="text" id="numero" name="numero" >
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 xl10 offset-xl1">
                                            <label for="complemento">Complemento</label>
                                            <input type="text" id="complemento" name="complemento" readonly required>
                                        </div>
                                    </div>  
                                    <div class="row">
                                        <div class="input-field col s12 xl10 offset-xl1">
                                            <select>
                                                <option value="" disabled selected>Selecionar op��o</option>
                                                <option value="1">Campus</option>
                                                <option value="2">Reitoria</option>
                                            </select>
                                            <label>Tipo</label>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col s12 xl10 offset-xl1">
                                            <label> Usu�rio padr�o</label>
                                        </div>
                                    </div>  
                                    <div class="row">
                                        <div class="col s12 xl10 offset-xl1">
                                            <label for="nome">Nome</label>
                                            <input type="text" id="nome" name="nome"  required>
                                        </div>
                                    </div>   
                                    <div class="row">
                                        <div class="col s12 xl10 offset-xl1">
                                            <label for="usuario">Usu�rio (nome para entrar no sistema)</label>
                                            <input type="text" id="usuario" name="usuario"  required>
                                        </div>
                                    </div>  
                                    <div class="row">
                                        <div class="col s12 xl10 offset-xl1">
                                            <label for="senha">Senha</label>
                                            <input type="password" id="senha" name="senha"  required>
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
        <script src="../JS/consultaCEP.js"></script>
        <script>
            $(document).ready(function () {
                $('select').formSelect();
            });
        </script>
    </body>
</html>
