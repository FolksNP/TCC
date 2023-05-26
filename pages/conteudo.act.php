<?php
require('connect.php');
session_start();
var_dump($_POST) ;
    extract($_POST);
    var_dump($codCurso);


    if(mysqli_query($con, "INSERT INTO `conteudos` ( `codConteudos`,`seccao`,`desc`, `titulo`) 
    VALUES (null, '$curso', '$descConteudo', '$tituloConteudo');")){
            $msg = "Seção criada com sucesso!";
            $_SESSION['codCursoAula'] = $curso;
            $_SESSION['numeracaoCurso'] = $numeracao;
           
            
    
    } else{
        $msg = "Erro ao cadastrar a seção!";
    }
    
    header("location:aula.php");
?>
