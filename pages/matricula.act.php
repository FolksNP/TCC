<?php  
require('connect.php');
    extract($_POST);
    var_dump($_POST);


    $busca =  mysqli_query($con, "SELECT * FROM `matriculas` where `matriculaCursos` = $cursoMat AND `matriculaAlunos` = '$alunoMat'") ;

    if ($busca-> num_rows == 0) {
        # code...
    
        if(mysqli_query($con, "INSERT INTO `matriculas` ( `codMatricula`,`matriculaAlunos`,`matriculaCursos`,`cursoProgresso`, `dataMatricula`) 
        VALUES (NULL,'$alunoMat', '$cursoMat', 0.0, '$dataCurso');")){
            $msg = "matriculado com sucesso!";
            $target = "location:telaPerfil.php";



        
            }else{
                $msg = "não matriculado com sucesso!";
                //$target = "location:cursos.php";

            }

        }else{
            $msg = "Agrademos o interesse neste curso, porém você já esta matriculado nele, acesse as aulas pelo seu Perfil <a href=telaPerfil.php> clicando aqui</a> ou clicando em 'Dasboard' no menu superior";
            $target = "location:telaAviso.php?msg=$msg";
        }

            
            header($target);

?>