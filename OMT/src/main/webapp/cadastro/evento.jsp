<%-- 
    Document   : evento
    Created on : 28/05/2018, 20:39:30
    Author     : Gabriel San Martin
--%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Evento - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">    
    </head>
    <body>
        <header>

        </header>
        <div class="container">
            <div class="row">
                <div class="col s8 offset-s2">
                    <div class="card">
                        <div class="card-action green darken-3 white-text center-align">
                            <h3>Cadastro de Evento</h3>
                        </div>
                        <br>
                        <div class="card-content">
                            <div class="row">
                                <form class="col s12" method="post" id="cadastrar-evento" action="/OMT/EventosServlet">
                                    <div class="row">
                                        <div class="input-field col s7 offset-s1">
                                            <label for="nome">Nome do Evento</label>
                                            <input type="text" id="nome" name="nome" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s10 offset-s1">
                                            <textarea id="descricao" name="descricao" class="materialize-textarea" data-length="120"></textarea>
                                            <label for="descricao">Descrição do Evento</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s4 offset-s1">
                                            <span>Data de Início das Inscrições</span>
                                        </div>
                                        <div class="col s4 offset-s2">
                                            <input id="inscricaoInicio" name="inscricaoInicio" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s4 offset-s1">
                                            <span>Data de Fim das Inscrições</span>
                                        </div>
                                        <div class="col s4 offset-s2">
                                            <input id="inscricaoFim" name="inscricaoFim" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s4 offset-s1">
                                            <span>Data de Início do Evento</span>
                                        </div>
                                        <div class="col s4 offset-s2">
                                            <input id="inicio" name="inicio" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s4 offset-s1">
                                            <span>Data de Fim do Evento</span>
                                        </div>
                                        <div class="col s4 offset-s2">
                                            <input id="fim" name="fim" class="datepicker">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="row center">
                                        <div class="col m12 l2 offset-l2 btn-mb-md">
                                            <button type="reset" class="btn btn-large waves-effect waves-green">Limpar</button>
                                        </div>
                                        <div class="col m12 l2 offset-l3">
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
        <script>
            $(".datepicker").datepicker({
                selectMonths: true,
                selectYears: true,
                clear: false,
                format: 'dd/mm/yyyy',
                today: "Hoje",
                close: "X",
                autoClose: true
            });
            $('#cadastrar-evento').submit(function (e) {
                alert($('#inscricaoInicio').val());
            });
        </script>
    </body>
</html>
