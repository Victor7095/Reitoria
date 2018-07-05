<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Aluno - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/forms.css">
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
        <!-- bootstrap 4.x is supported. You can also use the bootstrap css 3.3.x versions -->
        <link rel="stylesheet" href="../fileinput/css/bootstrap.css">
        <link href="../fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
        <link href="../CSS/inputFotoPerfil.css" media="all" rel="stylesheet" type="text/css" />
        <!-- optionally uncomment line below if using a theme or icon set like font awesome (note that default icons used are glyphicons and `fa` theme can override it) -->
        <script defer src="../fileinput/js/fontawesome-all.min.js"></script>   
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="row">
            <div class="col s12 l6 offset-l3">
                <div class="card-panel">
                    <div class="row"><h4 class="center-align">Cadastro de Egresso</h4></div>
                    <div class="row">
                        <div class="col s12 offset-s0 l10 offset-l1">
                            <form method="post" id="cadastrar-egresso" action="/OMT/DiscenteServlet" 
                                  enctype="multipart/form-data">
                                <div class="row">
                                    <div id="fotoPerfil" class="input-field col s12 m6 offset-m3 l8 offset-m2 xl6 offset-xl3">
                                        <div class="kv-avatar">
                                            <div class="file-loading">
                                                <input id="inputFoto" name="inputFoto" type="file">
                                            </div>
                                        </div>
                                        <div class="kv-avatar-hint"><small>Select file < 1500 KB</small></div>
                                    </div>
                                    <div class="col s12 m10 offset-m1">
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <label for="usuario">Matrícula</label>
                                                <input type="text" id="usuario" name="usuario" maxlength="12" required>
                                            </div>
                                            <div class="input-field col s12">
                                                <label for="nome">Nome Completo</label>
                                                <input type="text" id="nome" name="nome" required>                                        
                                            </div>
                                            <div class="col s12">
                                                <div class="row">
                                                    <div class="input-field col s12 l6">
                                                        <label for="cpf">CPF</label>
                                                        <input type="text" id="cpf" name="cpf" maxlength="18" required> 
                                                    </div>
                                                    <div class="input-field col s12 l6">
                                                        <label for="rg">RG</label>
                                                        <input type="text" id="rg" name="rg" required> 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br><br>

                                <div class="row">
                                    <div class="col s12 m3 center offset-m2 offset-l3 xl4 offset-xl2 btn-mb-md">
                                        <button type="reset" class="btn waves-effect waves-green"><i class="fas fa-eraser"></i>Limpar</button>
                                    </div>
                                    <div class="col s12 m3 center offset-m2 offset-l1 xl4">
                                        <button data-target="show-password" type="submit" name="acao" value="cadastrar" class="btn waves-effect waves-green">
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
            var previewZoomButtonIcons = {
                prev: '<i class="fa fa-caret-left fa-lg"></i>',
                next: '<i class="fa fa-caret-right fa-lg"></i>',
                toggleheader: '<i class="fa fa-arrows-alt-v fa-lg"></i>',
                fullscreen: '<i class="fa fa-expand-arrows-alt fa-lg"></i>',
                borderless: '<i class="fa fa-expand fa-lg"></i>',
                close: '<i class="fa fa-times fa-lg"></i>'
            };

            var btnCust = '<button type="button" class="btn btn-secondary" title="Add picture tags" ' +
                    'onclick="alert(\'Call your custom code here.\')">' +
                    '<i class="fa fa-trash-alt"></i>' +
                    '</button>';
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
                defaultPreviewContent: '<img src="../img/student.png" alt="Your Avatar">',
                previewZoomButtonIcons: previewZoomButtonIcons,
                layoutTemplates: {main2: '{preview} ' + ' {remove} {browse}'},
                allowedFileExtensions: ["jpg", "png", "gif"]
            });
            $('#cadastrar-egresso').submit(function () {
                $('#cpf').unmask('000.000.000-00');
                $('#rg').unmask('00.000.000-0');
            });
        </script>
    </body>
</html>