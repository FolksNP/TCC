<div class="direitaPerfil" id="direitaPerfilInfs">
            <div class="nomeEmail" id="nomeEmail">
                <div class="nomePerfil" id="nomePerfil">
                    <p>Nome</p>
                    <?php echo "<p>$_SESSION[nome]</p>";?>
                </div>
                <div class="emailPerfil" id="emailPerfil">
                    <p>Email</p>
                    <?php echo "<p>$_SESSION[email]</p>";?>
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
            <div class="estat">
                <div class="estatTxt">Estatísticas</div>
                <div class="resp-perg-aulas-exe" id="resp-perg-aulas-exe" >
                    <div class="estPerfil">
                        <p>Respostas</p>
                        <p>0</p>
                    </div>
                    <div class="estPerfil">
                        <p>Mentiras Contadas</p>
                        <p>21168413</p></div>
                    <div class="estPerfil">
                        <p>Aulas Assistidas</p>
                        <p>0</p></div>
                    <div class="estPerfil">
                        <p>Exercícios Conluidos</p>
                        <p>0</p></div>

                    </div>
            </div>
            <div class="desc" id="descPerfil">
                <p>Descrição</p>
                <p>Tiringa (apelido de Vicente) é um cabra da peste que mora em Serra Talhada, Pernambuco e que só vive com um pau palito na boca.
                    É gago, bruto e o maior mentiroso que já existiu, diz que já matou todo tipo de bicho (até um tal de "Chucupira") e já enfrentou
                    várias criaturas bizonhas mas é mais mole que pinto de velho e morre de medo de "pantarma", as pegadinhas do seu patrão Charlles
                    Rekson provam isso. Também vale ressaltar que não gosta de tomarbanho e fede igual a um cu de gambá.</p>
            </div>
            <div class="redeSociais">
                <img src="../imgs/facebook.png" alt="">
                <img src="../imgs/instagram.png" alt="">
                <img src="../imgs/youtube.png" alt="">
                <img src="../imgs/linkedin.png" alt="">
                <img src="../imgs/twitter.png" alt="">
            </div>
</div>
