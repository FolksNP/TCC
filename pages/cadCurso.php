<!DOCTYPE html>
<html lang ="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="../styles/css/main.css">
  <meta name="viewport" content="width-device-width, initial-scale=1.0">
  <link rel="icon" type="image/png" sizes="32x32" href="../imgs/logoTCC.png">
  <title>Patrono Neves - Cursos</title>
</head>
<body>
  <?php 
    session_start();
    include('header.php');
    ?>
  <!-- Trigger/Open The Modal -->
 <div class="allPageCadCurso">
    <div class="topCadCurso">
      <img src="../imgs/note.png" alt="">
      <img src="../imgs/lampada.png" alt="">
    </div>
    <div class="centerCadCurso">
      <h2>Distribua seu conhecimento e eleve a educação à outro nível!</h2>
      <button class="btnCurso">Cadastrar Curso</button>
      
    </div>
    <div class="bottomCadCurso">
      <img src="../imgs/feed.png" alt="">
    </div>

 </div>
<?php include('footer.php') ?>
<script src="../scripts/cadCurso.js"></script>
</body>
</html>