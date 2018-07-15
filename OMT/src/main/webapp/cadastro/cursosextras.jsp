<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Novo curso complementar</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
        <link href="../fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="container">
            <div class="card py-4 px-4">
                <form id="cadastrar-curso-extra" method="post" action="/OMT/CursosEspecializantesServlet">
                    <h1 class="font-weight-bold mb-4">Cadastro de Curso Complementar</h1>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="nome">Nome do Curso</label>
                            <input class="form-control" name="nome" id="nome" type="text" class="validate">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="nivel">Nivel do Curso</label>
                            <input class="form-control" id="nivel" type="text" class="validate" name="nivel"/>
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
    </body>
</html>
