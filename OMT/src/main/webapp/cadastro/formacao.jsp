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
        <title>Nova forma��o</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
        <script defer src="../fileinput/js/fontawesome-all.min.js"></script> 
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="container row">
            <div class="col s12 l8 offset-l2">
                <div class="card-panel">
                    <div class="row">
                        <div class="col s12 l10 offset-l1">
                            <form id="cadastrar-formacao" method="post" action="/OMT/FormacaoServlet">
                                <h4 class="center-align">Cadastrar Forma��o</h4><br>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <select name="anofinalizacao" id="anofinalizacao">
                                            <option value="" disabled selected>Escolha o ano de forma��o</option>
                                        </select>
                                        <label>Ano de finaliza��o</label>
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
                format: 'yyyy',
                today: "Hoje",
                close: "X",
                autoClose: true,
                viewMode: "years",
                minViewMode: "years"
            });
            $('#cadastrar-formacao').submit(function (e) {
                alert($('#anofinalizacao').val());
            });

            $(document).ready(function () {
                var date = new Date();
                while (date.getFullYear() >= 1930) {
                    var x = document.getElementById("anofinalizacao");
                    var option = document.createElement("option");
                    option.text= date.getFullYear();
                    option.value = date.getFullYear();
                    x.add(option);
                    date.setFullYear(date.getFullYear()-1);
                }
                $('select').formSelect();
            });

        </script>
    </body>
</html>
