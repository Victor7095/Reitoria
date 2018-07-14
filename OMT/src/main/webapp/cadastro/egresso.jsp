<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="com.br.OMT.models.*"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Aluno - OMT</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
        <link href="../fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css"/>
        <link href="../css/inputFotoPerfil.css" media="all" rel="stylesheet" type="text/css"/>
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
            <div class="card py-4 px-4">
                <h1 class="font-weight-bold">Cadastro de Egresso</h1>
                <form method="post" id="cadastrar-egresso" action="/OMT/DiscenteServlet" 
                      enctype="multipart/form-data">
                    <div class="foto-perfil form-group">
                        <div class="kv-avatar">
                            <div class="file-loading">
                                <input id="fotoPerfil" name="inputFoto" type="file">
                            </div>
                        </div>
                        <div class="kv-avatar-hint"><small>Tamanho máximo da foto: 1500 KB</small></div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="usuario">Matrícula</label>
                            <input class="form-control" type="text" id="usuario" name="usuario" maxlength="12" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="nome">Nome Completo</label>
                            <input class="form-control" type="text" id="nome" name="nome" required>                                        
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="cpf">CPF</label>
                            <input class="form-control" type="text" id="cpf" name="cpf" maxlength="18" required> 
                        </div>
                        <div class="form-group col-md-6">
                            <label for="rg">RG</label>
                            <input class="form-control" type="text" id="rg" name="rg" required> 
                        </div>
                    </div>
                    <div id="kv-avatar-errors-1" class="center-block" style="width:800px;display:none"></div>
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
        <!-- sortable.min.js is only needed if you wish to sort / rearrange files in initial preview. 
            This must be loaded before fileinput.min.js -->
        <script src="../fileinput/js/plugins/sortable.min.js" type="text/javascript"></script>
        <!-- the main fileinput plugin file -->
        <script src="../fileinput/js/fileinput.min.js"></script>
        <!-- optionally uncomment line below for loading your theme assets for a theme like Font Awesome (`fa`) -->
        <script src="../fileinput/themes/fa/theme.min.js"></script>
        <script src="../fileinput/js/locales/pt-BR.js"></script>
        <script src="../js/inputFotoPerfil.js"></script>
        <script>
            $('#cadastrar-egresso').submit(function () {
                $('#cpf').unmask('000.000.000-00');
                $('#rg').unmask('00.000.000-0');
            });
        </script>
    </body>
</html>