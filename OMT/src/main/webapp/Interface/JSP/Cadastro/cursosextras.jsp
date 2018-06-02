<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Novo curso extra - OMT</title>
        <link rel="stylesheet" type="text/css" href="../../_CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../../_CSS/parallax-template/css/style.css">  
    </head>
    <body>
        <div class="container">
            <div class="row">
                <form id="cadastrar-formacao" class="col s12" method="post" action="/OMT/CursosEspecializantesServlet">
                    <div class="row">
                        <div class="input-field col s12 m6">
                            <input name="nome" id="nome" type="text" class="validate">
                            <label for="nome">Nome</label>
                        </div>
                        <div class="input-field col s12 m6">
                            <input id="nivel" type="text" class="validate" name="nivel"/>
                            <label for="nivel">Nivel</label>
                        </div>
                    </div>
                    <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect waves-green">Confirmar</button>
                </form>
            </div>
        </div>
        <script src="../../_JS/jquery-3.2.1.min.js"></script>
        <script src="../../_JS/jquery.mask.js"></script>
        <script src="../../_JS/mask.js"></script>
        <script src="../../_CSS/parallax-template/js/materialize.js"></script>
    </body>
</html>
