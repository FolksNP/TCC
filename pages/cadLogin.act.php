<?php
        require('connect.php');
       // extract($_FILES);
        extract($_POST);
        $senha = md5($senha);
      //  $arquivo = "imgs/".md5(time().$foto['size']). ".jpg";
         //   move_uploaded_file($foto['tmp_name'],$arquivo);

        if (mysqli_query($con, "INSERT INTO `users` (`codUser`,`Nome`, `Email`, `Senha`,`Usuario`)
         VALUES (NULL, '$name','$email', '$senha', '$usuario');")){
        $msg = "Cadastrado com sucesso!";
  }else{
        $msg = "Erro ao gravar";
       }
echo $msg;
echo mysqli_error($con);
session_start();
$_SESSION['msg'] = $msg;
header("location:index.php");



?>