<?php
    if(!$con=mysqli_connect('localhost','root','','tcc')){
        echo "Erro ao acessar a base de dados";
    }
    mysqli_query($con,"SET NAMES utf8");
?>