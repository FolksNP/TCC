<?php
require('connect.php');
extract($_POST);
$password = md5($password);
$busca = mysqli_query($con, "Select * from `alunos` where `emailAluno` = '$email'");
// $cod= $_SESSION['cod'];

session_start();


    if($busca-> num_rows == 1){
    $cadastro = mysqli_fetch_array($busca);
    if($password === $cadastro['senhaAluno']){
      echo "bem vindo";
      $_SESSION['login'] = true;
      $_SESSION['foto'] = $cadastro['fotoAluno'];
      $_SESSION['cod'] = $cadastro['codAluno'];
      $codProfLogin = $cadastro['codAluno'];
      $_SESSION['nome'] = $cadastro['nomeAluno'];
      $_SESSION['email'] = $cadastro['emailAluno'];
      $_SESSION['senha'] = $cadastro['senhaAluno'];

      $codigosProfessores = mysqli_query($con, "SELECT * FROM `professores` WHERE `codProfessor` = '$codProfLogin'");
      $codigoProfessor = mysqli_fetch_array( $codigosProfessores);
      $_SESSION['codProf'] = $codigoProfessor['codProfessor'];
      
      $target = "location:inicial.php";
      $msg = "Volte logo, sentiremos sua falta.";
      }else{
        $msg = "Email ou senha incorretos!";
        $target = "location:login.php";
        
      }
      }else{
        $msg = "Email ou senha incorretos!";
        $target = "location:login.php";
        
      }

      $_SESSION['msgLogin'] = $msg;
      
      header($target);