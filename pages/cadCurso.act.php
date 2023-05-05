<?php
session_start();
require('connect.php');

extract($_POST);
extract($_FILES);

$arquivoCurso = "../imgs/".md5(time().$capaCurso['size']). ".jpg";
move_uploaded_file($capaCurso['tmp_name'],$arquivoCurso);


$buscaCurso = mysqli_query($con, "Select * from `cursos`");

$curso = mysqli_fetch_array($buscaCurso);

if(mysqli_query($con, "INSERT INTO `cursos` ( `codCurso`,`avaliacaoMedia`,`nomeCurso`, `descCurso`, `nivelCurso`, `capaCurso`, `comentarios`) 
VALUES (NULL, 0.0 ,'$nomeCurso', '$descCurso', '$nivelCurso', '$arquivoCurso', 'ameeeeeeei');")){
        $msg = "Curso foi cadastrado com sucesso!";
        $_SESSION['nomeCurso'] = $curso['nomeCurso'];
        $_SESSION['descCurso'] = $curso['descCurso'];
        $_SESSION['capaCurso'] = $curso['capaCurso'];
        $_SESSION['codCurso'] = $curso['codCurso'];
        

} else{
    $msg = "Erro ao cadastrar o curso!";
}
var_dump($con);
echo $msg;
$_SESSION['msg'] = $msg;
header("location:cursos.php");
?>