<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    

<form action="aula.act.php" method="post" enctype="multipart/form-data">

    <?php 
    session_start();
    var_dump($_GET['codCurso']); 

    $codigoCurso = $_GET['codCurso'];
       echo" <input type=text name=codCurso value=$codigoCurso >";
       ?>
       <input type="file" name="videoAula">
       <input type=submit>
       
</form>
</body>
</html>