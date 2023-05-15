<?php
    session_start();
    require('connect.php');

    extract($_POST);
    extract($_FILES);

    if($_SESSION['captcha'] == $_POST['captcha']){
        $_SESSION['msgCap'] = "<h3 style='color:green;'>Usuário cadastrado com sucesso<h3>";
        header("Location: index.php");
    }else{
        $_SESSION['msgCap'] = "<h3 style='color:red;'>ERRO! Captcha inválido.<h3>";
        header("Location: index.php");
    }

