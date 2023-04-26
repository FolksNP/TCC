<?php
extract($_POST);
extract($_FILES);
$password = md5($password);
require('connect.php');


if($foto['size']> 0){

   if($foto_anterior   == "") {
        $arquivo = "imgs/".md5(time()).".jpg";
    }else{
        $arquivo = $foto_anterior;
    }
    move_uploaded_file($foto['tmp_name'],$arquivo);
 }else{
    $arquivo = $foto_anterior;
 }
             

if(mysqli_query($con,"UPDATE `alunos` SET  `nomeAluno` = '$nome', `fotoAluno` = '$arquivo', `emailAluno` = '$email',
 `senhaAluno` = '$password' WHERE `alunos`.`codAluno` = '$codigo';
")){
    $msg = "Informações alteradas com sucesso!";
}else{
        $msg = "Erro ao gravar";
}
    

session_start();
$_SESSION['msg'] = $msg;
header("location:telaPerfilProfessor.php");