<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="com.br.OMT.models.Entidade"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Campus - OMT</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
        <link href="../fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <%!HttpSession session;%>
        <%if (request.getSession().getAttribute("usuario") != null && request.getSession().getAttribute("entidade") != null) {%>
        <%!Entidade e;%>
        <%e = (Entidade) request.getSession().getAttribute("entidade");%>
        <%if (e.getTipo() == 'R') {%>
        <%@include file="../reitoria/reitoriaMenu.jsp"%>
        <%} else if (e.getTipo() == 'C') {%>
        <%@include file="../campus/campusMenu.jsp"%>
        <%} else {%>
        <% response.getWriter().print("Deu Erro");%>
        <%}%>

        <%}%>

        <div class="container">
            <div class="card px-4 py-4">
                <form method="post" name="cadastrar-campus" id="cadastrar-campus" action="/OMT/CampusServlet">
                    <h1 class="font-weight-bold mb-4">Cadastro de Campus</h1>
                    <section>
                        <h4 class="mb-4"><strong>Dados do campus</strong></h4>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="cnpj">CNPJ</label>
                                <input class="form-control CNPJ" type="text" id="cnpj" name="cnpj" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="cnae">CNAE</label>
                                <input class="form-control CNAE" type="text" id="cnae" name="cnae" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nome">Nome do Campus</label>
                            <input class="form-control" type="text" id="nome" name="nome" required>
                        </div>
                        <div class="form-group">
                            <label for="nomeFantasia">Nome Fantasia do Campus</label>
                            <input class="form-control" type="text" id="nomeFantasia" name="nomeFantasia" required>
                        </div>
                        <div class="form-group">
                            <label for="cep">CEP</label>
                            <input class="form-control CEP" type="text" id="cep" name="cep" required aria-describedby="infoCEP">
                            <small id="infoCEP" class="form-text text-muted">
                                Preenchendo o CEP, outros campos relacionados ao endereço serão preenchidos automaticamente
                            </small>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="estado">Estado</label>
                                <input class="form-control" type="text" id="estado" name="estado" readonly required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="cidade">Cidade</label>
                                <input class="form-control" type="text" id="cidade" name="cidade" readonly required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="bairro">Bairro</label>
                                <input class="form-control" type="text" id="bairro" name="bairro" readonly required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="rua">Rua</label>
                                <input class="form-control" type="text" id="rua" name="rua" readonly required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="numero">Número</label>
                                <input class="form-control" type="text" id="numero" name="numero" >
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col">
                                <label for="complemento">Complemento</label>
                                <input class="form-control" type="text" id="complemento" name="complemento" required>
                            </div>
                        </div>  
                        <div class="form-row">
                            <div class="form-group col">
                                <label for="tipo">Tipo</label>
                                <select class="form-control" name="tipo" id="tipo">
                                    <option value="" disabled selected>Selecionar opção</option>
                                    <option value="C">Campus</option>
                                    <option value="R">Reitoria</option>
                                </select>
                            </div>
                        </div>
                    </section>
                    <hr class="my-4">
                    <section>
                        <h4 class="mb-4"><strong>Usuário padrão</strong></h4> 
                        <div class="form-row">
                            <div class="form-group col">
                                <label for="nomeUsuario">Nome</label>
                                <input class="form-control" type="text" id="nomeUsuario" name="nomeUsuario" required>
                            </div>
                        </div>   
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="login">Usuário</label>
                                <input class="form-control" type="text" id="login" name="login" required aria-describedby="infoLogin">
                                <small id="infoLogin" class="form-text text-muted">
                                    Nome para entrar no sistema
                                </small>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="senha">Senha</label>
                                <input class="form-control" type="password" id="senha" name="senha" required>
                            </div>
                        </div>
                    </section>
                    <div class="text-right">
                        <button type="submit" name="acao" value="cadastrar" class="btn btn-md btn-light-green waves-effect waves-green">
                            <i class="fa fa-check mr-1"></i>Cadastrar</button>
                        <button type="reset" class="btn btn-md btn-grey waves-effect waves-green"><i class="fas fa-eraser mr-1"></i>Limpar</button>
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
        <script src="../JS/consultaCEP.js"></script>
        <script>
            $('#cadastrar-campus').submit(function () {
                $('#cnpj').unmask('00.000.000/0000-00');
                $('#cnae').unmask('00000-0/00');
            });
        </script>
    </body>
</html>
