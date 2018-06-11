<%-- 
    Document   : alunoIndex
    Created on : 07/06/2018, 10:42:15
    Author     : Natan S. dos Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bem-Vindo caro Aluno</title>
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

                        <!--Perfil do Usuário-->
                        <li><a class="tab" href="#alterar_perfil"><img src="../img/Icons/icones/png/edit.png" 
                                             alt="Alterar Perfil" title="Visualizar Perfil"></a></li>

                        <!--Caixa de Mensagens-->
                        <li> <a class="tab"  href="#"><img src="../img/Icons/icones/png/folder-14.png" 
                                              alt="Caixa de Mensagens" title="Caixa de Mensagens"></a></li>

                        <!--Postagens e Notícias Recentes-->
                        <li>  <a class="tab" href="#"><img src="../img/Icons/icones/png/newspaper.png" 
                                               alt="Divulgações Recentes" title="Divulgações Recentes"></a></li>

                        <!--Oportunidade de Estágios-->
                        <li>  <a class="tab" href="#"><img src="../img/Icons/icones/png/briefcase.png" 
                                               alt="Estágio" title="Oportunidades de Estágio"></a></li>

                        <!--Cursos Extra-curriculares-->
                        <li><a class="tab" href="#"><img src="../img/Icons/icones/png/notepad-2.png" 
                                             alt="Cursos" title="Cursos Disponíveis"></a></li>

                        <!--Currículo do Aluno-->
                        <li>  <a class="tab" href="#"><img src="../img/Icons/icones/png/diploma.png" 
                                               alt="Meu Currículo" title="Meu Currículo"></a></li>

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
                    <embed src="alterar_perfil.jsp" id="alterar_perfil" class="col s12 offset-x30">
                </div>
                
                <div class="col s10">
                    <embed src="curriculo.html.jsp">
                </div>
                
                <div class="col s10">
                    <embed src="alterar_perfil.html.jsp">
                </div>
                
                <div class="col s10">
                    <embed src="alterar_perfil.html.jsp">
                </div>
                
                <div class="col s10">
                    <embed src="alterar_perfil.html.jsp">
                </div>
                
                <div class="col s10">
                    <embed src="alterar_perfil.html.jsp">
                </div>
                
                <div class="col s10">
                    <embed src="alterar_perfil.html.jsp">
                </div>
            </div>
       
            <footer>
                
            </footer>
    </body>
</html>


<script>
    
    
<script>
