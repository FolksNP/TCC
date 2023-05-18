<div class="direitaPerfil" id="direitaPerfilInfs">
            <div class="nomeEmail" id="nomeEmail">
                <div class="nomePerfil" id="nomePerfil">
                    <p id="">Nome</p>
                    <?php echo "<p id=apres-perf>$_SESSION[nome]</p>";?>
                </div>
                <div class="emailPerfil" id="emailPerfil">
                    <p id="">Email</p>
                    <?php echo "<p id=apres-perf>$_SESSION[email]</p>";?>
                </div>
            </div>
            <div class="estudos" >
                <div class="estudosTxt"><p>Estudos</p></div>
                    <div class="cursandoTerminados" id="estudos">
                    <div class="cursando">
                        <p>Cursando</p> 
                        <div class="cursandoImgs">


                        <?php
                          $codAluno = $_SESSION['cod'];
                          $codProf = $_SESSION['codProf'];
                          @$cursos = $_SESSION['codCurso'];
                          
                          $cursos = mysqli_query($con, "SELECT * FROM `cursos` INNER JOIN `matriculas` 
                          ON cursos.codCurso = matriculas.matriculaCursos WHERE matriculas.matriculaAlunos = '$_SESSION[cod]'");
                            //   var_dump($cursos);
                          while($curso = mysqli_fetch_array($cursos)){
                            $cursoCapa = $curso['capaCurso'];
                              echo "<a href=tela.video.php?codCurso=$curso[codCurso]&capaCurso=$curso[capaCurso]&nomeCurso=$curso[nomeCurso] ><img src= $curso[capaCurso]></a>";
                            }
    
    
        
       // var_dump($curso)
        ?>
                       
                       
                        </div>
                        
                    </div>
                    <div class="terminados">
                        <p>Terminados</p>
                        <div class="terminadosImgs">
                        <?php
                          $codProf = $_SESSION['cod'];
                          @$cursos = $_SESSION['codCurso'];
                          
                          $terminando = mysqli_query($con, "SELECT * FROM `cursos` INNER JOIN `matriculas` 
                          ON cursos.codCurso = matriculas.matriculaCursos WHERE matriculas.matriculaAlunos = '$_SESSION[cod]'");
                        while($terminado = mysqli_fetch_array($terminando)){
            echo "<a href=tela.video.php?codCurso=$terminado[codCurso]&capaCurso=$terminado[capaCurso]&nomeCurso=$terminado[nomeCurso] ><img src= $terminado[capaCurso]></a>";
    
        } 
        ?></div>
                        </div>
                        </div>
            </div>
            <div class="estat" id="estati">
                <div class="estatTxt">Estatísticas</div>
                <div class="resp-perg-aulas-exe" id="resp-perg-aulas-exe" >
                    <div class="estPerfil">
                        <p>Perguntas</p>
                        <p>0</p>
                    </div>
                    <div class="estPerfil">
                        <p>Respostas</p>
                        <p>0</p></div>
                    <div class="estPerfil">
                        <p>Aulas Assistidas</p>
                        <p>0</p></div>
                    <div class="estPerfil">
                        <p>Exercícios Concluídos</p>
                        <p>0</p></div>

                    </div>
            </div>
            <div class="desc" id="descPerfil">
                <p>Descrição</p>
                <p>Olá, seja bem-vindo ao seu perfil! Sinta-se livre para se inscrever em um curso da sua escolha, ou cadastrar um novo caso seja professor. Aqui é onde você conta um pouco mais sobre você, aproveite a estadia!
                </p>
            </div>
            <div class="redeSociais">
                <img src="../imgs/facebook.png" alt="">
                <img src="../imgs/instagram.png" alt="">
                <img src="../imgs/youtube.png" alt="">
                <img src="../imgs/linkedin.png" alt="">
                <img src="../imgs/twitter.png" alt="">
            </div>
</div>
<script type="module" src="http://localhost:8080/tema"></script>