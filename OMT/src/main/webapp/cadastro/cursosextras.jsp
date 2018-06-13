<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Novo curso complementar</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css"> 
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="container">
            <div class="row">
                <div class="col s12 l8 offset-l2">
                    <div class="card-panel">
                        <div class="row">
                            <form id="cadastrar-formacao"  class="col s10 offset-s1 l8 offset-l2" method="post" action="/OMT/CursosEspecializantesServlet">
                                <div class="row"><h4 class="center-align">Cadastro de Curso Complementar</h4></div>
                                <div class="row">
                                    <div class="input-field col s12 m6">
                                        <input name="nome" id="nome" type="text" class="validate">
                                        <label for="nome">Nome do Curso</label>
                                    </div>
                                    <div class="input-field col s12 m6">
                                        <input id="nivel" type="text" class="validate" name="nivel"/>
                                        <label for="nivel">Nivel do Curso</label>
                                    </div>
                                </div>
                                <br>
                                <div class="row center">
                                    <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect green">Confirmar</button>
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
    </body>
</html>
