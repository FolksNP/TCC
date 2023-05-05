<?php
session_start();
require('connect.php');

extract($_POST);
extract($_FILES);

$cod= $_SESSION['cod'];

$arquivoCurso = "../imgs/".md5(time().$capaCurso['size']). ".jpg";
move_uploaded_file($capaCurso['tmp_name'],$arquivoCurso);


$buscaCurso = mysqli_query($con, "Select * from `cursos`");
var_dump($buscaCurso);
$curso = mysqli_fetch_array($buscaCurso);

try {
    if(mysqli_query($con, "INSERT INTO `cursos` ( `codCurso`,`avaliacaoMedia`,`nomeCurso`, `descCurso`, `nivelCurso`, `capaCurso`, `comentarios`) 
    VALUES (NULL, 0.0, '$nomeCurso', '$descCurso', '$nivelCurso', '$arquivoCurso');")){
            $msg = "Curso foi cadastrado com sucesso!";
            $_SESSION['nomeCurso'] = $curso['nomeCurso'];
            $_SESSION['descCurso'] = $curso['descCurso'];
            $_SESSION['capaCurso'] = $curso['capaCurso'];
            $_SESSION['codCurso'] = $curso['codCurso'];
    }
    if(mysqli_query($con, "INSERT INTO `professorcurso` ( `codProfCurso`,`curso`,`professor`) VALUES (NULL, '$curso', '$cod');")){
        
    }
} catch(Exception $e) {
    $msg = "Erro ao cadastrar o curso! $e";
}

var_dump($con);
echo $msg;
$_SESSION['msg'] = $msg;
//header("location:cursos.php");
?>