<%@page import="com.br.OMT.models.Discente"%>
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
        <link rel="stylesheet" type="text/css" href="../CSS/general.css">
        <!-- bootstrap 4.x is supported. You can also use the bootstrap css 3.3.x versions -->
        <link rel="stylesheet" href="../fileinput/css/bootstrap.css">
        <link href="../fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css"/>
        <link href="../CSS/inputFotoPerfil.css" media="all" rel="stylesheet" type="text/css" />
        <script src="../fileinput/js/fontawesome-all.min.js"></script>
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <%@include file="alunoMenu.jsp"%>
        <% if (request.getSession().getAttribute("usuario") != null) {
        Discente d = ((Discente) request.getSession().getAttribute("usuario"));%>
        <div class="container">
            <div class="row">
                <div class="col s12 offset-s0 m8 offset-m2">
                    <div class="card">
                        <div class="card-content">
                            <h4 class="center-align">Perfil do Usuário</h4><br>
                            <form id="cadastrar-egresso" name="cadastrar-egresso" method="post" action="/OMT/DiscenteServlet"
                                  enctype="multipart/form-data" data-id="<%=d.getId()%>">
                                <div class="section">
                                    <div class="row">
                                        <div class="col s12 m10 offset-m1">
                                            <h5>Informações Básicas</h5>
                                        </div>
                                        <div id="fotoPerfil" class="input-field col s12 m6 offset-m3 l8 offset-m2 xl6 offset-xl3">
                                            <div class="kv-avatar">
                                                <div class="file-loading">
                                                    <input id="inputFoto" name="inputFoto" type="file">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="input-field col s12 m10 offset-m1">
                                            <label for="nome">Nome Completo</label>
                                            <input type="text" id="nome" name="nome" value="<%=d.getNome()%>">
                                        </div>
                                        <div class="input-field col s12 m10 offset-m1">
                                            <label for="matricula">Matrícula</label>
                                            <input type="text" name="matricula" id="matricula" maxlength="14" value="<%=d.getUsuario()%>">
                                        </div>
                                        <div class="input-field col s12 m5 offset-m1">
                                            <label for="cpf">CPF</label>
                                            <input type="text" name="cpf" id="cpf" maxlength="14" value="<%=d.getCPF()%>">
                                        </div>
                                        <div class="input-field col s12 m5">
                                            <label for="rg">RG</label>
                                            <input type="text" id="rg" name="rg" maxlength="8" value="<%=d.getRG()%>">
                                        </div>
                                    </div>
                                </div>
                                <br><br>
                                <div class="row">
                                    <div class="col s12 m10 offset-m1">
                                        <div class="right-align">
                                            <button type="submit" name="acao" value="alterar" class="btn waves-effect waves-green">
                                                <i class="fa fa-check"></i>Alterar</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%} else {%>
    <h1> Acesso negado <a href="../home.jsp">Volte para a tela de login </a></h1>
    <%}%>
    <script src="../JS/jquery-3.2.1.min.js"></script>
    <script src="../JS/jquery.mask.js"></script>
    <script src="../JS/mask.js"></script>
    <script src="../CSS/parallax-template/js/materialize.js"></script>
    <!-- piexif.min.js is only needed for restoring exif data in resized images and when you 
        wish to resize images before upload. This must be loaded before fileinput.min.js -->
    <script src="../fileinput/js/plugins/piexif.min.js" type="text/javascript"></script>
    <!-- sortable.min.js is only needed if you wish to sort / rearrange files in initial preview. 
        This must be loaded before fileinput.min.js -->
    <script src="../fileinput/js/plugins/sortable.min.js" type="text/javascript"></script>
    <!-- purify.min.js is only needed if you wish to purify HTML content in your preview for 
        HTML files. This must be loaded before fileinput.min.js -->
    <script src="../fileinput/js/plugins/purify.min.js" type="text/javascript"></script>
    <!-- popper.min.js below is needed if you use bootstrap 4.x. You can also use the bootstrap js 
       3.3.x versions without popper.min.js. -->
    <script src="../fileinput/js/popper.min.js"></script>
    <!-- bootstrap.min.js below is needed if you wish to zoom and preview file content in a detail modal
        dialog. bootstrap 4.x is supported. You can also use the bootstrap js 3.3.x versions. -->
    <script src="../fileinput/js/bootstrap.js"></script>
    <!-- the main fileinput plugin file -->
    <script src="../fileinput/js/fileinput.min.js"></script>
    <!-- optionally uncomment line below for loading your theme assets for a theme like Font Awesome (`fa`) -->
    <script src="../fileinput/themes/fa/theme.min.js"></script>
    <script src="../fileinput/js/locales/pt-BR.js"></script>
    <script>
        var id = $('#cadastrar-egresso').data('id');
        var previewZoomButtonIcons = {
            prev: '<i class="fa fa-caret-left fa-lg"></i>',
            next: '<i class="fa fa-caret-right fa-lg"></i>',
            toggleheader: '<i class="fa fa-arrows-alt-v fa-lg"></i>',
            fullscreen: '<i class="fa fa-expand-arrows-alt fa-lg"></i>',
            borderless: '<i class="fa fa-expand fa-lg"></i>',
            close: '<i class="fa fa-times fa-lg"></i>'
        };
        var footerInputFoto = '<div class="file-thumbnail-footer">\n' +
                '    <div class="file-footer-caption" title="{caption}">\n' +
                '        <div class="file-caption-info">{caption}</div>\n' +
                '        <div class="file-size-info">{size}</div>\n' +
                '    </div>\n' +
                '    {progress}\n{actions}\n' +
                '</div>';
        $("#inputFoto").fileinput({
            theme: 'fa',
            overwriteInitial: true,
            maxFileSize: 1500,
            showClose: false,
            showCaption: false,
            browseLabel: 'Escolher foto',
            removeLabel: 'Remover',
            browseIcon: "<i class=\"fa fa-folder-open\"></i> ",
            removeTitle: 'Cancel or reset changes',
            elErrorContainer: '#kv-avatar-errors-1',
            msgErrorClass: 'alert alert-block alert-danger',
            defaultPreviewContent: '<img src="/OMT/DiscenteServlet?id='+id+'" alt="Your Avatar">',
            previewZoomButtonIcons: previewZoomButtonIcons,
            layoutTemplates: {main2: '{preview} ' + ' {remove} {browse}',
            footer:footerInputFoto},
            allowedFileExtensions: ["jpg", "png", "gif"]
        });
        $('#cadastrar-egresso').submit(function () {
            $('#cpf').unmask('000.000.000-00');
            $('#rg').unmask('00.000.000-0');
        });
    </script>
    <%@include file="../footer.jsp"%>
</body>
</html>
