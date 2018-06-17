<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Currículo</title>
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="../CSS/parallax-template/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../CSS/main.css">
        <script src="../fileinput/js/fontawesome-all.min.js"></script>
    </head>
    <body>
        <%@include file="../header.jsp"%>
        <div class="container">
            <div class="card-panel">
                <div id="to-pdf">
                    <section>
                        <h3>Dados pessoais <button class="btn red"><i class="fa fa-edit"></i>Atualizar informações</button></h3>
                        <div class="row">
                            <div class="col s12 m2">
                                <img class="foto-curriculo" src="../img/student.png" alt="Your Avatar">
                            </div>
                            <div class="col s10">
                                <h4>Victor Yan</h4>
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
                                            <td class="col s6 xl2 right-align bold-text">Sexo</td>
                                            <td class="col s6 xl10 left-align">Masculino</td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Cor ou Raça</td>
                                            <td class="col s6 xl10 left-align">Branca</td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Filiação</td>
                                            <td class="col s6 xl10 left-align">Lino Eugenio Auzier e Lima e Cyana Lara Pereira</td>
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
                                            <td class="col s6 xl10 left-align CPF">02546569279 </td>
                                        </tr>
                                        <tr class="row">
                                            <td class="col s6 xl2 right-align bold-text">Endereço residencial</td>
                                            <td class="col s6 xl10 left-align">Pqp</td>
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
                        <h3>Formação acadêmica/ titulação <button class="btn red"><i class="fa fa-plus"></i>Adicionar formação</button></h3>
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
                        <h3>Áreas de atuação <button class="btn red"><i class="fa fa-plus"></i>Adicionar área de atuação</button></h3>
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
                        <h3>Idiomas <button class="btn red"><i class="fa fa-plus"></i>Adicionar idioma</button></h3>
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
                        <button class="btn red"><i class="fa fa-print"></i>Imprimir</button>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="../footer.jsp"%>
        <script src="../JS/jquery-3.2.1.min.js"></script>
        <script src="../JS/jspdf.min.js"></script>
        <script src="../JS/html2pdf.js"></script>
        <script>

            var pdf = new jsPDF('p', 'pt', 'a4');
            var canvas = pdf.canvas;
            canvas.height = 72 * 11;
            canvas.width = 72 * 8.5;
            ;
            var conteudoPDF = document.getElementById('to-pdf');
            // var width = 400;
            html2pdf(conteudoPDF, pdf, function (pdf) {
                var iframe = document.createElement('iframe');
                iframe.setAttribute('style', 'position:absolute;right:0; top:0; bottom:0; height:100%; width:500px');
                document.body.appendChild(iframe);
                iframe.src = pdf.output('datauristring');

                //var div = document.createElement('pre');
                //div.innerText=pdf.output();
                //document.body.appendChild(div);
            }
            );

            $("#btnBaixarCurriculo").click(function () {
                pdf.save("q.pdf");
            });
        </script>

    </body>
</html>
