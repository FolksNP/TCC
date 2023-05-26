<?php
extract($_POST);
extract($_FILES);
// $password = md5($password);
require('connect.php');
session_start();

if($foto['size']> 0){

   if($foto_anterior   == "") {
       $arquivo = "../imgs/".md5(time()).".jpg";
      
    }else{
        $arquivo = "../imgs/".md5(time()).".jpg";
    }
    
    move_uploaded_file($foto['tmp_name'],$arquivo);
 }else{
    $arquivo = $foto_anterior;
 }
             
 var_dump($arquivo);

if(mysqli_query($con,"UPDATE `alunos` SET  `nomeAluno` = '$nome', `fotoAluno` = '$arquivo', `emailAluno` = '$email'
 WHERE `alunos`.`codAluno` = '$codigo';")){
    $msg = "Informações alteradas com sucesso!";

}else{
        $msg = "Erro ao gravar";
}

$_SESSION['nome'] = $nome;
$_SESSION['email'] = $email;
$_SESSION['msg'] = $msg;
$_SESSION['arquivo'] = $arquivo;
header("location:telaPerfil.php");
