<?php
session_start();
require('connect.php');

extract($_POST);
extract($_FILES);

$cod= $_SESSION['cod'];

$arquivoCurso = "../imgs/".md5(time().$capaCurso['size']). ".jpg";
move_uploaded_file($capaCurso['tmp_name'],$arquivoCurso);


$codProfCurso = $_SESSION['codProf'];

 $buscaCurso = mysqli_query($con, "Select * from `cursos`");
 $curso = mysqli_fetch_array($buscaCurso);


    if(mysqli_query($con, "INSERT INTO `cursos` ( `codCurso`,`avaliacaoMedia`,`nomeCurso`, `descCurso`, `nivelCurso`, `capaCurso`, `comentarios`) 
    VALUES (NULL, 0.0, '$nomeCurso', '$descCurso', '$nivelCurso', '$arquivoCurso','amei');")){
            $msg = "Curso foi cadastrado com sucesso!";

            $_SESSION['codCurso'] = $curso['codCurso'];  
            $cursoCodigo= $curso['codCurso'];  
            $_SESSION['nomeCurso'] = $curso['nomeCurso'];
            $_SESSION['descCurso'] = $curso['descCurso'];
            $_SESSION['capaCurso'] = $curso['capaCurso'];
            $_SESSION['codCurso'] = $curso['codCurso'];


                $buscaCursoProf = mysqli_query($con, "Select * from `cursos` where `codCurso` = '$cursoCodigo'");
                $cursoProfCurso = mysqli_fetch_array($buscaCursoProf);
                
                mysqli_query($con,"INSERT INTO `professorcurso` (`codProfCurso`, `curso`, `professor`) 
            VALUES (NULL, '$cursoProfCurso[codCurso]', '$codProfCurso')");
            }
            
            


var_dump($con);
echo $msg;
//$_SESSION['msg'] = $msg;
//header("location:cursos.php");
?>