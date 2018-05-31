<%-- 
    Document   : eventos
    Created on : 30/05/2018, 19:20:39
    Author     : Gabriel San Martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eventos - OMT</title>
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
                    <h3>Informações dos Eventos Cadastrados</h3>
                    <br><br>
                    <p>
                        <div class="row">
                            <form method="get" action="">
                                <input name="search" type="text" class="input col s4" placeholder="Insira o nome de um evento aqui...">
                                <button type="submit" class="btn" style="margin-left: 20px">Pesquisar</button>
                                <a href="../Cadastro/evento.jsp" class="btn btn-large green waves-effect right">Cadastrar Evento</a>
                            </form>
                        </div>
                    </p>
                    <br>
                    <div class="row">
                        <div class="col s12">
                            <table class="striped centered">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nome</th>
                                        <th>Descrição</th>
                                        <th>Situação</th>>
                                        <th style="width: 300px">Ações</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Semana de Informática</td>
                                        <td>Semana onde se realiza palestras e exposições voltadas pra área de informática.</td>
                                        <td>Inscrições Abertas</td>
                                        <td class="center-align">
                                            <button class="btn-small green">Ver</button>
                                            <button class="btn-small yellow darken-2">Alterar</button>
                                            <button class="btn-small red">Deletar</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Semana de Informática</td>
                                        <td>Semana onde se realiza palestras e exposições voltadas pra área de informática.</td>
                                        <td>Semana do Evento</td>
                                        <td class="center-align">
                                            <button class="btn-small green">Ver</button>
                                            <button class="btn-small yellow darken-2">Alterar</button>
                                            <button class="btn-small red">Deletar</button>
                                        </td>
                                    </tr><tr>
                                        <td>3</td>
                                        <td>Semana de Informática</td>
                                        <td>Semana onde se realiza palestras e exposições voltadas pra área de informática.</td>
                                        <td>Evento Finalizado</td>
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
            </div>
            <script src="../../_JS/jquery-3.2.1.min.js"></script>
            <script src="../../_CSS/parallax-template/js/materialize.js"></script>
    </body>
</html>
