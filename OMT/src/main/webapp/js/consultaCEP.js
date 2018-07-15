/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//Quando o campo cep perde o foco.
function initCEP() {
    $("#cep").blur(function () {

        //Nova variável "cep" somente com dígitos.
        var cep = $(this).val().replace(/\D/g, '');

        //Verifica se campo cep possui valor informado.
        if (cep != "") {

            //Expressão regular para validar o CEP.
            var validacep = /^[0-9]{8}$/;

            //Valida o formato do CEP.
            if (validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                $("#estado").val("...");
                $("#cidade").val("...");
                $("#bairro").val("...");
                $("#rua").val("...");
                $("#complemento").val("...");
                //Consulta o webservice viacep.com.br/
                $.getJSON("https://viacep.com.br/ws/" + cep + "/json/?callback=?", function (dados) {

                    if (!("erro" in dados)) {

                        $("#estado").val(dados.uf);
                        $("#cidade").val(dados.localidade);
                        $("#bairro").val(dados.bairro);
                        $("#rua").val(dados.logradouro);
                        $("#complemento").val(dados.complemento);
                        $("#estado").trigger("change");
                        $("#cidade").trigger("change");
                        $("#bairro").trigger("change");
                        $("#rua").trigger("change");
                        $("#complemento").trigger("change");

                    } //end if.
                    else {
                        //CEP pesquisado não foi encontrado.
                        $("#estado").val("");
                        $("#cidade").val("");
                        $("#bairro").val("");
                        $("#rua").val("");
                        $("#complemento").val("");
                        alert("CEP não encontrado.");
                    }
                });
            } //end if.
            else {
                //cep é inválido.
                $("#endereco").val("");
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            $("#endereco").val("");
        }
    });
}
$(document).ready(function () {
    initCEP();
});