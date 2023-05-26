<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="../styles/css/main.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
include('header.php');

$msg = $_GET['msg'];
echo "<div class=alertaMat><p><img src=../imgs/mao.png></p> $msg 
<a href=inicial.php> <p><input type=button value=\"Voltar Para a Página Inicial\"></p>    </a></div>";
include('footer.php');

    ?>
</body>
</html>
