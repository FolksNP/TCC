<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <title>Document</title>
    <script src="../libs/plupload-3.1.5/js/plupload.full.min.js"></script>
</head>
<body>
    <?php include('header.php'); ?>

    <form class="formVideoPreview" action="aula.act.php" method="post" enctype="multipart/form-data">

        <?php 
            @session_start();
            // var_dump($_GET['codCurso']); 

            @$codigoCurso = $_GET['codCurso'];
            echo" <input type=hidden name=codCurso value=@$codigoCurso >";
        ?>
        <div class="videoUpload" style="cursor: pointer; background: lightgray; margin-bottom: 10px;">
            <h3 id="progress-bar"></h3>
            <h2>Arraste e solte a aula do seu curso aqui</h2>
            <input type="file" name="videoAula" id="fileAula" style="opacity: 0;">
        </div>
        <video id="videoPreview" controls>
            Your browser does not support the video tag.
        </video>
        
        <input type="submit" value="Cadastrar Aula">
    </form>

    <script src="../scripts/aula.js"></script>

    <?php include('footer.php'); ?>
</body>
</html>