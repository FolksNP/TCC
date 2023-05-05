<?php
session_start();
require('connect.php');

extract($_POST);

$buscaSec = mysqli_query($con, "SELECT * FROM `seccoes`");
var_dump($buscaSec);
$seccao = mysqli_fetch_array($buscaSec);

if(mysqli_query($con, "INSERT INTO `seccoes` ( `codSeccao`,`curso`,`numeracao`, `secTitulo`) 
VALUES ('$codSeccao', '$curso', '$numeracao', '$secTitulo');")){
        $msg = "Seção criada com sucesso!";

} else{
    $msg = "Erro ao cadastrar a seção!";
}

var_dump($con);
echo $msg;
$_SESSION['msg'] = $msg;
?>
