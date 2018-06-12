<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Novo projeto</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col s12 xl8 offset-xl2">
                    <div class="card">
                        <div class="card-action green darken-3 white-text center-align">
                            <h3>Novo Projeto</h3>
                        </div>
                        <br>
                        <form id="cadastrar-formacao" method="POST" action="/OMT/ProjetoServlet" class="card-panel">

                            <div class="row">
                                <div class="input-field col s12">
                                    <input name="nome" id="nome" type="text" class="validate">
                                    <label for="nome">Nome</label>
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
                                    <input id="area" type="text" class="validate" name="area"/>
                                    <label for="area">Área</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class='col s5 m6'>
                                    <div class='left-align'>
                                        <button type="reset" class="btn btn-large waves-effect waves-green">Limpar</button>
                                    </div>
                                </div>
                                <div class='col s5 m6'>
                                    <div class='right-align'>
                                        <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect waves-green">Confirmar</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../JS/jquery-3.2.1.min.js"></script>
    <script src="../JS/jquery.mask.js"></script>
    <script src="../JS/mask.js"></script>
    <script src="../CSS/parallax-template/js/materialize.js"></script>
</body>
</html>