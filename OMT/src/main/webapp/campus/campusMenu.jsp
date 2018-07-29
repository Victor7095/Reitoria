<%@page import="com.br.OMT.models.Usuario"%>
<%@page import="com.br.OMT.models.Entidade"%>
<%Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
    Entidade entidade = (Entidade) request.getSession().getAttribute("entidade");%>
<nav class="navbar navbar-expand-lg navbar-dark green darken-1 menu-usuario mb-4">
    <ul class="navbar-nav">
        <!--Pagina Inicial-->
        <li class="nav-item">
            <a class="nav-link" href="/OMT/campus/index.jsp">
                <img id="icone" src="/OMT/img/Icons/icones/png/home-1.png" title="Página Inicial">Página Inicial
            </a>
        </li>
        <!--Pefil do Usuário-->
        <li class="nav-item">
            <a class="nav-link" href="/OMT/errors/manutencao.jsp">
                <img id="icone" src="/OMT/img/Icons/icones/png/folder-14.png" title="Caixa de Mensagens">Caixa de Mensagens
                </div>
            </a>
        </li>
        <!--Oportunidade de Estágios-->
        <li class="nav-item">
            <a class="nav-link" href="/OMT/errors/manutencao.jsp">
                <img id="icone" src="/OMT/img/Icons/icones/png/briefcase.png" title="Estágios/Trabalhos">Estágios/Trabalhos
            </a>
        </li>
        <!--Cursos Extra-curriculares-->
        <li class="nav-item">
            <a class="nav-link" href="/OMT/campus/eventos.jsp">
                <img id="icone" src="/OMT/img/Icons/icones/png/notepad-2.png" title="Cursos Extras">Cursos Extras
            </a>
        </li>
        <!--Manter eventos-->
        <li class="nav-item">
            <a class="nav-link" href="/OMT/campus/eventos.jsp">
                <img id="icone" src="/OMT/img/Icons/icones/png/newspaper.png" title="Manter Eventos">Eventos
            </a>
        </li>
        <!--Manter egressos-->
        <li class="nav-item">
            <a class="nav-link" href="/OMT/campus/manterEgresso.jsp">
                <img id="icone" src="/OMT/img/student.png" alt="Egressos" title="Egressos">Egressos
            </a>
        </li>
        <!--Voltar para Página de Login-->
        <li class="nav-item">
            <a class="nav-link" href="/OMT/LoginServlet">
                <img id="icone" src="/OMT/img/Icons/icones/png/exit-1.png" alt="Sair" title="Encerrar sessão">Encerrar sessão
            </a>
        </li>
    </ul>
</nav>
