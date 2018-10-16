<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
    <div class="card px-4 py-4">
        <h1 class="font-weight-bold mb-4">Cadastro de Campus</h1>
        <form method="post" name="cadastrar-campus" id="cadastrar-campus" action="/OMT/CampusServlet">
            <section>
                <h4 class="mb-4"><strong>Dados do campus</strong></h4>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="cnpj">CNPJ</label>
                        <input class="form-control CNPJ" type="text" id="cnpj" name="cnpj" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="cnae">CNAE</label>
                        <input class="form-control CNAE" type="text" id="cnae" name="cnae" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="nome">Nome do Campus</label>
                    <input class="form-control" type="text" id="nome" name="nome" required>
                </div>
                <div class="form-group">
                    <label for="nomeFantasia">Nome Fantasia do Campus</label>
                    <input class="form-control" type="text" id="nomeFantasia" name="nomeFantasia" required>
                </div>
                <div class="form-group">
                    <label for="cep">CEP</label>
                    <input class="form-control CEP" type="text" id="cep" name="cep" required aria-describedby="infoCEP">
                    <small id="infoCEP" class="form-text text-muted">
                        Preenchendo o CEP, outros campos relacionados ao endereço serão preenchidos automaticamente
                    </small>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="estado">Estado</label>
                        <input class="form-control" type="text" id="estado" name="estado" readonly required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="cidade">Cidade</label>
                        <input class="form-control" type="text" id="cidade" name="cidade" readonly required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="bairro">Bairro</label>
                        <input class="form-control" type="text" id="bairro" name="bairro" readonly required>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="rua">Rua</label>
                        <input class="form-control" type="text" id="rua" name="rua" readonly required>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="numero">Número</label>
                        <input class="form-control" type="text" id="numero" name="numero" >
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col">
                        <label for="complemento">Complemento</label>
                        <input class="form-control" type="text" id="complemento" name="complemento" required>
                    </div>
                </div>  
                <div class="form-row">
                    <div class="form-group col">
                        <label for="tipo">Tipo</label>
                        <select class="form-control" name="tipo" id="tipo" required>
                            <option value="" disabled selected>Selecionar opção</option>
                            <option value="C">Campus</option>
                            <option value="R">Reitoria</option>
                        </select>
                    </div>
                </div>
            </section>
            <hr class="my-4">
            <section>
                <h4 class="mb-4"><strong>Usuário padrão</strong></h4> 
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="nomeUsuario">Nome</label>
                        <input class="form-control" type="text" id="nomeUsuario" name="nomeUsuario" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="login">Usuário</label>
                        <input class="form-control" type="text" id="login" name="login" required aria-describedby="infoLogin">
                        <small id="infoLogin" class="form-text text-muted">
                            Nome para entrar no sistema
                        </small>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="senha">Senha</label>
                        <input class="form-control validate" id="senha" type="password" name="senha" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="confirmar">Confirmar Senha</label>
                        <input class="form-control validate" id="confirmar" type="password" name="senha" required>
                    </div>
                </div>
            </section>
            <div class="text-right">
                <button type="submit" name="acao" value="cadastrar" class="btn btn-md btn-light-green waves-effect waves-green">
                    <i class="fa fa-check mr-1"></i>Cadastrar</button>
                <button type="reset" class="btn btn-md btn-grey waves-effect waves-green"><i class="fas fa-eraser mr-1"></i>Limpar</button>
            </div>
        </form>
    </div>
</div>
