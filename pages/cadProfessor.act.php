<?php
session_start();
require('connect.php');

$codigoProf = $_SESSION['cod'];

extract($_POST);

$buscaProfessor = mysqli_query($con, "SELECT * FROM `professores`");
var_dump($buscaProfessor);
$professor = mysqli_fetch_array($buscaProfessor);

if(mysqli_query($con, "INSERT INTO `professores` ( `codProfessor`,`cpf`,`numAgencia`, `numConta`) 
VALUES ('$codigoProf', '$cpf', '$numAgencia', '$numConta');")){
        $msg = "Seja bem-vindo ao time!";
        $_SESSION['loginProf'] = true;

} else{
    $msg = "Não foi possível realizar seu cadastro!";
}

var_dump($con);
echo $msg;
$_SESSION['msg'] = $msg;
header("location:inicial.php");
?>
