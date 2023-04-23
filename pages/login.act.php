<?php
require('connect.php');
extract($_POST);

$busca = mysqli_query($con, "Select * from `alunos` where `emailAluno` = '$email'");
    
    session_start();

    if($busca-> num_rows == 1){
    $cadastro = mysqli_fetch_array($busca);
    if($password === $cadastro['senhaAluno']){
      echo "bem vindo";
      $_SESSION['login'] = true;
      $target = "location:telaperfilprofessor.php";
      }else{
        $msg = "Email ou senha incorretos!";
        $target = "location:login.php";
      }
      }else{
        $msg = "Email ou senha incorretos!";
        $target = "location:login.php";
      }
      $_SESSION['msg'] = $msg;
      header($target);