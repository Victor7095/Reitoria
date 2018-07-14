<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Novo trabalho - OMT</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="container">
            <div class="card px-4 py-4">
                <form id="cadastrar-formacao" method="POST" action="/OMT/TrabalhoServlet">
                    <div class="row">
                        <h4 class="center-align">Cadastrar Trabalho</h4>
                    </div>
                    <div class="card-content">
                        <form id="cadastrar-formacao" method="POST" action="/OMT/TrabalhoServlet">

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
                                <div class="col s12 m3 center offset-m2 offset-l3 xl4 offset-xl2 btn-mb-md">
                                    <button type="reset" class="btn waves-effect waves-green"><i class="fas fa-eraser"></i>Limpar</button>
                                </div>
                                <div class="col s12 m3 center offset-m2 offset-l1 xl4">
                                    <button type="submit" name="acao" value="cadastrar" class="btn waves-effect waves-green">
                                        <i class="fa fa-check"></i>Cadastrar</button>
                                </div>
                            </div>
                    </div>
                </form>
            </div>
        </div>
        <%@include file="../footer.jsp"%>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
        <script src="../js/jquery.mask.min.js"></script>
        <script src="../js/mascaras.js"></script>
        <script>
            $('#cadastrar-evento').submit(function (e) {
                alert($('#inscricaoInicio').val());
            });
        </script>
    </body>
</html>
