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
        <title>Curr�culo</title>
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
        <div class="container">
            <div id="to-pdf">
                <div class="card px-4 py-4">
                    <section>
                        <h3 class="font-weight-bold mb-4">Dados pessoais
                            <a href="../discente/alterar_perfil.jsp" class="btn btn-md btn-cyan">
                                <i class="fa fa-edit mr-1"></i>Atualizar informa��es
                            </a>
                        </h3>
                        <div class="row my-4">
                            <div class="col-sm-12 col-lg-3">
                                <!--img class="foto-curriculo" src="/OMT/DiscenteServlet?id=<%=d.getId()%>" alt="Foto de perfil"-->
                                <img class="foto-curriculo" src="../img/student.png" alt="Foto de perfil">
                            </div>
                            <div class="col-auto">
                                <h4><%=d.getNome()%></h4>
                                <h5>Aluno no IFAM</h5>
                                <h6>Manaus, Amazonas, Brasil</h6>
                            </div>
                        </div>
                        <table class="table table-sm">
                            <tbody>
                                <tr>
                                    <th scope="row">Nome em cita��es bibliogr�ficas</th>
                                    <td>LIMA, V. Y. P.</td>
                                </tr>
                                <tr>
                                    <th scope="row">Sexo</th>
                                    <td>Masculino</td>
                                </tr>
                                <tr>
                                    <th scope="row">Etnia</th>
                                    <td>Branca</td>
                                </tr>
                                <tr>
                                    <th scope="row">Filia��o</th>
                                    <td>Lino Eugenio Auzier e Lima e Cyana Lara Pereira</td>
                                </tr>
                                <tr>
                                    <th scope="row">Estado Civil</th>
                                    <td>Casado</td>
                                </tr>
                                <tr>
                                    <th scope="row">Idade</th>
                                    <td>24 anos</td>
                                </tr>
                                <tr>
                                    <th scope="row">Nascimento</th>
                                    <td>14/06/2001 - Brasil</td>
                                </tr>
                                <tr>
                                    <th scope="row">Carteira de Identidade</th>
                                    <td>40028922 SSP - AM - 12/07/2012</td>
                                </tr>
                                <tr>
                                    <th scope="row">CPF</th>
                                    <td class="CPF"><%=d.getCPF()%> </td>
                                </tr>
                                <tr>
                                    <th scope="row">Endere�o residencial</th>
                                    <td>Av. Djalma Batista</td>
                                </tr>
                                <tr>
                                    <th scope="row">Telefone</th>
                                    <td>4002-8922</td>
                                </tr>
                                <tr>
                                    <th scope="row">Endere�o eletr�nico</th>
                                    <td>E-mail para contato : victoryan123@hotmail.com</td>
                                </tr>
                            </tbody>
                        </table>
                    </section> 
                    <hr class="my-4">
                    <section>
                        <h3 class="font-weight-bold mb-4">Forma��o acad�mica/ titula��o 
                            <a href="../cadastro/formacao.jsp" class="btn btn-md btn-cyan"><i class="fa fa-plus mr-1"></i>Adicionar forma��o</a>
                        </h3>
                        <%if (formacoes.size() > 0) {%>
                        <table class="table table-sm">
                            <tbody>
                                <%for (Formacao f : formacoes) {%>
                                <tr>
                                    <td><%=f.getAnoTermino()%></td>
                                    <td><%=f.getEscola()%></td>
                                    <td><%=f.getNome()%></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                        <%} else {%>
                        <h4 class="grey-text text-center my-4">
                            Nenhuma forma��o registrada ainda
                        </h4>
                        <%}%>
                    </section>
                    <hr class="my-4">
                    <div class="row">
                        <section class="col-sm-12 col-lg-6">
                            <h3 class="font-weight-bold mb-4">�reas de atua��o 
                                <a href="#" class="btn btn-md btn-cyan"><i class="fa fa-plus mr-1"></i>Adicionar �rea de atua��o</a>
                            </h3>
                            <table class="table table-sm">
                                <tbody>
                                    <tr>
                                        <th>1.</th>
                                        <td>Ci�ncia da Computa��o</td>
                                    </tr>
                                </tbody>
                            </table>
                        </section>
                        <hr class="my-4">
                        <section class="col-sm-12 col-lg-6">
                            <h3 class="font-weight-bold mb-4">Idiomas 
                                <a href="#" class="btn btn-md btn-cyan"><i class="fa fa-plus mr-1"></i>Adicionar idioma</a>
                            </h3>
                            <table class="table table-sm">
                                <tbody>
                                    <tr>
                                        <td class="font-weight-bold text-right">Ingl�s</td>
                                        <td class="text-left">Compreende Razoavelmente , Fala Pouco , Escreve Razoavelmente , L� Bem </td>
                                    </tr>
                                    <tr>
                                        <td class="font-weight-bold text-right">Portugu�s</td>
                                        <td class="text-left">Compreende Bem , Fala Bem , Escreve Bem , L� Bem </td>
                                    </tr>
                                </tbody>
                            </table>
                        </section>
                    </div>
                    <hr>
                        
                    <div class="text-right">
                        <button id="btnBaixarCurriculo" class="btn btn-md btn-cyan"><i class="fa fa-download mr-1"></i>Baixar</button>
                        <button id="btnImprimirCurriculo" class="btn btn-md btn-mdb-color"><i class="fa fa-print mr-1"></i>Imprimir</button>
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
        <script src="../js/jquery.mask.min.js"></script>
        <script src="../js/mascaras.js"></script>
        <script src="../js/jspdf.min.js"></script>
        <script src="../js/html2canvas.min.js"></script>
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
