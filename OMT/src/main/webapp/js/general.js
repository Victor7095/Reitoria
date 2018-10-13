/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    var pathname = window.location.pathname;
    pathname = pathname.replace("/OMT", "..");
    $(".menu-usuario .navbar-nav > li > a[href='" + pathname + "']").parent().addClass('active');
});