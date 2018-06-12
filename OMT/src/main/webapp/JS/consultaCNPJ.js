$(document).ready(function () {
    $("#cnpj").blur(function () {

        var cnpj = "04565289000147";
        if (cnpj != "") {
            $("#cnae").val("...");
            $("#nome").val("...");
            $("#nomeFantasia").val("...");
            $("#cep").val("...");
            $("#estado").val("...");
            $("#cidade").val("...");
            $("#bairro").val("...");
            $("#rua").val("...");
            $("#numero").val("...");
            $("#complemento").val("...");
            $.ajax({
                url: "https://www.receitaws.com.br/v1/cnpj/" + cnpj,
                type: "GET",
                crossDomain: true,
                dataType: 'jsonp',
                success: function (dados) {
                    console.log(dados);
                    $("#cnae").val(dados.atividade_principal[0].code);
                    $("#nome").val(dados.nome);
                    $("#nomeFantasia").val(dados.fantasia);
                    $("#cep").val(dados.cep);
                    $("#estado").val(dados.uf);
                    $("#cidade").val(dados.municipio);
                    $("#bairro").val(dados.bairro);
                    $("#rua").val(dados.logradouro);
                    $("#numero").val(dados.numero);
                    $("#complemento").val(dados.complemento);

                    /////////////////////////
                    $("#cnae").trigger("change");
                    $("#nome").trigger("change");
                    $("#nomeFantasia").trigger("change");
                    $("#cep").trigger("change");
                    $("#estado").trigger("change");
                    $("#cidade").trigger("change");
                    $("#bairro").trigger("change");
                    $("#rua").trigger("change");
                    $("#numero").trigger("change");
                    $("#complemento").trigger("change");
                }, error: function (e) {
                    console.log(e);
                    $("#estado").val("");
                    $("#cidade").val("");
                    $("#bairro").val("");
                    $("#rua").val("");
                    $("#complemento").val("");
                    alert("CNPJ não encontrado.");
                }
            });
        } else {
            //CNPJ é inválido.
            //$("#endereco").val("");
            //alert("Formato de CEP inválido.");

        } //end if.
    });
});


