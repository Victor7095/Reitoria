<%-- 
    Document   : alunoIndex
    Created on : 07/06/2018, 10:42:15
    Author     : Natan S. dos Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bem-Vindo caro CAMPU</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- referenciamento css-->
        <link href="../CSS/FontsGoogle.css" rel="stylesheet">
        <link rel="stylesheet" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" href="../CSS/parallax-template/css/style.css">
        <link rel="stylesheet" href="../CSS/general.css" >
        <link rel="stylesheet" href="../CSS/main.css">
        <!-- Linkagens JS -->
    </head>

    
    
    <body>
        <header>

        </header>
        
            <div class="row">
                <nav id="navUsers" class="col s10 offset-m2 centered tabs z-depth-0">
                    <ul class="tabs">
                        <li><a class="tab" href="#pagina_inicial"><img src="../img/Icons/icones/png/home-1.png" 
                                                                    alt="Página Inicial" title="Página Inicial"></a></li>

                        <!--Cadastrar egresso-->
                        <li><a class="tab" href="#cadastro_egresso"><img src="../img/Icons/icones/png/edit.png" 
                                             alt="Cadastrar Egresso" title="Cadastrar egresso"></a></li>

                        <!--Cadastro de eventos-->
                        <li> <a class="tab"  href="#cadastro_evento"><img src="../img/Icons/icones/png/folder-14.png" 
                                              alt="Cadastrar Evento" title="Cadastro de eventos"></a></li>

                        <!--Cadastro de empresas-->
                        <li>  <a class="tab" href="#cadastro_empresas"><img src="../img/Icons/icones/png/newspaper.png" 
                                               alt="Cadastrar Empresa" title="Cadastro de empresas"></a></li>

                        <!--Cadastro de vagas de trabalho-->
                        <li>  <a class="tab" href="#cadastro_trabalhos"><img src="../img/Icons/icones/png/briefcase.png" 
                                               alt="Cadastrar Trabalho" title="Cadastro de trabalhos"></a></li>

                        <!--Voltar para Página de Login-->
                        <li> <a class="tab" href="home.html"><img src="../img/Icons/icones/png/exit-1.png" 
                                                      alt="Sair" title="Sair para página de Login"></a></li>
                    </ul>
                </nav>

                <div class="col s2 z-depth-0">  
                    <ul class="tabs center">
                        <!--Imagem do Usuário-->
                        <li><img class="" id="imgUser" alt="Sem Imagem" src="../img/student.png"></li>

                    </ul>      

                </div>

                <div class="col s10 z-depth-0">
                    <embed src="pagina_inicial.jsp" id="pagina_inicial" class="col s12 offset-x30">
                </div>

                <div class="col s10 z-depth-0">
                    <embed src="../cadastro/egresso.jsp" id="cadastro_egresso" class="col s12 offset-x30">
                </div>
                
                <div class="col s10 z-depth-0">
                    <embed src="../cadastro/evento.jsp" id="cadastro_evento" class="col s12 offset-x30">
                </div>
                
                <div class="col s10 z-depth-0">
                    <embed src="../cadastro/empresa.jsp" id="cadastro_empresas" class="col s12 offset-x30">
                </div>
                
                <div class="col s10 z-depth-0">
                    <embed src="../cadastro/trabalho.jsp" id="cadastro_empresas" class="col s12 offset-x30">
                </div>
                
            </div>
       
            <footer>
                
            </footer>
    </body>
</html>

