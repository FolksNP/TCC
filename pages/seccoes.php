<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- <link rel="stylesheet" href="../styles/css/main.css"> -->
    <title>Cadastrar uma seção</title>
</head>
<body>
<?php 
    session_start();
    $codCurso = $_GET['codCurso'];
?>
    <form action="seccoes.act.php" method="post" enctype="multipart/form-data">

        <?php echo " <input type=hidden value=$codCurso name=curso id=>" ?>

        <p>Numeração</p>
        <input type="text" value="1" name="numeracao" id="">

        <p>Título da Seção</p>
        <input type="text" name="secTitulo" id=""><br><br>

        <input type="submit" value="Concluir">
        
    </form>
    
</body>
</html>