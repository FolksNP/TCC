<?php require('sec.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
    <title>Seu perfil - Patrono Neves</title>
</head>
<body>

    <?php
        include('header.php');
        @session_start();
        $cod= $_SESSION['cod'];
        $nome= $_SESSION['nome'];

        require('connect.php');
        $perfil = mysqli_query($con, "Select * from `alunos` where `codAluno` = '$cod'");
        $perfil=mysqli_fetch_array($perfil);
    ?></a>
    <div class="pagTodaPerfil" id="pagProf">
        <div class="colunaEsquerdaPerfil" id="colEsq">

            
            <div class="fotoPerfil" id="fotoPerfil">
                    <?php echo "<img src= $_SESSION[foto]>";?>
                    <?php echo "<p>$_SESSION[nome]</p>";?>
                    <p>Desde 01/06/2004</p>
            </div>

            <?php include('perfilListaAcoes.php') ?>
        </div>
        <!-- <div class="direitaPerfi"> -->
       <?php include('alterarPerfil.php'); ?>
       <?php include('perfilEst.php'); ?>
       <?php include('perfilInfs.php'); ?>
       <?php include('perfilCursos.php'); ?>
       <?php include('acessibilidade.php'); ?>
        <!-- </div> -->
    </div>

    <?php
    include('footer.php');
    ?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>

<script>
$(document).ready(function(){
     $('#cpf').mask('000.000.000-00');
     
});
</script>
</body>
</html>