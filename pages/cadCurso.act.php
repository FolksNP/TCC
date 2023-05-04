<?php
session_start();
require('connect.php');

extract($_POST);
extract($_FILES);

$arquivoCurso = "../imgs/".md5(time().$capaCurso['size']). ".jpg";
move_uploaded_file($capaCurso['tmp_name'],$arquivoCurso);

if(mysqli_query($con, "INSERT INTO `cursos` ( `codCurso`,`nomeCurso`, `descCurso`, `nivelCurso`, `capaCurso`) 
VALUES (NULL,'$nomeCurso', '$descCurso', '$nivelCurso', '$arquivoCurso');")){
        $msg = "Curso foi cadastrado com sucesso!";
} else{
    $msg = "Erro ao cadastrar o curso!";
    echo $msg;
}

$_SESSION['msg'] = $msg;
header("location:telaPerfil.php");
?>