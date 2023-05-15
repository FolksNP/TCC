<!DOCTYPE html>
<html lang ="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="../styles/css/main.css">
  <meta name="viewport" content="width-device-width, initial-scale=1.0">
  <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
  <title>Patrono Neves - Cursos</title>
</head>
<body>
  <script src="../scripts/cadCurso.js"></script>
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
      <button id="btnCurso" class="btnCurso">Cadastrar Curso</button>
    </div>
    <div class="bottomCadCurso">
      <img src="../imgs/feed.png" alt="">
    </div>
     <div class="pf-frase" style="display: flex">
         <h3 style="font-weight: unset">"Quem ensina aprende ao ensinar. E quem aprende ensina ao aprender." - Paulo Freire</h3>
     </div>
 </div>



<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <div class="cadCursoModal">
      <form action="cadCurso.act.php" method="post" enctype="multipart/form-data">
          <p><p>Nome do Curso</p><input type="text" name="nomeCurso" required="required"></p>
          <p><p>Descrição do curso</p><textarea name="descCurso" required="required" cols="30" rows="10"></textarea></p>
          <p>Nível</p><select name="nivelCurso" required="required">
            <option value="1"> Básico</option>
            <option value="2"> Intermediário</option>
            <option value="3">Avançado</option>
          </select>
          <p><p>Selecione uma capa para o curso</p><input type="file" name="capaCurso" id="imgInp"></p>
          <label for="imgInp">
          <img id="blah" src="../imgs/thumb.jpg" alt="your image" class="thumbCurso" />
          </label>
          <p><input type="submit" value="Cadastrar Curso" ></p>      
      </form>
      <img src="../imgs/set.png" alt="">
    </div>
  </div>

</div>
<?php include('footer.php') ?>
<script src="../scripts/cadCurso.js"></script>
<script>

  imgInp.onchange = evt => {
  const [file] = imgInp.files
  if (file) {
    blah.src = URL.createObjectURL(file)
  }
}</script>
</body>
</html>