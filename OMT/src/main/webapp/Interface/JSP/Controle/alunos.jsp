<%-- 
    Document   : Alunos
    Created on : 29/05/2018, 14:27:55
    Author     : Gabriel San Martin
--%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alunos - OMT</title>
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
                            <h3>Informações dos Alunos Cadastrados</h3>
                        </div>
                        <div class="col s3 right">
                            <button class="btn-large" style="margin-top: 30px;" type="submit">Adicionar um Aluno</button>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <table class="striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome</th>
                                    <th>CPF</th>
                                    <th>RG</th>
                                    <th class="center-align">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Gabriel Sena San Martin</td>
                                    <td>4324234</td>
                                    <td>432432532</td>
                                    <td class="center-align">
                                        <button class="btn-small green">Ver</button>
                                        <button class="btn-small yellow darken-2">Alterar</button>
                                        <button class="btn-small red">Deletar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Pedro Vinícius de Oliveira Pequeno</td>
                                    <td>723894</td>
                                    <td>44326732</td>
                                    <td class="center-align">
                                        <button class="btn-small green">Ver</button>
                                        <button class="btn-small yellow darken-2">Alterar</button>
                                        <button class="btn-small red">Deletar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Natan Siqueira dos Santos</td>
                                    <td>678432</td>
                                    <td>432672</td>
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
