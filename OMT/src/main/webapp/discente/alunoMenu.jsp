<%@page import="com.br.OMT.models.Discente"%>
<% Discente discente = (Discente) request.getSession().getAttribute("usuario");%>
<nav class="navbar navbar-expand-lg navbar-dark green darken-1 menu-usuario">
    <ul class="navbar-nav">
        <!--Pagina Inicial-->
        <li class="nav-item">
            <a class="nav-link" href="../discente/index.jsp">
                <div class="valign-wrapper"><img id="icone" src="../img/Icons/icones/png/home-1.png" title="P�gina Inicial">P�gina inicial</div></a>
        </li>
        <!--Pefil do Usu�rio-->
        <li class="nav-item">
            <a class="nav-link" href="../discente/alterar_perfil.jsp">
                <div class="valign-wrapper"><img id="icone" src="../img/Icons/icones/png/edit.png" title="Editar informa��es">Editar informa��es</div></a>
        </li>
        <!--Caixa de Mensagens-->
        <li class="nav-item">
            <a class="nav-link" href="../errors/manutencao.jsp">
                <div class="valign-wrapper"><img id="icone" src="../img/Icons/icones/png/folder-14.png" title="Caixa de Mensagens">Caixa de Mensagens</div></a>
        </li>
        <!--Oportunidade de Est�gios-->
        <li class="nav-item">
            <a class="nav-link" href="../errors/manutencao.jsp">
                <div class="valign-wrapper"><img id="icone" src="../img/Icons/icones/png/briefcase.png" title="Est�gios/Trabalhos">Est�gios/Trabalhos</div></a>
        </li>
        <!--Cursos Extra-curriculares-->
        <li class="nav-item">
            <a class="nav-link" href="../errors/manutencao.jsp">
                <div class="valign-wrapper"><img id="icone" src="../img/Icons/icones/png/notepad-2.png" title="Cursos Extras">Cursos extras</div></a>
        </li>
        <!--Curr�culo do Aluno-->
        <li class="nav-item">
            <a class="nav-link" href="../discente/curriculo.jsp">
                <div class="valign-wrapper"><img id="icone" src="../img/Icons/icones/png/diploma.png" title="Seu Curr�culo">Seu curr�culo</div></a>
        </li>
        <!--Voltar para P�gina de Login-->
        <li class="nav-item">
            <a class="nav-link" href="../home.jsp">
                <div class="valign-wrapper"><img id="icone" src="../img/Icons/icones/png/exit-1.png" alt="Sair" title="Encerrar sess�o">Encerrar sess�o</div></a>
        </li>
    </ul>
</nav>
