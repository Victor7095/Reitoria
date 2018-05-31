<%-- 
    Document   : empresas
    Created on : 30/05/2018, 19:21:13
    Author     : Gabriel San Martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empresas - OMT</title>
        <link rel="stylesheet" type="text/css" href="../../_CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../../_CSS/parallax-template/css/style.css">   
    </head>
    <body>
        <header>

        </header>
        <div class="container">
            <div class="card">
                <div class="card-content">                                <!--<div class="row">
                            <form class="col s12">
                                <div class="input-field col s8">
                                    <input id="search" name="search" type="text">
                                    <label for="search">Pesquisar</label>
                                </div>
                                <div class="col s4">
                                    <button type="submit" class="btn waves-effect waves-green" style="margin-top: 10px;">Pesquisar</button>   
                                </div>
                            </form>
                        </div>-->
                    <div class="row">
                        <div class="col s9">
                            <h3>Informações das Empresas Cadastradas</h3>
                        </div>
                        <div class="col s3 right">
                            <button class="btn-large" style="margin-top: 30px;" type="submit">Adicionar uma Empresa</button>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <table class="striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome Fantasia</th>
                                    <th>Nome Real</th>
                                    <th>Endereço</th>
                                    <th>CNPJ</th>
                                    <th>CNAE</th>
                                    <th class="center-align">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Bemol</td>
                                    <td>Benchimol Irmão & Cia Ltda</td>
                                    <td>Rua das Flores. Centro. Manaus/AM</td>
                                    <td>64732868423</td>
                                    <td>6437823</td>
                                    <td class="center-align">
                                        <button class="btn-small green">Ver</button>
                                        <button class="btn-small yellow darken-2">Alterar</button>
                                        <button class="btn-small red">Deletar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Thiago Mudanças</td>
                                    <td>Thiago Mudanças Ltda</td>
                                    <td>Rua das Flores. Centro. Manaus/AM</td>
                                    <td>64732868423</td>
                                    <td>6437823</td>
                                    <td class="center-align">
                                        <button class="btn-small green">Ver</button>
                                        <button class="btn-small yellow darken-2">Alterar</button>
                                        <button class="btn-small red">Deletar</button>
                                    </td>
                                </tr><tr>
                                    <td>3</td>
                                    <td>Bemol</td>
                                    <td>Benchimol Irmão & Cia Ltda</td>
                                    <td>Rua das Flores. Centro. Manaus/AM</td>
                                    <td>64732868423</td>
                                    <td>6437823</td>
                                    <td class="center-align">
                                        <button class="btn-small green">Ver</button>
                                        <button class="btn-small yellow darken-2">Alterar</button>
                                        <button class="btn-small red">Deletar</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <script src="../../_JS/jquery-3.2.1.min.js"></script>
            <script src="../../_CSS/parallax-template/js/materialize.js"></script>
    </body>
</html>