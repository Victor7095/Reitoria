<%-- 
    Document   : formacao
    Created on : 31/05/2018, 23:11:12
    Author     : vinic
--%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Nova formação</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col s12 xl8 offset-xl2">
                    <div class="card">
                        <div class="card-action green darken-3 white-text center-align">
                            <h3>Nova Formação</h3>
                        </div>
                        <br>
                        <div class="card-content">
                            <form id="cadastrar-formacao" method="post" action="/OMT/FormacaoServlet">
                                <div class="row">
                                    <div class="input-field col s6">
                                        <input name="nome" id="nome" type="text" class="validate">
                                        <label for="nome">Nome</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <input id="escola" type="text" class="validate" name="escola"/>
                                        <label for="escola">Escola</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <input type="text" id="anofinalizacao" class="datepicker" class="validate" name="anofinalizacao"/>  
                                        <label for="anofinalizacao">Ano de finalização</label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class='col s5 m6'>
                                        <div class='left-align'>
                                            <button type="reset" class="btn btn-large waves-effect waves-green">Limpar</button>
                                        </div>
                                    </div>
                                    <div class='col s5 m6'>
                                        <div class='right-align'>
                                            <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect waves-green">Confirmar</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
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
            $('#cadastrar-formacao').submit(function (e) {
                alert($('#anofinalizacao').val());
            });
        </script>
    </body>
</html>
