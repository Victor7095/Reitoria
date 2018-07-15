<%-- 
    Document   : formacao
    Created on : 31/05/2018, 23:11:12
    Author     : vinic
--%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Nova formação</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="container">
            <div class="card px-4 py-4">
                <form id="cadastrar-formacao" method="post" action="/OMT/FormacaoServlet">
                    <h1 class="font-weight-bold mb-4">Cadastrar Formação</h1>
                    <div class="form-group">
                        <label for="nome">Nome</label>
                        <input class="form-control validate" id="nome" name="nome" type="text">
                    </div>
                    <div class="row">
                        <div class="form-group col-lg-8">
                            <label for="escola">Escola ou Instituto</label>
                            <input class="form-control validate" id="escola" name="escola" type="text">
                        </div>
                        <div class="form-group col-lg-4">
                            <label>Ano de finalização</label>
                            <select class="form-control" name="anofinalizacao" id="anofinalizacao" aria-described-by="infoAnoFinalizacao">
                                <option value="" disabled selected>Escolha o ano de formação</option>
                            </select>
                            <small id="infoAnoFinalizacao" class="form-text text-muted">
                                Ano em que concluiu a formação
                            </small>
                        </div>
                    </div>
                    <div class="text-right">
                        <button type="submit" name="acao" value="cadastrar" class="btn btn-md btn-light-green waves-effect">
                            <i class="fa fa-check mr-1"></i>Cadastrar</button>
                        <button type="reset" class="btn btn-md btn-grey waves-effect"><i class="fas fa-eraser mr-1"></i>Limpar</button>
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
            $(document).ready(function () {
                var date = new Date();
                while (date.getFullYear() >= 1930) {
                    var x = document.getElementById("anofinalizacao");
                    var option = document.createElement("option");
                    option.text = date.getFullYear();
                    option.value = date.getFullYear();
                    x.add(option);
                    date.setFullYear(date.getFullYear() - 1);
                }
                $('select').formSelect();
            });

        </script>
    </body>
</html>
