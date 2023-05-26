$(document).ready(function (){
    $('#gerador').click(function (){
        $('.principal-certificado').printThis({importCSS: true, importStyle: true, loadCSS: "../styles/css/main.css"});
    });
});