<%@page import="com.br.OMT.models.Discente"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Observatório Mundo do Trabalho</title>
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <link rel="stylesheet" href="css/mdb.css"/>
        <link rel="stylesheet" href="css/fontawesome-all.css">
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <jsp:include page="header.jsp"/>
        <div class="container">
            <!--cabeçalho da página de menu logins-->

            <!--mensagem de boas vindas-->
            <h4 class="text-center my-4">
                Seja bem-vindo ao<br>
                <img src="img/logoInicial.png" alt="Logotipo do OMT" height="150" width="300">
            </h4>

            <!--Nav Tabs-->
            <ul class="nav nav-tabs nav-justified green darken-2" role="tablist">
                <li class="nav-item">
                    <a href="#login1" class="nav-link active" data-toggle="tab" role="tab">
                        <i class="fas fa-user-graduate fa-lg"></i>
                        Discente
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#login2" class="nav-link" data-toggle="tab" role="tab">
                        <i class="fas fa-university fa-lg"></i>
                        Reitoria
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#login3" class="nav-link" data-toggle="tab" role="tab">
                        <i class="fas fa-school fa-lg"></i>
                        Campus
                    </a>
                </li>
            </ul>

            <div class="tab-content card mb-5">
                <div class="tab-pane fade in show active" id="login1" role="tabpanel">
                    <div class="mt-4 mx-4">
                        <form action="/OMT/LoginServlet" method="POST" class="loginMenu">
                            <input type="hidden" name="entidade" value="discente"/>

                            <label for="matriculaLoginDisc" class="grey-text">Matrícula ou CPF(sem pontuação)</label>
                            <input class="form-control" id="matriculaLoginDisc" type="text"  name="login">

                            <br>

                            <label for="senhaLoginDisc" class="grey-text">Senha</label>
                            <input class="form-control" id="senhaLoginDisc" type="password" name="senha">

                            <div class="text-center my-4">
                                <button class="btn btn-green" id="buttonLoginDisc" type="submit">Entrar</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="tab-pane fade" id="login2" role="tabpanel">
                    <div class="mt-4 mx-4">
                        <form action="/OMT/LoginServlet" method="POST" class="loginMenu">
                            <input type="hidden" name="entidade" value="reitoria"/>

                            <label for="acessoLoginRet" class="grey-text">Nome de Acesso</label>
                            <input class="form-control" id="acessoLoginRet" name="usuario" type="text">

                            <br>

                            <label for="senhaLoginRet" class="grey-text">Senha</label>
                            <input class="form-control" id="senhaLoginRet" name="senha" type="password">

                            <div class="text-center my-4">
                                <button class="btn btn-green" id="buttonLoginRet" type="submit">Entrar</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="tab-pane fade" id="login3" role="tabpanel">
                    <div class="mt-4 mx-4">
                        <form action="/OMT/LoginServlet" method="POST" class="loginMenu">
                            <input type="hidden" name="entidade" value="campus"/>

                            <label for="acessoLogiTec" class="grey-text">Nome de Acesso</label>
                            <input class="form-control" id="acessoLogiTec" type="text" name="usuario">

                            <br>

                            <label for="senhaLoginTec" class="grey-text">Senha</label>
                            <input class="form-control" id="senhaLoginTec" type="password" name="senha">

                            <div class="text-center my-4">
                                <button class="btn btn-green" id="buttonLoginTec" type="submit">Entrar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>


            <!--formulÃ¡rio de login Empresas(Emp)-->
            <!--div class="card" id="loginEmp">
                <div class="card-content">
                    <h4>Empresas</h4>
                    <form action="/OMT/LoginServlet" method="POST" class="loginMenu">
                        <input type="hidden" name="entidade" value="empresa"/>
                        <input id="cnpjLoginEmp" name="usuario" type="text" placeholder="CNPJ">
                        <input id="senhaLoginEmp" name="senha" type="password" placeholder="Senha">
                        <input class="btn" id="buttonLoginEmp" type="submit" value="Entrar">
                    </form>
                </div>
            </div-->
        </div>
        <jsp:include page="footer.jsp"/>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/mdb.min.js"></script>
    </body>
</html>
