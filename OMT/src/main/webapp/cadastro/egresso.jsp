<div class="container">
    <div class="card py-4 px-4">
        <h1 class="font-weight-bold mb-4">Cadastro de Egresso</h1>
        <form method="post" id="cadastrar-egresso" action="/OMT/DiscenteServlet" 
              enctype="multipart/form-data">
            <div class="foto-perfil form-group">
                <div class="kv-avatar">
                    <div class="file-loading">
                        <input id="fotoPerfil" name="inputFoto" type="file">
                    </div>
                </div>
                <div class="kv-avatar-hint"><small>Tamanho máximo da foto: 1500 KB</small></div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="usuario">Matrícula</label>
                    <input class="form-control" type="text" id="usuario" name="usuario" maxlength="12" required>
                </div>
                <div class="form-group col-md-6">
                    <label for="nome">Nome Completo</label>
                    <input class="form-control" type="text" id="nome" name="nome" required>                                        
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="cpf">CPF</label>
                    <input class="form-control CPF" type="text" id="cpf" name="cpf" maxlength="18" required> 
                </div>
                <div class="form-group col-md-6">
                    <label for="rg">RG</label>
                    <input class="form-control RG" type="text" id="rg" name="rg" required> 
                </div>
            </div>
            <div id="kv-avatar-errors-1" class="center-block" style="width:800px;display:none"></div>
            <div class="text-right">
                <button type="submit" name="acao" value="cadastrar" class="btn btn-md btn-light-green waves-effect">
                    <i class="fa fa-check mr-1"></i>Cadastrar</button>
                <button type="reset" class="btn btn-md btn-grey waves-effect"><i class="fas fa-eraser mr-1"></i>Limpar</button>
            </div>
        </form>
    </div>
</div>