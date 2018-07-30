<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Perfil Aluno - OMT</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/inputFotoPerfil.css">
        <link rel="stylesheet" href="../fileinput/css/fileinput.min.css" media="all" type="text/css"/>
    </head>
    <body>
        <jsp:include page="../header.jsp"/>
        <jsp:include page="alunoMenu.jsp"/>
        <div class="container">
            <div class="card px-4 py-4">
                <h4>Perfil do Usuário</h4><br>
                <form id="formAlterar" name="formAlterar" method="post" action="/OMT/DiscenteServlet"
                      enctype="multipart/form-data" data-id="<c:out value="${usuario.id}"/>">
                    <div class="section">
                        <h5>Informações Básicas</h5>
                        <div class="my-4">
                            <div class="kv-avatar">
                                <div class="file-loading">
                                    <input id="fotoPerfil" name="fotoPerfil" type="file" required>
                                </div>
                            </div>
                            <div class="kv-avatar-hint"><small>Tamanho máximo do arquivo: 1500 KB</small></div>
                        </div>
                        <div class="form-group">
                            <label for="nome">Nome Completo</label>
                            <input class="form-control" type="text" id="nome" name="nome" value="<c:out value="${usuario.nome}"/>">
                        </div>
                        <div class="row">
                            <div class="col">
                                <label for="matricula">Matrícula</label>
                                <input class="form-control" disabled type="text" name="matricula" id="matricula" maxlength="14" value="<c:out value="${usuario.usuario}"/>">
                            </div>
                            <div class="col">
                                <label for="cpf">CPF</label>
                                <input class="form-control CPF" type="text" name="cpf" id="cpf" maxlength="14" value="<c:out value="${usuario.CPF}"/>">
                            </div>
                            <div class="col">
                                <label for="rg">RG</label>
                                <input class="form-control RG" type="text" id="rg" name="rg" maxlength="8" value="<c:out value="${usuario.RG}"/>">
                            </div>
                        </div>
                    </div>
                    <div class="mt-4">
                        <div class="text-right">
                            <button type="submit" name="acao" value="alterar" class="btn btn-md btn-light-green">
                                <i class="fa fa-check mr-1"></i>Alterar</button>
                            <!--button type="reset" class="btn btn-md btn-grey">
                                <i class="fa fa-eraser mr-1"></i>Limpar</button-->
                        </div>
                    </div>
                </form>
                <div id="kv-avatar-errors-1" class="center-block" style="width:800px;display:none"></div>
            </div>
        </div>
        <jsp:include page="../footer.jsp"/>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
        <script src="../js/jquery.mask.min.js"></script>
        <script src="../js/mascaras.js"></script>
        <!-- plugin para input de fotos -->
        <script src="../fileinput/js/fileinput.js"></script>
        <!-- Ícones Font Awesome no plugin para input de fotos -->
        <script src="../fileinput/themes/fa/theme.min.js"></script>
        <!--Define o idioma do plugin para input de fotos-->
        <script src="../fileinput/js/locales/pt-BR.js"></script>
        <script src="../js/inputFotoPerfil.js"></script>
        <script>
            $('#formAlterar').submit(function () {
                $('#cpf').unmask('000.000.000-00');
                $('#rg').unmask('00.000.000-0');
            });
        </script>
    </body>
</html>
