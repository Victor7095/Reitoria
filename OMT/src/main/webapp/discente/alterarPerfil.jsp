<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="IOUtils" class="org.apache.commons.io.IOUtils"/>
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
        <jsp:include page="menu.jsp"/>
        <div class="container">
            <div class="card px-4 py-4">
                <h3 class="font-weight-bold mb-4">Seu Perfil</h3>
                <form id="formAlterar" name="formAlterar" method="post" action="/OMT/DiscenteServlet" data-id="<c:out value="${usuario.id}"/>">
                    <div class="section">
                        <h5 class="mb-4">Informações Básicas</h5>
                        <div class="form-row">
                            <div class="form-group col-sm-12 col-lg-3">
                                <div class="text-center">
                                    <c:choose>
                                        <c:when test="${fn:length(usuario.foto) > 0}">
                                            <div>
                                                <img class="foto-curriculo border border-light rounded z-depth-1" src="${IOUtils.toString(usuario.foto, 'UTF-8')}">
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div>
                                                <img class="foto-curriculo border border-light rounded z-depth-1" src="../img/student.png">
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
                                    <button class="btn btn-md btn-primary file-btn mt-4"> 
                                        <span><i class="fa fa-image fa-lg left"></i>Selecionar foto de perfil</span> 
                                        <input type="file" id="upload" name="upload" accept="image/*" value="Selecionar foto de perfil" /> 
                                    </button> 
                                </div>
                            </div>
                            <div class="form-group col-sm-12 col-lg-5">
                                <div class="form-group"> 
                                    <div class="text-center">
                                        <div class="crop"> 
                                            <div id="upload-demo"></div>
                                            <button type="button" class="upload-result btn btn-md btn-primary">
                                                <i class="fa fa-cut fa-lg left"></i>Recortar imagem
                                            </button> 
                                        </div> 
                                    </div> 
                                </div> 
                            </div>
                            <div class="form-group col-sm-12 col-lg-4">
                                <div class="text-center" id="result"></div> 
                                <input type="hidden" value="" name="fotoCortada" id="fotoCortada">
                            </div>
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
                        <div class="form-row">
                            <div class="form-group col-sm-12 col-lg-4">
                                <label for="email">E-mail</label>
                                <input class="form-control" readonly="true" type="text" name="email" id="email" maxlength="14" value="<c:out value="${usuario.email}"/>">
                            </div>
                            <div class="form-group col-sm-12 col-lg-4">
                                <label for="linkCurriculoLattes">Link Currículo Lattes</label>
                                <input class="form-control" type="text" name="linkCurriculoLattes" id="linkCurriculoLattes" maxlength="80" value="<c:out value="${usuario.linkCurriculoLattes}"/>">
                            </div>
                            <div class="form-group col-sm-12 col-lg-4">
                                <label for="linkPerfilLinkedIn">Link Perfil LinkedIn</label>
                                <input class="form-control" type="text" id="linkPerfilLinkedIn" name="linkPerfilLinkedIn" maxlength="80" value="<c:out value="${usuario.linkPerfilLinkedIn}"/>">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-sm-12 col-lg-4">
                                <label for="sexo">Sexo</label>
                                <select class="form-control" name="sexo" id="sexo" required>
                                    <option value="M" selected>Masculino</option>
                                    <option value="F">Feminino</option>
                                    <option value="O">Outro</option>
                                </select>
                            </div>
                            <div class="form-group col-sm-12 col-lg-4">
                                <label for="estadoCivil">Estado Civil</label>
                                <select class="form-control" name="estadoCivil" id="estadoCivil" required>
                                    <option value="S" selected>Solteiro</option>
                                    <option value="C">Casado</option>
                                    <option value="D">Divorciado</option>
                                    <option value="V">Viúvo</option>
                                    <option value="Sep">Separado</option>
                                </select>
                            </div>
                            <div class="form-group col-sm-12 col-lg-4">
                                <label for="etnia">Etnia</label>
                                <select class="form-control" name="etnia" id="etnia" required>
                                    <option value="B" selected>Branca</option>
                                    <option value="N">Negra</option>
                                    <option value="A">Amarela</option>
                                    <option value="P">Parda</option>
                                    <option value="I">Indígena</option>
                                    <option value="Nao">Não declarado</option>
                                </select>
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
                        width: 150,
                        height: 200,
                        type: 'square'
                    },
                    boundary: {
                        width: 250,
                        height: 250
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
                        var label = "<figcaption>Foto de perfil nova</figcaption>";
                        html = '<img class="foto-curriculo border border-light rounded z-depth-1 mb-4" src="' + result.src + '" />' + label;
                    }
                    $("#result").html(html);
                    $("#fotoCortada").val(result.src);
                }
            });
        </script>
    </body>
</html>
