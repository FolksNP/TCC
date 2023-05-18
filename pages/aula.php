<!DOCTYPE html>
<html lang="en">
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

            $codigoCurso = $_GET['codCurso'];
            echo" <input type=hidden name=codCurso value=$codigoCurso >";
        ?>
        <h3 id="progress-bar"></h3>
        <h2>Insira abaixo a aula do seu curso</h2>
        <input type="file" name="videoAula" id='videoUpload'>
        <video id="videoPreview" controls>
            Your browser does not support the video tag.
        </video>

        <input type=submit>
        
    </form>

    <script>
        let progressBar = document.getElementById('progress-bar')
        let upload = new plupload.Uploader({
            browse_button: 'videoUpload',
            url: 'aula.act.php',
            chuck_size: '1mb', // depois implementar um ajuste automático de chuck
            max_file_size: '120mb',
            filters: [
                { title: 'Vídeos', extensions: 'mp4'}
            ]
        },
        init: {
            FilesAdded: function(up, files) {
                up.start()
            }

            UploadProgress: function(up, files) {
                progressBar.textContent = `Progresso do upload: ${file.percent}%`
            }

            FileUploaded: function(up, files) {
                progressBar.textContent = 'Upload concluído'
            }

            Error: function(up, err) {
                progressBar.textContent = 'Erro ao realizar o upload'
                console.error(err)
            }
        })

        uploader.init()

        document.getElementById("videoUpload").onchange = function(event) {
            let file = event.target.files[0];
            let blobURL = URL.createObjectURL(file);
            document.querySelector("video").src = blobURL;
            document.getElementById('videoPreview').style.background = red;
        }
    </script>

    <?php include('footer.php'); ?>
</body>
</html>