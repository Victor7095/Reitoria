<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="Sexo" class="com.br.OMT.Beans.SexoBean"/>
<jsp:useBean id="EstadoCivil" class="com.br.OMT.Beans.EstadoCivilBean"/>
<jsp:useBean id="Etnia" class="com.br.OMT.Beans.EtniaBean"/>
<div class="container">
    <div class="card py-4 px-4">
        <h1 class="font-weight-bold mb-4">Cadastro de Egresso</h1>
        <form id="form-cadastrar" name="form-cadastrar" method="post" action="/OMT/DiscenteServlet" >
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
            <div class="form-group">
                <label for="email">E-mail</label>
                <input class="form-control" type="email" name="email" id="email" maxlength="40">
            </div>
            <div class="form-row">
                <div class="form-group col-sm-12 col-lg-6">
                    <label for="linkCurriculoLattes">Link Currículo Lattes</label>
                    <input class="form-control" type="url" name="linkCurriculoLattes" id="linkCurriculoLattes" maxlength="128">
                </div>
                <div class="form-group col-sm-12 col-lg-6">
                    <label for="linkPerfilLinkedIn">Link Perfil LinkedIn</label>
                    <input class="form-control" type="url" id="linkPerfilLinkedIn" name="linkPerfilLinkedIn" maxlength="128">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-sm-12 col-lg-4">
                    <label for="sexo">Sexo</label>
                    <select class="form-control" name="sexo" id="sexo" required>
                        <c:forEach items="${Sexo.values}" var="sexo" varStatus="loop">
                            <option value="${sexo}">${sexo}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group col-sm-12 col-lg-4">
                    <label for="estadoCivil">Estado Civil</label>
                    <select class="form-control" name="estadoCivil" id="estadoCivil" required>
                        <c:forEach items="${EstadoCivil.values}" var="estadoCivil" varStatus="loop">
                            <option value="${estadoCivil}">${estadoCivil}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group col-sm-12 col-lg-4">
                    <label for="etnia">Etnia</label>
                    <select class="form-control" name="etnia" id="etnia" required>
                        <c:forEach items="${Etnia.values}" var="etnia" varStatus="loop">
                            <option value="${etnia}">${etnia}</option>
                        </c:forEach>
                    </select>
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