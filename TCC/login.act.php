<?php
require('connect.php');
extract($_POST);

$busca = mysqli_query($con, "Select * from `xxx` where `xxx` = '$xxx'");
    
    session_start();

    if($busca-> num_rows == 1){
    $cadastro = mysqli_fetch_array($busca);
    if($senha === $cadastro['senha']){
      echo "Ohayogozaimasu";
      $_SESSION['login'] = true;
      $target = "xxx";
      }else{
        $msg = "Email ou senha incorretos!";
        $target = "xxx";
      }
      }else{
        $msg = "Email ou senha incorretos!";
        $target = "xxx";
      }
      $_SESSION['msg'] = $msg;
      header($target);