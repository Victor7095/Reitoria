<div class="container">
    <div class="card px-4 py-4">
        <form id="cadastrar-formacao" method="post" action="/OMT/FormacaoServlet">
            <h1 class="font-weight-bold mb-4">Cadastrar Formação</h1>
            <div class="form-group">
                <label for="nome">Nome</label>
                <input class="form-control validate" id="nome" name="nome" type="text">
            </div>
            <div class="row">
                <div class="form-group col-lg-8">
                    <label for="escola">Escola ou Instituto</label>
                    <input class="form-control validate" id="escola" name="escola" type="text">
                </div>
                <div class="form-group col-lg-4">
                    <label>Ano de finalização</label>
                    <select class="form-control" name="anofinalizacao" id="anofinalizacao" aria-described-by="infoAnoFinalizacao">
                        <option value="" disabled selected>Escolha o ano de formação</option>
                    </select>
                    <small id="infoAnoFinalizacao" class="form-text text-muted">
                        Ano em que concluiu a formação
                    </small>
                </div>
            </div>
            <div class="text-right">
                <button type="submit" name="acao" value="cadastrar" class="btn btn-md btn-light-green waves-effect">
                    <i class="fa fa-check mr-1"></i>Cadastrar</button>
                <button type="reset" class="btn btn-md btn-grey waves-effect"><i class="fas fa-eraser mr-1"></i>Limpar</button>
            </div>
        </form>
    </div>
</div>
