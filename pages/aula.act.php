<?php 
session_start();
require('connect.php');
var_dump($_POST);
extract($_POST);
extract($_FILES);
var_dump($_FILES);

    $arqVideo = "../videos/".md5(time().$videoAula['size']). ".mp4";
    move_uploaded_file($videoAula['tmp_name'],$arqVideo);
   
    if(mysqli_query($con, "INSERT INTO `aulas` ( `codAula`,`duracao`, `video`, `referencias`, `codCurso`) 
    VALUES (NULL, 5, '$arqVideo','Warner Bros', '$codCurso');")){
           $msg = "Aula cadastrada com sucesso!";
        } else{
           $msg = "Erro ao se cadastrar!";
        }
        //echo $msg;
        //var_dump($con);
        session_start();
        $_SESSION['mensagem'] = $msg;
        header('location:telaPerfil.php');
?>