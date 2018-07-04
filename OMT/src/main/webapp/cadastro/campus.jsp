<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="com.br.OMT.models.Entidade"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Campus - OMT</title>
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
        <link rel="stylesheet" type="text/css" href="../CSS/general.css">    </head>
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

        <div class="row">
            <div class="col s12 m8 l6 offset-l3 offset-m2">
                <div class="card-panel">
                    <div class="center-align"><h4 style="padding: 20px 0">Cadastro de Campus</h4></div>
                    <div class="row">
                        <div class="col s12 l10 offset-l1">
                            <form class="col s12" method="post" name="cadastrar-campus" id="cadastrar-campus" action="/OMT/CampusServlet">
                                <div class="row">
                                    <div class="input-field col s12 xl6 offset-xl1">
                                        <label for="cnpj">CNPJ</label>
                                        <input type="text" id="cnpj" name="cnpj" required>
                                    </div>
                                    <div class="input-field col s12 xl4">
                                        <label for="cnae">CNAE</label>
                                        <input type="text" id="cnae" name="cnae" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12 xl10 offset-xl1">
                                        <label for="nome">Nome do Campus</label>
                                        <input type="text" id="nome" name="nome" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12 xl10 offset-xl1">
                                        <label for="nomeFantasia">Nome Fantasia do Campus</label>
                                        <input type="text" id="nomeFantasia" name="nomeFantasia" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12 xl6 offset-xl1">
                                        <label for="cep">CEP</label>
                                        <input type="text" id="cep" name="cep" required>
                                        <span class="helper-text" data-error="wrong" data-success="right">
                                            Preenchendo o CEP, outros campos relacionados ao endereço serão preenchidos automaticamente
                                        </span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s12 xl10 offset-xl1">
                                        <label for="estado">Estado</label>
                                        <input type="text" id="estado" name="estado" readonly required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s12 xl10 offset-xl1">
                                        <label for="cidade">Cidade</label>
                                        <input type="text" id="cidade" name="cidade" readonly required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s12 xl10 offset-xl1">
                                        <label for="bairro">Bairro</label>
                                        <input type="text" id="bairro" name="bairro" readonly required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s12 xl10 offset-xl1">
                                        <label for="rua">Rua</label>
                                        <input type="text" id="rua" name="rua" readonly required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s12 xl10 offset-xl1">
                                        <label for="numero">Numero</label>
                                        <input type="text" id="numero" name="numero" >
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s12 xl10 offset-xl1">
                                        <label for="complemento">Complemento</label>
                                        <input type="text" id="complemento" name="complemento" required>
                                    </div>
                                </div>  
                                <div class="row">
                                    <div class="input-field col s12 xl10 offset-xl1">
                                        <select name="tipo">
                                            <option value="" disabled selected>Selecionar opção</option>
                                            <option value="C">Campus</option>
                                            <option value="R">Reitoria</option>
                                        </select>
                                        <label>Tipo</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s12 xl10 offset-xl1">
                                        <h6> Usuário padrão</h6>
                                    </div>
                                </div>  
                                <div class="row">
                                    <div class="col s12 xl10 offset-xl1">
                                        <label for="nome">Nome</label>
                                        <input type="text" id="nome" name="nome"  required>
                                    </div>
                                </div>   
                                <div class="row">
                                    <div class="input-field col s12 xl10 offset-xl1">
                                        <label for="usuario">Usuário</label>
                                        <input type="text" id="usuario" name="usuario"  required>
                                        <span class="helper-text" data-error="wrong" data-success="right">Nome para entrar no sistema</span>
                                    </div>
                                </div>  
                                <div class="row">
                                    <div class="col s12 xl10 offset-xl1">
                                        <label for="senha">Senha</label>
                                        <input type="password" id="senha" name="senha"  required>
                                    </div>
                                </div>  

                                <br><br>
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
        <script src="../CSS/parallax-template/js/materialize.js"></script>
        <script src="../JS/jquery.mask.js"></script>
        <script src="../JS/mask.js"></script>
        <script src="../JS/consultaCEP.js"></script>
        <script>
            $(document).ready(function () {
                $('select').formSelect();
            });
            $('#cadastrar-campus').submit(function () {
                $('#cnpj').unmask('00.000.000/0000-00');
                $('#cnae').unmask('00000-0/00');
            });
        </script>
    </body>
</html>
