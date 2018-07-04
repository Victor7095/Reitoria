<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Novo curso complementar</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">
        <!-- bootstrap 4.x is supported. You can also use the bootstrap css 3.3.x versions -->
        <link rel="stylesheet" href="../fileinput/css/bootstrap.css">
        <link href="../fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
        <!-- optionally uncomment line below if using a theme or icon set like font awesome (note that default icons used are glyphicons and `fa` theme can override it) -->
        <script defer src="../fileinput/js/fontawesome-all.min.js"></script> 
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/forms.css">
        <link rel="stylesheet" type="text/css" href="../CSS/general.css">
        <script src="../fileinput/js/fontawesome-all.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col s12 l8 offset-l2">
                    <div class="card-panel">
                        <div class="row">
                            <form id="cadastrar-formacao"  class="col s12 l10 offset-l1" method="post" action="/OMT/CursosEspecializantesServlet">
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
    </body>
</html>
