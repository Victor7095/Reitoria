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
        <title>Nova forma��o - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
    </head>
    <body>
        <div class="container">
            <div class="row">
                <form id="cadastrar-formacao" class="col s12" method="post" action="/OMT/FormacaoServlet">
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
                            <label for="anofinalizacao">Ano de finaliza��o</label>
                        </div>
                    </div>
                    <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect waves-green">Confirmar</button>
                </form>
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