<link rel="stylesheet" href="../styles/css/main.css">
<?php 
include('header.php');
@session_start();
$codCurso = $_SESSION['codCursoAula'];
$numeracaoCurso = $_SESSION['numeracaoCurso'];
var_dump($codCurso);
var_dump($numeracaoCurso);


?>
<body>
    
    <form action="conteudo.act.php" method="post" enctype="multipart/form-data">
        
        <p><input type="text" name="tituloConteudo"><p> título</p></p>
        <p><input type="text" name="descConteudo"> <p>descrição do conteudo</p></p>
        <?php echo "<p> <input type=hidden name=codCurso value=$codCurso> </p>";  ?>
        <?php echo "<p> <input type=hidden name=numeracaoCurso value=$numeracaoCurso> </p>";  ?>
        
        <input type="submit">
        
    </form>
</body>