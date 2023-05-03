<?php
require('connect.php');

extract($_POST);
extract($_FILES);

 $password = md5($password);
 $arquivo = "../imgs/".md5(time().$foto['size']). ".jpg";
 move_uploaded_file($foto['tmp_name'],$arquivo);

if(mysqli_query($con, "INSERT INTO `alunos` ( `codAluno`,`emailAluno`, `nomeAluno`, `senhaAluno`, `fotoAluno`) 
VALUES (NULL,'$email', '$nome', '$password', '$arquivo');")){
        $msg = "Ola! bem vindo a patrono neves <aluno>";
        
    } else{
        $msg = "Erro ao se cadastrar";
        echo $msg;
    }

session_start();

$_SESSION['msg'] = $msg;
header("location:login.php"); 

