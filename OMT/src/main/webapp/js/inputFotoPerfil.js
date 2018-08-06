/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var id = $('#formAlterar').data('id');
var caminhoFoto;
if (id == undefined) {
    caminhoFoto = '<img src="/OMT/img/student.png" alt="Foto de Perfil">';
} else {
    caminhoFoto = '<img src="/OMT/DiscenteServlet?id=' + id + '" alt="Foto de Perfil">';
}
var previewZoomButtonIcons = {
    prev: '<i class="fa fa-caret-left fa-lg"></i>',
    next: '<i class="fa fa-caret-right fa-lg"></i>',
    toggleheader: '<i class="fa fa-arrows-alt-v fa-lg"></i>',
    fullscreen: '<i class="fa fa-expand-arrows-alt fa-lg"></i>',
    borderless: '<i class="fa fa-expand fa-lg"></i>',
    close: '<i class="fa fa-times fa-lg"></i>'
};
var previewZoomButtonClasses = {
    prev: 'btn btn-navigate z-depth-0',
    next: 'btn btn-navigate z-depth-0',
    toggleheader: 'btn btn-sm btn-kv btn-default btn-grey',
    fullscreen: 'btn btn-sm btn-kv btn-default btn-grey',
    borderless: 'btn btn-sm btn-kv btn-default btn-grey',
    close: 'btn btn-sm btn-kv btn-default btn-grey'
};
var zoomClass = 'btn btn-sm btn-kv btn-outline-grey';
var footerInputFoto = '<div class="file-thumbnail-footer">\n' +
        '    <div class="file-footer-caption" title="{caption}">\n' +
        '        <div class="file-caption-info">{caption}</div>\n' +
        '        <div class="file-size-info">{size}</div>\n' +
        '    </div>\n' +
        '    {progress}\n{actions}\n' +
        '</div>';
$("#fotoPerfil").fileinput({
    theme: "fa",
    language: 'pt-BR',
    overwriteInitial: true,
    maxFileSize: 3000,
    showClose: false,
    showCaption: false,
    browseClass: 'btn btn-sm btn-primary',
    browseLabel: 'Escolher',
    browseTitle: 'Escolher foto de perfil',
    removeClass: 'btn btn-sm btn-grey',
    removeLabel: 'Remover',
    removeTitle: 'Remover foto de perfil',
    elErrorContainer: '#kv-avatar-errors-1',
    msgErrorClass: 'alert alert-block alert-danger',
    previewZoomButtonIcons: previewZoomButtonIcons,
    previewZoomButtonClasses: previewZoomButtonClasses,
    defaultPreviewContent: caminhoFoto,
    layoutTemplates: {
        main2: '{preview} ' + ' {remove} {browse}',
        footer: footerInputFoto,
        actionZoom: '<button type="button" class="kv-file-zoom ' + zoomClass + '" title="{zoomTitle}">{zoomIcon}</button>'},
    allowedFileExtensions: ["jpg", "png"]
});
$('.foto-multipla input[type="file"]').fileinput({
    theme: "fa",
    language: 'pt-BR',
    overwriteInitial: true,
    maxFileSize: 3000,
    showClose: false,
    showCaption: true,
    showUpload: false,
    allowedFileTypes: ["image", "video"],
    previewFileType: "image",
    browseClass: "btn btn-md btn-primary mt-0 mb-0",
    browseLabel: "Escolher imagens",
    browseTitle: 'Escolher foto de perfil',
    browseIcon: "<i class=\"fa fa-folder-open\"></i> ",
    removeLabel: 'Remover',
    removeTitle: 'Remover foto de perfil',
    removeClass: 'btn btn-md btn-grey mt-0 mb-0',
    elErrorContainer: '#kv-avatar-errors-1',
    msgErrorClass: 'alert alert-block alert-danger',
    previewZoomButtonIcons: previewZoomButtonIcons,
    previewZoomButtonClasses: previewZoomButtonClasses,
    layoutTemplates: {
        main2: '{preview} ' + ' {remove} {browse}',
        footer: footerInputFoto,
        actionZoom: '<button type="button" class="kv-file-zoom ' + zoomClass + '" title="{zoomTitle}">{zoomIcon}</button>'},
    allowedFileExtensions: ["jpg", "png"]
});