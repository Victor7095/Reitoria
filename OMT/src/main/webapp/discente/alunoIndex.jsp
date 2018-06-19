<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Bem-Vindo caro Aluno</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- referenciamento css-->
        <link href="../CSS/FontsGoogle.css" rel="stylesheet">
        <link rel="stylesheet" href="../CSS/parallax-template/css/materialize.css">
        <link rel="stylesheet" href="../CSS/parallax-template/css/style.css">
        <link rel="stylesheet" href="../CSS/general.css" >
        <!--<link rel="stylesheet" href="../CSS/main.css">-->
        <!-- Linkagens JS -->
    </head>
    <body>
        <header>
            <%@include file="../header.jsp"%>
            <%@include file="alunoMenu.jsp"%>
        </header>
        <div class="row">
            <div class="col s2 z-depth-0">  
                <ul class="tabs center">
                    <!--Imagem do Usuário-->
                    <li><img class="" id="imgUser" alt="Sem Imagem" src="../img/student.png"></li>

                </ul>      

            </div>

        </div>

        <footer>

        </footer>
    </body>
</html>

