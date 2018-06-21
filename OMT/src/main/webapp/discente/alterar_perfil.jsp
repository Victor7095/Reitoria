<%-- 
    Document   : alterar_perfil
    Created on : 07/06/2018, 15:18:10
    Author     : Natan S. dos Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Perfil Aluno - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/forms.css">
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <%@include file="alunoMenu.jsp"%>
        <div class="container">
            <div class="row">
                <div class="col s12 offset-s0 m8 offset-m2">
                    <div class="card">
                        <div class="card-content">
                            <h4 class="center-align">Perfil do Usuário</h4><br>
                            <form name="cadastrar-egresso" method="post" action="/OMT/DiscenteServlet"
                                  enctype="multipart/form-data">
                                <div class="section">
                                    <div class="row">
                                        <div class="col s12 m10 offset-m1">
                                            <h5>Informações Básicas</h5>
                                        </div>
                                        <div class="col s12 offset-s0 m5 center">
                                            <img src="/OMT/DiscenteServlet" width="150" height="150" style="margin-top: 80px"><br>
                                            <input type="file" name="foto">
                                        </div>
                                        <div class="input-field col s12 m10 offset-m1">
                                            <label for="nome">Nome Completo</label>
                                            <input type="text" id="nome" name="nome" >
                                        </div>
                                        <div class="input-field col s12 m5 offset-m1">
                                            <label for="cpf">CPF</label>
                                            <input type="text" name="cpf" id="cpf" maxlength="14" >
                                        </div>
                                        <div class="input-field col s12 m5">
                                            <label for="rg">RG</label>
                                            <input type="text" id="rg" name="rg" maxlength="8" >
                                        </div>
                                    </div>
                                </div>
                                <div class="section">
                                    <div class="row">
                                        <div class="col s12 m10 offset-m1">
                                            <h5>Acesso</h5>
                                            <div class="input-field">
                                                <label for="senha">Senha</label>
                                                <input type="password" id="senha" name="senha" required>
                                            </div>
                                            <div class="input-field">
                                                <label for="confirmar">Confirmar Senha</label>
                                                <input type="password" id="confirmar" name="confirmar" required>
                                            </div>
                                            <div class="input-field">
                                                  <label for="nova">Nova Senha</label>
                                                  <input type="password" id="novaSenha" name="nova"> 
                                            </div>
                                        
                                    </div>
                                </div>


                                <br><br>
                                <div class="row">
                                    <div class="col s6 btn-mb-sm">
                                        <button type="reset" class="btn btn-large waves-effect waves-green white black-text">Limpar</button>
                                    </div>
                                    <div class="col s6 ">
                                        <button type="submit" name="acao" value="editar" class="btn btn-large waves-effect waves-green green">Atualizar</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../JS/jquery-3.2.1.min.js"></script>
    <script src="../JS/jquery.mask.js"></script>
    <script src="../JS/mask.js"></script>
    <script src="../CSS/parallax-template/js/materialize.js"></script>
    <%@include file="../footer.jsp"%>
    </body>
</html>
