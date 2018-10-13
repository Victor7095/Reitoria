<div class="container">
    <div class="card px-4 py-4">
        <form id="cadastrar-projeto" method="POST" action="/OMT/ProjetoServlet">
            <h1 class="font-weight-bold mb-4">Cadastrar Projeto</h1>
            <div class="form-group">
                <label for="nome">Nome</label>
                <input name="nome" id="nome" type="text" class="form-control validate">
            </div>

            <div class="form-group">
                <label for="descricao">Descrição</label>
                <textarea id="descricao" name="descricao" class="form-control validate"></textarea>
            </div>

            <div class="form-group">
                <label for="area">Área de atuação</label>
                <input id="area" name="area" type="text" class="form-control validate"/>
            </div>
            <div class="text-right">
                <button type="submit" name="acao" value="cadastrar" class="btn btn-md btn-light-green waves-effect">
                    <i class="fa fa-check mr-1"></i>Cadastrar</button>
                <button type="reset" class="btn btn-md btn-grey waves-effect"><i class="fas fa-eraser mr-1"></i>Limpar</button>
            </div>
        </form>
    </div>
</div>
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/mdb.min.js"></script>
<script src="../js/general.js"></script>
<script src="../js/jquery.mask.min.js"></script>
<script src="../js/mascaras.js"></script>
