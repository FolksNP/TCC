<?php
require('connect.php');
extract($_POST);
$password = md5($password);
$busca = mysqli_query($con, "Select * from `alunos` where `emailAluno` = '$email'");
$cod= $_SESSION['cod'];

session_start();


    if($busca-> num_rows == 1){
    $cadastro = mysqli_fetch_array($busca);
    if($password === $cadastro['senhaAluno']){
      echo "bem vindo";
      $_SESSION['login'] = true;
      $_SESSION['foto'] = $cadastro['fotoAluno'];
      $_SESSION['cod'] = $cadastro['codAluno'];
      $_SESSION['nome'] = $cadastro['nomeAluno'];
      $_SESSION['email'] = $cadastro['emailAluno'];
      $target = "location:inicial.php";
      $msg = "logado";
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