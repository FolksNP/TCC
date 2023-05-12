<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <title>Document</title>
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
       <h2>Insira abaixo a aula do seu curso</h2>
       <input type="file" name="videoAula" id='videoUpload'>
       <video id="videoPreview" controls>
  Your browser does not support the video tag.
</video>

       <input type=submit>
       
</form>


<script>
    document.getElementById("videoUpload")
.onchange = function(event) {
  let file = event.target.files[0];
  let blobURL = URL.createObjectURL(file);
  document.querySelector("video").src = blobURL;
  document.getElementById('videoPreview').style.background = red;
}
</script>
<?php include('footer.php'); ?>
</body>
</html>