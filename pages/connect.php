<?php
if (!$con = mysqli_connect('localhost', 'root', '', 'patrononeves')) {
    echo "ERRO";
}
mysqli_query($con, "SET NAMES utf8");