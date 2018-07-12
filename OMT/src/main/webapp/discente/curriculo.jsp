<%-- 
    Document   : curriculo
    Created on : 07/06/2018, 15:20:11
    Author     : Natan S. dos Santos
--%>
<%@page import="com.br.OMT.models.Formacao"%>
<%@page import="java.util.List"%>
<%@page import="com.br.OMT.DAO.FormacaoDAO"%>
<%@page import="com.br.OMT.models.Discente"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Currículo</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
        <script src="../fileinput/js/fontawesome-all.min.js"></script>
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <%  Discente d = (Discente) request.getSession().getAttribute("usuario");
            if (d != null) {
                FormacaoDAO fdao = new FormacaoDAO();
                List<Formacao> formacoes = fdao.listarPorID(d.getId());
        %>
        <%@include file="../discente/alunoMenu.jsp"%>
        <div class="container my-4">
            <div id="to-pdf">
                <div class="card px-4 py-4">
                    <section>
                        <h3>Dados pessoais
                            <a href="../discente/alterar_perfil.jsp" class="btn btn-md btn-light-green darken-1">
                                <i class="fa fa-edit mr-1"></i>Atualizar informações
                            </a>
                        </h3>
                        <div class="row my-4">
                            <div class="col-auto">
                                <img class="foto-curriculo" src="../img/student.png" alt="Your Avatar">
                            </div>
                            <div class="col-auto">
                                <h4><%=d.getNome()%></h4>
                                <h5>Aluno no IFAM</h5>
                                <h6>Manaus, Amazonas, Brasil</h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12">
                                <table>
                                    <tbody>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Nome em citações bibliográficas</td>
                                            <td class="col s6 xl10 left-align">LIMA, V. Y. P.</td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Sexo</td>
                                            <td class="col s6 xl10 left-align">Masculino</td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Etnia</td>
                                            <td class="col s6 xl10 left-align">Branca</td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Filiação</td>
                                            <td class="col s6 xl10 left-align">Lino Eugenio Auzier e Lima e Cyana Lara Pereira</td>
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
                                            <td class="col s6 xl2 right-align bold-text">Carteira de Identidade</td>
                                            <td class="col s6 xl10 left-align">40028922 SSP - AM - 12/07/2012</td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">CPF</td>
                                            <td class="col s6 xl10 left-align CPF"><%=d.getCPF()%> </td>
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
                    <hr>
                    <section>
                        <h3>Formação acadêmica/ titulação 
                            <a href="../cadastro/formacao.jsp" class="btn btn-md btn-light-green darken-1 not-printable"><i class="fa fa-plus mr-1"></i>Adicionar formação</a>
                        </h3>
                        <table>
                            <tbody>
                                <%if (formacoes.size() > 0) {
                                        for (Formacao f : formacoes) {%>
                                <tr class="row">
                                    <td class="col s2 bold-text right-align"><%=f.getAnoTermino()%></td>
                                    <td class="col s5 left-align"><%=f.getEscola()%></td>
                                    <td class="col s5 left-align"><%=f.getNome()%></td>
                                </tr>
                                <%      }
                                } else {%>
                                <tr class="row">
                                    <td>Nenhuma formação ainda registrada</td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </section>
                    <hr>
                    <section>
                        <h3>Áreas de atuação 
                            <button class="btn btn-md btn-light-green darken-1"><i class="fa fa-plus mr-1"></i>Adicionar área de atuação</button>
                        </h3>
                        <table>
                            <tbody>
                                <tr class="row">
                                    <td class="col s6 xl2 bold-text right-align">1.</td>
                                    <td class="col s6 xl10 left-align">Ciência da Computação</td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                    <hr>
                    <section>
                        <h3>Idiomas 
                            <button class="btn btn-md btn-light-green darken-1"><i class="fa fa-plus mr-1"></i>Adicionar idioma</button>
                        </h3>
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
                    <hr>
                    <div class="right-align">
                        <button id="btnBaixarCurriculo" class="btn btn-md btn-light-green darken-1"><i class="fa fa-download mr-1"></i>Baixar</button>
                        <button id="btnImprimirCurriculo" class="btn btn-md btn-light-green darken-1"><i class="fa fa-print mr-1"></i>Imprimir</button>
                    </div>
                </div>
            </div>
        </div>
        <%} else {%>
        <h1> Acesso negado <a href="../home.jsp">Volte para a tela de login </a></h1>
        <%}%>
        <%@include file="../footer.jsp"%>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
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
