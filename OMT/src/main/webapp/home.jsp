<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Observat�rio do Mundo Trabalho</title>
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <link rel="stylesheet" href="css/mdb.css"/>
        <link rel="stylesheet" href="css/fontawesome.css"/>
    </head>

    <body>
        <header>
            <%@include file="header.jsp"%>
        </header>
        <div class="container">
            <!--cabeçalho da página de menu logins-->

            <!--mensagem de boas vindas-->
            <h4>
                Seja bem-vindo ao<br>
                <img src="img/logoInicial.png" alt="Logotipo do OMT" height="150" width="300">
            </h4>
            <div class="row">
                <div class="col s12 m10 l4 xl3 offset-l1 offset-xl2 offset-m1" id="tabsLogin">
                    <ul class="tabs">
                        <li><a href="#loginDisc"><i class="fas fa-user-graduate fa-lg"></i>Discentes</a></li>
                        <!--li class="tab"><a href="#loginEmp"><i class="fas fa-user-lock fa-lg"></i>Empresas</a></li-->
                        <li><a href="#loginRet"><i class="fas fa-university fa-lg"></i>Reitoria</a></li>
                        <li><a href="#loginTec"><i class="fas fa-school fa-lg"></i>Campus</a></li>
                    </ul>
                </div>

                <div class="col s12 m8 l6 xl5 offset-m2 offset-l0" id="loginForms">
                    <!--formulário de login Discentes(disc)-->
                    <div class="card" id="loginDisc">
                        <div class="card-content">
                            <h4>Discentes</h4>
                            <form action="/OMT/LoginServlet" method="POST" class="loginMenu">
                                <input type="hidden" name="entidade" value="discente"/>
                                <input type="hidden" name="tipoLogin" id="tipoLogin"/>
                                <input id="matriculaLoginDisc" type="text"  name="login" placeholder="Matrícula ou CPF(sem pontuação)">
                                <input id="senhaLoginDisc" type="password" name="senha" placeholder="Senha">

                                <div>
                                    <input id="buttonLoginDisc" type="submit" value="Entrar">    
                                </div>
                            </form>
                        </div>
                    </div>

                    <!--formulário de login Empresas(Emp)-->
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

                    <!--formulário de login Reitoria(Ret)-->
                    <div class="card" id="loginRet">
                        <div class="card-content">
                            <h4>Reitoria</h4>
                            <form action="/OMT/LoginServlet" method="POST" class="loginMenu">
                                <input type="hidden" name="entidade" value="reitoria"/>
                                <input id="acessoLoginRet" name="usuario" type="text" placeholder="Nome de Acesso">
                                <input id="senhaLoginRet" name="senha" type="password" placeholder="Senha">
                                <div class="right-align">
                                    <input class="btn" id="buttonLoginRet" type="submit" value="Entrar">
                                </div>
                            </form>
                        </div>
                    </div>

                    <!--formulário de login Técnicos Administrativos(Tec)-->
                    <div class="card" id="loginTec">
                        <div class="card-content">
                            <h4>Campus</h4>
                            <form action="/OMT/LoginServlet" method="POST" class="loginMenu">
                                <input type="hidden" name="entidade" value="campus"/>
                                <input id="acessoLogiTec" type="text" name="usuario" placeholder="Nome de Acesso">
                                <input id="senhaLoginTec" type="password" name="senha" placeholder="Senha">
                                <div class="right-align">
                                    <input class="btn" id="buttonLoginTec" type="submit" value="Entrar">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/mdb.min.js"></script>
    </body>
</html>
