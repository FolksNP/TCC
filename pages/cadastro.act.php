<?php
require('connect.php');
extract($_POST);

if(mysqli_query($con, "INSERT INTO `alunos` ( `emailAluno`, `nomeAluno`, `senhaAluno`) 
VALUES ('$email', '$nome', '$password');")){
        $msg = "Ola! bem vindo a patrono neves <aluno>";
    } else{
        $msg = "Erro ao se cadastrar";
    }

session_start();
$_SESSION['msg'] = $msg;
header("location:login.php"); 


