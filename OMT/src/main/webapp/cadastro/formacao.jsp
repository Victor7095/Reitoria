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
        <title>Nova formação - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="container row">
            <div class="col s12 l10 offset-l1">
                <div class="card-panel">
                    <div class="row">
                        <div class="col s12 l8 offset-l2">
                            <form id="cadastrar-formacao" method="post" action="/OMT/FormacaoServlet">
                                <h4 class="center-align">Cadastrar Formação</h4><br>
                                <div class="row">
                                    <div class="input-field col s4">
                                        <input type="text" id="anofinalizacao" class="datepicker" class="validate" name="anofinalizacao"/>  
                                        <label for="anofinalizacao">Ano de finalização</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <input name="nome" id="nome" type="text" class="validate">
                                        <label for="nome">Nome</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <input id="escola" type="text" class="validate" name="escola"/>
                                        <label for="escola">Escola</label>
                                    </div>
                                </div>
                                <div class="row center">
                                    <div class="col m12 l2 offset-l2 btn-mb-md">
                                        <button type="reset" class="btn btn-large waves-effect white black-text">Limpar</button>
                                    </div>
                                    <div class="col m12 l2 offset-l3">
                                        <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect green">Cadastrar</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../footer.jsp"%>
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
