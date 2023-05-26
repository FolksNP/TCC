<?php require('connect.php');
        require('sec.php'); ?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <title>Matrículas</title>
</head>
<body>
    
    <?php @session_start();
  //  @$_SESSION['codCurso'];
    $cod = $_GET['codCurso'];
    $codAlunoMat = $_SESSION['cod'];
    $matriculas = mysqli_query($con,"SELECT * FROM `cursos` WHERE `codCurso` = '$cod' " );
    $matricula = mysqli_fetch_array($matriculas);

    $alunos = mysqli_query($con,"SELECT * FROM `alunos` WHERE `codAluno` = '$codAlunoMat' " );
    $aluno = mysqli_fetch_array($alunos);

    $codCursoMatricula = $matricula['codCurso'];

    
    include('header.php');
    ?>
    <div class="matriculaPag">
        <div class="matriculaForm">
            
    <form action="matricula.act.php" method="post" enctype="multipart/form-data">
            <input type="text" name="cursoMat" value = "<?php echo @$matricula['codCurso']; ?>">
            <input type="text" name= "alunoMat" value="<?php echo @$aluno['codAluno']; ?>">

        <?php echo" <h2>Ótima Escolha de curso! Tem certeza que deseja se inscrever no curso $matricula[nomeCurso] ? </h2> 
                 <div class=capaCurso>
                 <img src=$matricula[capaCurso]>                    
                 </div>
                    
                    <p class=descCurso>$matricula[descCurso]</p>
                    
                    
                    ";?>
                    <div class="dataMat">
                    <input type="date" name="dataCurso" value="2023-05-09" required="required">

                    </div>
                    <div class="btnsMat">
                    <?php echo "<a href=telaCurso.php?codCurso=$matricula[codCurso]><input type=button value=Voltar></a>" ?>
                    <input type="submit" value="Inscrever-se">
                    </div>
                </form>
                </div>
            </div>
    <?php include('footer.php'); ?>
</body>
</html>