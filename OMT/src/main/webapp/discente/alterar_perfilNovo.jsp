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
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/inputFotoPerfil.css">
        <link rel="stylesheet" href="../css/croppie.css" media="all" type="text/css"/>
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
                        <img src="/OMT/DiscenteServlet?id=${usuario.id}">
                        <div class="row my-4">
                            <div class="col-sm-12 col-md-6">
                                <div id="profile-img-container">
                                    <div id="upload-demo">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <div class="text-center">
                                    <a class="btn btn-primary file-btn">
                                        Carregar foto
                                        <input type="file" accept="image/*" id="profile-picture-upload">
                                    </a>
                                    <a class="btn btn-primary file-btn">
                                        Foto Padrão
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nome">Nome Completo</label>
                            <input class="form-control" type="text" id="nome" name="nome" value="<c:out value="${usuario.nome}"/>">
                        </div>
                        <div class="form-row">
                            <div class="form-group col-sm-12 col-lg-4">
                                <label for="matricula">Matrícula</label>
                                <input class="form-control" disabled type="text" name="matricula" id="matricula" maxlength="14" value="<c:out value="${usuario.usuario}"/>">
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
            $uploadCrop = $('#upload-demo').croppie({
                enableExif: true,
                url: "../img/student.png",
                viewport: {
                    width: 200,
                    height: 200,
                    type: 'square'
                },
                boundary: {
                    width: 250,
                    height: 250
                }
            });
            function readFile(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (event) {
                        $uploadCrop.croppie('bind', {
                            url: event.target.result
                        });
                    };

                    reader.readAsDataURL(input.files[0]);
                } else {
                    alert('Sorry - you\'re browser doesn\'t support the FileReader API');
                }
            }
            $('#profile-picture-upload').on('change', function () {
                readFile(this);
            });

        </script>
    </body>
</html>
