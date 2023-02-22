<?php
require('connect.php');
extract($_POST);
$senha = md5($senha);
$busca = mysqli_query($con, "Select * from `users` where `email` = '$email'");
    
    session_start();

    if($busca-> num_rows == 1){
         $cadastro = mysqli_fetch_array($busca);
    if($senha === $cadastro['Senha']){
      $_SESSION['login'] = true;
      $target = "location:index.php";
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
    