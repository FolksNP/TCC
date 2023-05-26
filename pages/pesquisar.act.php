<?php

$texto = $_GET['texto'];

require('connect.php');
$pesquisas = mysqli_query($con, "Select * from `cursos` where `nomeCurso` like '%$texto%'");


echo "<div class=pagPesquisa>";
    while($pesquisa=mysqli_fetch_array($pesquisas)){

        echo "<div class=boxPesquisa>
            <a href=telaCurso.php?codCurso=$pesquisa[codCurso]>
                <p>$pesquisa[nomeCurso]</p>
                <p><img src=$pesquisa[capaCurso]></p>
            </a>
        </div>";
    }
    echo "</div>";
?>