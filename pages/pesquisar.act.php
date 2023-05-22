<?php

$texto = $_GET['texto'];
var_dump($texto);

require('connect.php');
$pesquisas = mysqli_query($con, "Select * from `cursos` where `nomeCurso` like '%$texto%'");

while($pesquisa=mysqli_fetch_array($pesquisas)){
    echo "<div class=tudoPesquisa>";
    
    echo "<p>$pesquisa[nomeCurso]</p>";
    echo "<p><img src=$pesquisa[capaCurso]></p>";
    echo "<p></p>";


    echo "</div>";
}
?>