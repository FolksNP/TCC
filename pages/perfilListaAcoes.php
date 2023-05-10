
<div class="edit" onclick="alterar('alterPerfil')" ><img src="../imgs/edit.png" alt=""><p>Alterar</p></div>
    <div class="listaAcoes" id="listaAcoes">
      <?php
                    @session_start();
                    $codProf = $_SESSION['cod'];
                    $buscaTabProf = mysqli_query($con, " SELECT * FROM `professores` where `codProfessor` = '$codProf' " );
                    $tabProf = mysqli_fetch_array($buscaTabProf);
                    # code...
                    if (@$tabProf['codProfessor'] == @$codProf ) {
                      echo "<p class =txtIfProf>Olá Professor $_SESSION[nome]</p>";
                      echo"<a href=cadCurso.php><input type=button value=\"Cadastrar Curso\"></a>";
                    }else{
                      
                      echo "<button id=btnCadProf class=btnCurso>Tornar-se Professor</button>";
                    }
                    
                    ?>
                    <div onclick="alterar('perfil')" ><img src="../imgs/perfilAluno.png" alt=""><p>Perfil</p></div>
                    <div onclick="alterar()"><img src="../imgs/notificacaoAluno.png" alt=""><p>Notificações</p></div>
                    <div onclick="alterar('cursos')"><img src="../imgs/certificado.png" alt=""><p> Cursos</p></div>
                    <div onclick="alterar('est')"><img src="../imgs/est.png" alt=""><p>Estatísticas</p></div>
                    <div onclick="alterar()"><img src="../imgs/acessibilidade.png" alt=""><p>Acessibilidade</p></div>
                    <div><img src="../imgs/sairAluno.png" alt=""><a href="login.php"> Sair</a></p></div>
            </div>
            
            <div id="myModal" class="modal">

<!-- Modal content -->
<div class="modal-content">
  <span class="close">&times;</span>
  <div class="cadCursoModal">
    <?php include('cadProfessor.php'); ?>
    <img src="../imgs/set.png" alt="">
  </div>
</div>

</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script src="../scripts/DOM.js"> 
</script>
<script src="../scripts/cadProfessor.js"></script>