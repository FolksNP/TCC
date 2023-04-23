<?php
if (!$con = mysqli_connect('localhost', 'root', '', 'patrono-neves')) {
    echo "ERRO";
}
mysqli_query($con, "SET NAMES utf8");