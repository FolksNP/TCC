<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <title>Professor</title>
</head>
<body>
    <?php
        include('header.php');
    ?>
    <div class="pagTodaPerfilProfessor">
        <div class="colunaEsquerdaPerfilProfessor">
            <div class="fotoPerfilProfessor">
                    <img src="../imgs/tiringa.jpg" alt="">
                    <p>Tiringa Pai Da Mentira</p>
                    <p>Desde 02/05/1965</p>
            </div>
            <?php include('perfilProfessorListaAcoes.php') ?>
        </div>
        <!-- <div class="direitaPerfilProfessor"> -->
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