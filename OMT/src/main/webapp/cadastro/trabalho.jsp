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
                <form id="cadastrar-trabalho" method="POST" action="/OMT/TrabalhoServlet">
                    <h1 class="font-weight-bold mb-4">Cadastrar Trabalho</h1>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="profissao">Profissão</label>
                            <input class="form-control validate" name="profissao" id="profissao" type="text">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="tipo">Tipo</label>
                            <input class="form-control validate" name="tipo" id="tipo" type="text">
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col">
                            <label for="salario">Salário</label>
                            <input class="form-control validate" name="salario" id="salario" type="text"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="descricao">Descrição</label>
                        <textarea class="form-control" name="descricao" id="descricao" rows="5"></textarea>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="inicio">Início das inscrições</label>
                            <input class="form-control validate data" type="text" id="inicio" name="inicio"/>  
                        </div>
                        <div class="form-group col-md-6">
                            <label for="fim">Término das inscrições</label>
                            <input class="form-control validate data" type="text" id="fim" name="fim"/>  
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
        <script src="../js/general.js"></script>
        <script src="../js/jquery.mask.min.js"></script>
        <script src="../js/mascaras.js"></script>
        <script>
            $('#cadastrar-evento').submit(function (e) {
                alert($('#inscricaoInicio').val());
            });
        </script>
    </body>
</html>
