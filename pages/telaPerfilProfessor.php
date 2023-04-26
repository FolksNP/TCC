<?php require('sec.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
    <title>Professor</title>
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
    <div class="pagTodaPerfilProfessor" id="pagProf">
        <div class="colunaEsquerdaPerfilProfessor" id="colEsq">

            
            <div class="fotoPerfilProfessor" id="fotoPerfil">
                    <?php echo "<img src= $_SESSION[foto]>";?>
                    <?php echo "<p>$_SESSION[nome]</p>";?>
                    <p>Desde 01/06/2004</p>
            </div>
            <?php include('perfilProfessorListaAcoes.php') ?>
        </div>
        <!-- <div class="direitaPerfilProfessor"> -->
       <?php include('alterarPerfil.php'); ?>
       <?php include('perfilProfessorEst.php'); ?>
       <?php include('perfilProfessorInfs.php'); ?>
       <?php include('perfilProfessorCursos.php'); ?>
        <!-- </div> -->
    </div>

    <?php
    include('footer.php');
    ?>

</body>
</html>