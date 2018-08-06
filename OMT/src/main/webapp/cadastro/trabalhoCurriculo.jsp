<div class="container">
    <div class="card px-4 py-4">
        <form id="cadastrar-trabalho" method="POST" action="/OMT/TrabalhoCurriculoServlet">
            <h1 class="font-weight-bold mb-4">Cadastrar Trabalho</h1>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="profissao">Profissão</label>
                    <input class="form-control validate" name="profissao" id="profissao" type="text">
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-6">
                    <label for="inicio">Data de início</label>
                    <input class="form-control validate data" type="text" id="inicio" name="inicio"/>  
                </div>
                <div class="form-group col-md-6">
                    <label for="fim">Data de fim</label>
                    <input class="form-control validate data" type="text" id="fim" name="fim"/>  
                </div>
            </div>

            <div class="row">
                <div class="form-group col">
                    <label for="salario">Nome da empresa/empregador/local de trabalho</label>
                    <input class="form-control validate" name="empregador" id="empregador" type="text"/>
                </div>
            </div>

            <div class="form-group">
                <label for="descricao">Descrição</label>
                <textarea class="form-control" name="descricao" id="descricao" rows="5"></textarea>
            </div>
            <div class="text-right">
                <button type="submit" name="acao" value="cadastrar" class="btn btn-md btn-light-green waves-effect">
                    <i class="fa fa-check mr-1"></i>Cadastrar</button>
                <button type="reset" class="btn btn-md btn-grey waves-effect"><i class="fas fa-eraser mr-1"></i>Limpar</button>
            </div>
        </form>
    </div>
</div>