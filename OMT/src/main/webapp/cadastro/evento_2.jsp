<%-- 
    Document   : evento
    Created on : 28/05/2018, 20:39:30
    Author     : Gabriel San Martin
--%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Evento - OMT</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">
        <!-- bootstrap 4.x is supported. You can also use the bootstrap css 3.3.x versions -->
        <link rel="stylesheet" href="../fileinput/css/bootstrap.css">
        <link href="../fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
        <!-- optionally uncomment line below if using a theme or icon set like font awesome (note that default icons used are glyphicons and `fa` theme can override it) -->
        <script defer src="../fileinput/js/fontawesome-all.min.js"></script>    
    </head>
    <body>
        <header>

        </header>
        <div class="container">
            <div class="row">
                <div class="col s8 offset-s2">
                    <div class="card">
                        <div class="card-action green darken-3 white-text center-align">
                            <h3>Cadastro de Evento</h3>
                        </div>
                        <br>
                        <div class="card-content">
                            <div class="row">
                                <form class="col s12" method="post" id="cadastrar-evento" action="/OMT/EventosServlet" 
                                      enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="input-field col s7 offset-s1">
                                            <label for="nome">Nome do Evento</label>
                                            <input type="text" id="nome" name="nome" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s10 offset-s1">
                                            <textarea id="descricao" name="descricao" class="materialize-textarea" data-length="120"></textarea>
                                            <label for="descricao">Descrição do Evento</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s4 offset-s1">
                                            <span>Data de Início das Inscrições</span>
                                        </div>
                                        <div class="col s4 offset-s2">
                                            <input id="inscricaoInicio" name="inscricaoInicio" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s4 offset-s1">
                                            <span>Data de Fim das Inscrições</span>
                                        </div>
                                        <div class="col s4 offset-s2">
                                            <input id="inscricaoFim" name="inscricaoFim" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s4 offset-s1">
                                            <span>Data de Início do Evento</span>
                                        </div>
                                        <div class="col s4 offset-s2">
                                            <input id="inicio" name="inicio" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s4 offset-s1">
                                            <span>Data de Fim do Evento</span>
                                        </div>
                                        <div class="col s4 offset-s2">
                                            <input id="fim" name="fim" class="datepicker">
                                        </div>
                                    </div>
                                    <div class="file-loading">
                                        <input id="input-b1" name="input-b1[]" type="file" multiple>
                                    </div>
                                    <br><br>
                                    <div class="row center">
                                        <div class="col m12 l2 offset-l2 btn-mb-md">
                                            <button type="reset" class="btn btn-large waves-effect waves-green">Limpar</button>
                                        </div>
                                        <div class="col m12 l2 offset-l3">
                                            <button type="submit" name="acao" value="cadastrar" class="btn btn-large waves-effect waves-green">Cadastrar</button>
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
            $('#input-b1').fileinput({
                theme: 'fa',
                language: 'pt-BR',
                showUpload: false,
                allowedFileTypes: ["image", "video"],
                previewFileType: "image",
                browseClass: "btn btn-success",
                browseLabel: "Escolher imagens",
                browseIcon: "<i class=\"fa fa-folder-open\"></i> "
            });
        </script>
        <script>
            $(".datepicker").datepicker({
                selectMonths: true,
                selectYears: true,
                clear: false,
                format: 'dd/mm/yyyy',
                today: "Hoje",
                close: "X",
                autoClose: true
            });
            
        </script>
    </body>
</html>
