<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Perfil</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/inputFotoPerfil.css">
        <link rel="stylesheet" href="../css/croppie.css" media="all" type="text/css"/>
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <jsp:include page="../header.jsp"/>
        <jsp:include page="alunoMenu.jsp"/>
        <div class="container">
            <div class="card px-4 py-4">
                <h3 class="font-weight-bold mb-4">Seu Perfil</h3>
                <form id="formAlterar" name="formAlterar" method="post" action="/OMT/DiscenteServlet"
                      enctype="multipart/form-data" data-id="<c:out value="${usuario.id}"/>">
                    <div class="section">
                        <h5>Informações Básicas</h5>
                        <img height="100px" src="/OMT/DiscenteServlet?id=${usuario.id}">
                        <div class="actions"> 
                            <button class="btn btn-md btn-primary file-btn"> 
                                <span>Upload</span> 
                                <input type="file" id="upload" name="upload" value="Select" /> 
                            </button> 
                            <div class="crop"> 
                                <div id="upload-demo"></div>
                                <button type="button" class="upload-result btn btn-md btn-primary">Croppie</button> 
                            </div> 
                            <div id="result">
                            </div> 
                            <input type="hidden" value="" name="fotoCortada" id="fotoCortada">
                        </div> 
                        <div class="form-group">
                            <label for="nome">Nome Completo</label>
                            <input class="form-control" type="text" id="nome" name="nome" value="<c:out value="${usuario.nome}"/>">
                        </div>
                        <div class="form-row">
                            <div class="form-group col-sm-12 col-lg-4">
                                <label for="matricula">Matrícula</label>
                                <input class="form-control" readonly="true" type="text" name="matricula" id="matricula" maxlength="14" value="<c:out value="${usuario.usuario}"/>">
                            </div>
                            <div class="form-group col-sm-12 col-lg-4">
                                <label for="cpf">CPF</label>
                                <input class="form-control CPF" type="text" name="cpf" id="cpf" maxlength="14" value="<c:out value="${usuario.CPF}"/>">
                            </div>
                            <div class="form-group col-sm-12 col-lg-4">
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
            </div>
        </div>
        <!-- or even simpler -->
        <jsp:include page="../footer.jsp"/>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
        <script src="../js/jquery.mask.min.js"></script>
        <script src="../js/mascaras.js"></script>
        <script src="../js/croppie.min.js"></script>
        <script>
            $('#formAlterar').submit(function () {
                $('#cpf').unmask('000.000.000-00');
                $('#rg').unmask('00.000.000-0');
            });
            var id = $('form[name="formAlterar"]').attr("id");
            $(function () {
                var $uploadCrop;

                function readFile(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();

                        reader.onload = function (e) {
                            $uploadCrop.croppie('bind', {
                                url: e.target.result
                            });
                        }

                        reader.readAsDataURL(input.files[0]);
                    } else {
                        alert("Sorry - you're browser doesn't support the FileReader API");
                    }
                }

                $uploadCrop = $('#upload-demo').croppie({
                    viewport: {
                        width: 200,
                        height: 200,
                        type: 'circle'
                    },
                    boundary: {
                        width: 300,
                        height: 300
                    }
                });

                $('#upload').on('change', function () {
                    $(".crop").show();
                    readFile(this);
                });
                $('.upload-result').on('click', function (ev) {
                    $uploadCrop.croppie('result', 'canvas').then(function (resp) {
                        popupResult({
                            src: resp
                        });
                    });
                });

                function popupResult(result) {
                    var html;
                    if (result.html) {
                        html = result.html;
                    }
                    if (result.src) {
                        html = '<img src="' + result.src + '" />';
                    }
                    $("#result").html(html);
                    $("#fotoCortada").val(html);
                }
            });
        </script>
    </body>
</html>
