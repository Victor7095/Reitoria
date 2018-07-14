<%-- 
    Document   : evento
    Created on : 28/05/2018, 20:39:30
    Author     : Gabriel San Martin
--%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Evento - OMT</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
        <link href="../fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="container">
            <div class="card px-4 py-4">
                <h1 class="font-weight-bold">Cadastro de Evento</h1>
                <form method="post" id="cadastrar-evento" action="/OMT/EventosServlet" 
                      enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="nome">Nome do Evento</label>
                        <input class="form-control" type="text" id="nome" name="nome" required>
                    </div>
                    <div class="form-group">
                        <label for="descricao">Descrição do Evento</label>
                        <textarea id="descricao" name="descricao" class="materialize-textarea" data-length="120"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="local">Local do Evento</label>
                        <textarea id="local" name="local" class="materialize-textarea" data-length="120"></textarea>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inscricaoInicio">Data de Início das Inscrições</label>
                            <input class="form-control" type="text" id="inscricaoInicio" name="inscricaoInicio">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inscricaoFim">Data de Fim das Inscrições</label>
                            <input class="form-control" type="text" id="inscricaoFim" name="inscricaoFim">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inicio">Data de Início do Evento</label>
                            <input class="form-control" type="text" id="inicio" name="inicio">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="fim">Data de Fim do Evento</label>
                            <input class="form-control" type="text" id="fim" name="fim">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="file-loading">
                            <input id="input-b1" name="input-b1[]" type="file" multiple>
                        </div>
                    </div>
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
        <script>
            $('#input-b1').fileinput({
                theme: 'fa',
                language: 'pt-BR',
                showUpload: false,
                allowedFileTypes: ["image", "video"],
                previewFileType: "image",
                browseClass: "btn btn-success",
                browseLabel: "Escolher imagens",
                browseIcon: "<i class=\"fa fa-folder-open\"></i> ",
                previewZoomButtonIcons: {
                    prev: '<i class="fa fa-caret-left fa-lg"></i>',
                    next: '<i class="fa fa-caret-right fa-lg"></i>',
                    toggleheader: '<i class="fa fa-arrows-alt-v fa-lg"></i>',
                    fullscreen: '<i class="fa fa-expand-arrows-alt fa-lg"></i>',
                    borderless: '<i class="fa fa-expand fa-lg"></i>',
                    close: '<i class="fa fa-times fa-lg"></i>'
                },
                layoutTemplates: {
                    actionZoom: '<button type="button" class="kv-file-zoom {zoomClass}" title="{zoomTitle}"><i class="fa fa-search-plus fa-lg"></i></button>'
                }
            });
        </script>
    </body>
</html>