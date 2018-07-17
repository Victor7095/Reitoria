<div class="container">
    <div class="card px-4 py-4">
        <h1 class="font-weight-bold mb-4">Cadastro de Evento</h1>
        <form method="post" id="cadastrar-evento" action="/OMT/EventoServlet" 
              enctype="multipart/form-data">
            <div class="form-group">
                <label for="nome">Nome do Evento</label>
                <input class="form-control" type="text" id="nome" name="nome" required>
            </div>
            <div class="form-group">
                <label for="local">Local do Evento</label>
                <input class="form-control" type="text" id="local" name="local">
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inscricaoInicio">Data de Início das Inscrições</label>
                    <input class="form-control data" type="text" id="inscricaoInicio" name="inscricaoInicio">
                </div>
                <div class="form-group col-md-6">
                    <label for="inscricaoFim">Data de Fim das Inscrições</label>
                    <input class="form-control data" type="text" id="inscricaoFim" name="inscricaoFim">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inicio">Data de Início do Evento</label>
                    <input class="form-control data" type="text" id="inicio" name="inicio">
                </div>
                <div class="form-group col-md-6">
                    <label for="fim">Data de Fim do Evento</label>
                    <input class="form-control data" type="text" id="fim" name="fim">
                </div>
            </div>
            <div class="form-group">
                <label for="descricao">Descrição do Evento</label>
                <textarea id="descricao" name="descricao" class="form-control" rows="5"></textarea>
            </div>
            <div class="form-group foto-multipla">
                <label for="fotos">Fotos</label>
                <div class="file-loading">
                    <input id="fotos" name="fotos[]" type="file" multiple>
                </div>
                <small id="infoAnoFinalizacao" class="form-text text-muted">
                    Todas as fotos selecionadas serão exibidas para os usuários definidos
                </small>
            </div>
            <div class="text-right">
                <button type="submit" name="acao" value="cadastrar" class="btn btn-md btn-light-green waves-effect">
                    <i class="fa fa-check mr-1"></i>Cadastrar</button>
                <button type="reset" class="btn btn-md btn-grey waves-effect"><i class="fas fa-eraser mr-1"></i>Limpar</button>
            </div>
        </form>
    </div>
</div>