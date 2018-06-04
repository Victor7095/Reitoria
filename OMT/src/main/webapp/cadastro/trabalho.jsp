<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Novo trabalho - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col s12 l6">
                    <form id="cadastrar-formacao" method="POST" action="/OMT/TrabalhoServlet" class="card-panel">

                        <div class="row">
                            <div class="input-field col s12">
                                <input name="profissao" id="profissao" type="text" class="validate">
                                <label for="profissao">Profissão</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input name="tipo" id="tipo" type="text" class="validate">
                                <label for="tipo">Tipo</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input id="salario" type="text" class="validate" name="salario"/>
                                <label for="salario">Salário</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input id="descricao" type="text" class="validate" name="descricao"/>
                                <label for="descricao">Descricao</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input type="text" id="inicio" class="datepicker" class="validate" name="inicio"/>  
                                <label for="inicio">Início das inscrições</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input type="text" id="fim" class="datepicker" class="validate" name="fim"/>  
                                <label for="fim">Término das inscrições</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col s12 right-align">
                                <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect waves-green">Confirmar</button>
                            </div>
                        </div>
                    </form>
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
