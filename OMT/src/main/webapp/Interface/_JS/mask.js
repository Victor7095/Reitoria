/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    $("#cpf").mask('000.000.000-00', {reverse: false});
    $("#rg").mask('00.000.000-0', {reverse: false});
    $("#cnpj").mask('00.000.000/0000-00', {reverse: false});
    $("#cnae").mask('00000-0/00', {reverse: false});
    $("#cep").mask('00000-000', {reverse: false});
});
