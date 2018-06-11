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
        <!-- bootstrap 4.x is supported. You can also use the bootstrap css 3.3.x versions -->
        <link rel="stylesheet" href="../fileinput/css/bootstrap.css">
        <link href="../fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
        <!-- optionally uncomment line below if using a theme or icon set like font awesome (note that default icons used are glyphicons and `fa` theme can override it) -->
        <script defer src="../fileinput/js/fontawesome-all.min.js"></script>

    </head>
    <body>
        <form enctype="multipart/form-data">
            <div class="file-loading">
                <input id="input-b1" name="input-b1[]" type="file" multiple>
            </div>
        </form>
        <script src="../JS/jquery-3.2.1.min.js"></script>
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
    </body>
</html>
