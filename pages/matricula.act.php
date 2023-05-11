<?php  
require('connect.php');
    extract($_POST);
    var_dump($_POST);

    if(mysqli_query($con, "INSERT INTO `matriculas` ( `codMatricula`,`matriculaAlunos`,`matriculaCursos`,`cursoProgresso`, `dataMatricula`) 
    VALUES (NULL,'$alunoMat', '$cursoMat', 0.0, '$dataCurso');")){
            $msg = "matriculado com sucesso!";
            $target = "location:telaPerfil.php";



        
            }else{
                $msg = "não matriculado com sucesso!";
                //$target = "location:cursos.php";

            }


            echo $msg;
            header($target);

?>