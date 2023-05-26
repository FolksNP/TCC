<?php require('sec.php'); ?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagamento - Patrono Neves</title>
    <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
    <link rel="stylesheet" href="../styles/css/main.css">
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="hhttps://cdnjs.com/libraries/jquery.mask"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () { 
            $('#caixa-numero-card').mask('0000.0000.0000.0000', {reverse: true});
        });
    </script>

</head>
<body>

    <?php include('header.php'); ?>

        <div class="pagamento-caixa">
            <div class="pagamento-principal">
                <div class="lista-certificados">
                
                    <h2>Seus certificados disponíveis:</h2>
                    <ul id="listamento">
                        <li class="certificado-info">
                            <span>Certificado: Programação Geral - Básico</span>
                            <span>Horas/Aula: 4 Horas</span>
                            <span>Instrutor: Yasmin Hipólito</span>
                            <span>Valor: R$2,00</span>
                        </li>
                        <li class="certificado-info">
                            <span>Certificado: Design Web - Avançado</span>
                            <span>Horas/Aula: 15 Horas</span>
                            <span>Instrutor: Jonathan Ramalho</span>
                            <span>Valor: R$60,00</span>
                        </li>
                        <li class="certificado-info">
                            <span>Certificado: Manicure - Avançado</span>
                            <span>Horas/Aula: 100 Horas</span>
                            <span>Instrutor: Maria Clara</span>
                            <span>Valor: R$250,00</span>
                        </li>
                    </ul>
                </div>
                <div class="pagamento">
                    <h2>Pagamento</h2>
                    <hr>       
                    <p>Selecione um certificado:</p>
                    <select name="" id="certificados-disponiveis">
                        <option value="">Certificado: Programação Geral - Básico</option>
                        <option value="">Certificado: Design Web - Avançado</option>
                        <option value="">Certificado: Manicure - Avançado</option>
                    </select>

                    <input type="text" name="" id="nome-certi" placeholder="Nome para o titular do certificado:">

                    <div class="caixa-pagamento">

                        <label id="lbl-forma" for="formas">Formas de Pagamento</label>
                        <select id="formas">
                            <option value="">Crédito</option>
                            <option value="">Débito</option>
                        </select>

                        <form action="">
                            <input id="titular" type="text" placeholder="Nome do titular do cartão" maxlength="27px">
                            <span id="caixa-numero-card"><label for="numero-card">Número do cartão e Digitos:</label><input id="numero-card" type="text" placeholder="0000 0000 0000 0000" maxlength="16"> <input id="tres-digi" type="text" maxlength="3" placeholder="MMM"></span>
                        </form>

                        <p id="valorpg">Valor a  ser pago: R$2,00</p>

                        <button type="submit" onclick="window.location.href = 'certificado.php'" id="btn-pagar">Realizar pagamento</button>
                    </div>
                    
                </div>
            </div>
        </div>

    <?php include('footer.php'); ?>

</body>
</html>