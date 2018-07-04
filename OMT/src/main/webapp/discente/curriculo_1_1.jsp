<%-- 
    Document   : curriculo
    Created on : 07/06/2018, 15:20:11
    Author     : Natan S. dos Santos
--%>
<%@page import="com.br.OMT.models.Discente"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Currículo</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/general.css">
        <link rel="stylesheet" type="text/css" href="../CSS/curriculo.css">
        <script src="../fileinput/js/fontawesome-all.min.js"></script>
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <%  Discente d = (Discente) request.getSession().getAttribute("usuario");
            if (d != null) {%>

        <%@include file="../discente/alunoMenu.jsp"%>
        <div class="container">
            <div id="to-pdf">
                <div class="card-panel">
                    <section id="dadosPessoais">
                        <h3>Dados pessoais <button class="btn red not-printable"><i class="fa fa-edit"></i>Atualizar informações</button></h3>
                        <div class="row">
                            <div class="col s12 m4 l3">
                                <img id="fotoCurriculo" class="foto-curriculo" src="../img/student.png" alt="Your Avatar">
                            </div>
                            <div class="col s12 m10">
                                <h4><%=d.getNome()%></h4>
                                <h5>Aluno no IFAM</h5>
                                <h6>Manaus,Amazonas,Brasil</h6>
                            </div>
                        </div>
                        <br class="hide-on-med-and-up">
                        <div class="row">
                            <div class="col s12">
                                <table>
                                    <tbody>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Nome em citações bibliográficas</td>
                                            <td class="col s6 xl10 left-align">LIMA, V. Y. P.</td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Estado Civil</td>
                                            <td class="col s6 xl10 left-align">Casado</td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Idade</td>
                                            <td class="col s6 xl10 left-align">24 anos</td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Nascimento</td>
                                            <td class="col s6 xl10 left-align">14/06/2001 - Brasil</td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Endereço residencial</td>
                                            <td class="col s6 xl10 left-align">Av. Djalma Batista</td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Telefone</td>
                                            <td class="col s6 xl10 left-align">4002-8922</td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Endereço eletrônico</td>
                                            <td class="col s6 xl10 left-align">E-mail para contato : victoryan123@hotmail.com</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </section>
                    <section>
                        <h3>Formação acadêmica/ titulação <a href="../cadastro/formacao.jsp" class="btn red not-printable"><i class="fa fa-plus"></i>Adicionar formação</a></h3>
                        <table>
                            <tbody>
                                <tr class="row">
                                    <td class="col s6 xl2 bold-text right-align">2016</td>
                                    <td class="col s6 xl10 left-align">Ensino Médio (2o grau) . 
                                        Instituto Federal de Educação, Ciência e Tecnologia do Amazonas, IFAM, Manaus, Brasil </td>
                                </tr>
                                <tr class="row">
                                    <td class="col s6 xl2 bold-text right-align">2013-2015</td>
                                    <td class="col s6 xl10 left-align">Ensino Fundamental (1o grau) . 
                                        Escola Celus Ltda, CELUS, Brasil, Ano de obtenção: 2015     </td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                    <section>
                        <h3>Áreas de atuação <button class="btn red not-printable"><i class="fa fa-plus"></i>Adicionar área de atuação</button></h3>
                        <table>
                            <tbody>
                                <tr class="row">
                                    <td class="col s6 xl2 bold-text right-align">1.</td>
                                    <td class="col s6 xl10 left-align">Ciência da Computação</td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                    <section>
                        <h3>Idiomas <button class="btn red not-printable"><i class="fa fa-plus"></i>Adicionar idioma</button></h3>
                        <table>
                            <tbody>
                                <tr class="row">
                                    <td class="col s6 xl2 bold-text right-align">Inglês</td>
                                    <td class="col s6 xl10 left-align">Compreende Razoavelmente , Fala Pouco , Escreve Razoavelmente , Lê Bem </td>
                                </tr>
                                <tr class="row">
                                    <td class="col s6 xl2 bold-text right-align">Português</td>
                                    <td class="col s6 xl10 left-align">Compreende Bem , Fala Bem , Escreve Bem , Lê Bem </td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                    <br>
                    <div class="right-align">
                        <button id="btnBaixarCurriculo" class="btn red"><i class="fa fa-download"></i>Baixar</button>
                        <button id="btnImprimirCurriculo" class="btn red"><i class="fa fa-print"></i>Imprimir</button>
                    </div>
                </div>
            </div>
        </div>
        <%} else {%>
        <h1> Acesso negado <a href="../home.jsp">Volte para a tela de login </a></h1>
        <%}%>
        <%@include file="../footer.jsp"%>
        <script src="../JS/jquery-3.2.1.min.js"></script>
        <script src="../CSS/parallax-template/js/materialize.js"></script>
        <script src="../JS/jquery.mask.js"></script>
        <script src="../JS/mask.js"></script>
        <script src="../JS/jspdf.min.js"></script>
        <script src="../JS/html2canvas.min.js"></script>
        <script type="text/javascript">
            $("#btnBaixarCurriculo").click(function () {
                var pdf = new jsPDF('p', 'pt', 'a4');
                var original = $("#to-pdf");
                var novo = Object.assign({}, original);

                $($(novo).find('.not-printable')).each(function () {
                    $(this).hide();
                });
                var padding = $(novo).css('padding');
                $(novo).css('padding', '20px');
                pdf.addHTML(novo, function () {
                    pdf.save('web.pdf');
                    $($(novo).find('.not-printable')).each(function () {
                        $(this).show();
                    });
                    $(novo).css('padding', padding);
                });
            });
            $("#btnImprimirCurriculo").click(function () {
                window.print();
            });
        </script>
    </body>
</html>
