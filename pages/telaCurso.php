<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
    <title>Curso</title>
</head>
<body>
<?php
    include ('header.php');
    @session_start();
    //include ('banner.php');
    $cod = $_GET['codCurso'];
    $cursos = mysqli_query($con, "Select * from `cursos` where `codCurso` = $cod");
    $curso = mysqli_fetch_array($cursos);
?>
        <div class="fundoCinza">
            <div class="txt">
                <?php 
                    echo "<h2>Adentre no Curso $curso[nomeCurso],
                    Invista na sua carreira!</h2>
                    <p>$curso[descCurso]</p>"
                    ?>
            </div>
            <div class="btnInscrevase">

              <?php echo "<a href=matricula.php?codCurso=$curso[codCurso]>  <input type=button value=INSCREVA-SE></a> ";?>

            </div>
        
        </div>
        <div class="videoCurso">
           <!-- <img src="../imgs/java2.jpg" alt=""> -->
            <?php echo "<img src= $curso[capaCurso] >"?>
        </div>
        <div class="fundoPreto">
            <div class="txt">
            <h2>Metodologias</h2>
            <div class="interatividades">
                <div class="imgTxt">
                <img src="../imgs/pica-pau.jpg" alt=""><div class="txtInt"><p>INTERATIVIDADE</p><p>Manoel Jardim Gomes, mais conhecido como Manoel Gomes, é um cantor e compositor brasileiro de brega. É conhecido por criar a música "Caneta Azul", que se tornou um meme da Internet.</p></div>
                </div>
                <div class="imgTxt">
                <img src="../imgs/pica-pau.jpg" alt=""><div class="txtInt"><p>INTERATIVIDADE</p><p>Manoel Jardim Gomes, mais conhecido como Manoel Gomes, é um cantor e compositor brasileiro de brega. É conhecido por criar a música "Caneta Azul", que se tornou um meme da Internet.</p></div>
                </div>
                <div class="imgTxt">
                <img src="../imgs/pica-pau.jpg" alt=""><div class="txtInt"><p>INTERATIVIDADE</p><p>Manoel Jardim Gomes, mais conhecido como Manoel Gomes, é um cantor e compositor brasileiro de brega. É conhecido por criar a música "Caneta Azul", que se tornou um meme da Internet.</p></div>
                </div>
            </div>
        </div>
    </div>
    <div class="fundoCinza2">
        <div class="comentarios">
            <h3>Comentários</h3>
        </div>
        <div class="coment">
            <div class="perfilComent"><img src="../imgs/html.jpg" alt=""><p>Benjamin Arola</p></div>
             <div class="comentP"> <p>Manoel Jardim Gomes, mais conhecido como Manoel Gomes, </p></div> 
        </div>
        <div class="coment">
            <div class="perfilComent"><img src="../imgs/html.jpg" alt=""><p>Benjamin Arola</p></div>
             <div class="comentP"> <p>Manoel Jardim Gomes, mais conhecido como Manoel Gomes, </p></div> 
        </div>
        <div class="coment">
            <div class="perfilComent"><img src="../imgs/html.jpg" alt=""><p>Benjamin Arola</p></div>
             <div class="comentP"> <p>Manoel Jardim Gomes, mais conhecido como Manoel Gomes, </p></div> 
        </div>
    </div>


    <div class="fundoPreto2">
        <div class="svg">
            <img src="../imgs/story.png" alt="">
        </div>
        <div class="btnEntrar">
            <input type="button" value="Começar Agora">
        </div>
    </div>
    <?php include('footer.php') ?>
</body>
</html>