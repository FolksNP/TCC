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

// switch($categoria) {
//     case 'Manutenção':
//         $categoria = 1;
//         break;
//     case 'Confeitaria':
//         $categoria = 2;
//         break;
//     case 'Arte':
//         $categoria = 3;
//         break;
//     case 'Marcenaria':
//         $categoria = 4;
//         break;
// }


    if(mysqli_query($con, "INSERT INTO `cursos` ( `codCurso`,`professor`,`avaliacaoMedia`,`nomeCurso`, `descCurso`, `nivelCurso`, `capaCurso`, `categoria`) 
    VALUES (NULL,'$codProfCurso', 0.0, '$nomeCurso', '$descCurso', '$nivelCurso', '$arquivoCurso','$categoria');")){

            $msg = "Curso foi cadastrado com sucesso!";

            @$_SESSION['codCurso'] = $curso['codCurso'];  
            @$cursoCodigo= $curso['codCurso'];  
            @$_SESSION['nomeCurso'] = $curso['nomeCurso'];  
            @$_SESSION['descCurso'] = $curso['descCurso'];
            @$_SESSION['capaCurso'] = $curso['capaCurso'];
            @$_SESSION['codCurso'] = $curso['codCurso'];


                $buscaCursoProf = mysqli_query($con, "Select * from `cursos` where `codCurso` = '$cursoCodigo'");
                $cursoProfCurso = mysqli_fetch_array($buscaCursoProf);
              
            }else{
                $msg = "não cadastrado";
            }
            
            


var_dump($con);
echo @$msg;
$_SESSION['msgCurso'] = "Adicione uma aula para seu curso ao clicar nele";
header("location:telaPerfil.php");
?>