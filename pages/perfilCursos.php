
<div class="direitaPerfil" id="direitaPerfilCursos">
<div class="cursoTopo" id="cursoTopo">
    <div class="txtCursos">
        
        <p>Cursos</p>
        <p>Promoções</p>
        <button id="btnAula" >Adicionar</button>
        
        <p><img src="../imgs/lixeira.png" alt=""></p>
        
    </div>
    <div class="imgsCursos">
        <?php
        $codProf = $_SESSION['codProf'];
        @$cursos = $_SESSION['codCurso'];
        
        $cursos = mysqli_query($con, "SELECT * FROM `cursos` WHERE `professor` = $codProf ");
    
        while($curso = mysqli_fetch_array($cursos)){
            echo "<a href=aula.php?codCurso=$curso[codCurso] ><img src= $curso[capaCurso]></a>";
    
        };
    //    $cursos = mysqli_query($con, "SELECT `cursos.capaCurso`
    //     FROM `cursos` INNER JOIN `professorcurso` ON 'professorcurso.professor' = 'professores.codProfessor' ");
    //     var_dump($cursos);
    //    $curso = mysqli_fetch_array($cursos);
    //    echo $curso[''];

    // $cursos = mysqli_query($con,"SELECT * FROM `professorcurso` where `professor` = '$codProf'");
    // $curso = mysqli_fetch_array($cursos);
    // echo $curso['nivelCurso'];

  //echo $tes['codProfCurso'];


       ?>
  
    </div>


</div>
<div class="tudo-videos-atvd">
        <p>Todos</p>
        <p>vídeos</p>
        <p>atividades</p>
</div>

<div class="conteudosTelaCursos">
    <div class="topoConteudosCurso" id="topoConteudosCurso">
        <p><input type="checkbox">\/</p>
        <p>Adicionar</p>
        <p><input type="text" name="" id="" placeholder="Digite aqui sua pesquisa"><img src="../imgs/lupa.png" alt=""></p>
        <p><img src="../imgs/lixeira.png" alt=""></p>
        <p>+</p>
    </div>
    <details>
        <summary>Sessão 1.Introdução ao Java</summary>
       <div class="scrollCursos"> <p><input type="checkbox"><a href="../pages/inicial.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        <p><input type="checkbox"><a href="../pages/telaPerfil.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        <p><input type="checkbox"><a href="../pages/cursos.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        </div>
    </details>
    <details>
        <summary>Sessão 1.1 Atividades </summary>
        <div class="scrollCursos"> <p><input type="checkbox"><a href="../pages/inicial.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        <p><input type="checkbox"><a href="../pages/telaPerfil.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        <p><input type="checkbox"><a href="../pages/cursos.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        </div>
    </details>
    <details>
        <summary>Sessão 2.Java Basico</summary>
        <div class="scrollCursos"> <p><input type="checkbox"><a href="../pages/inicial.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        <p><input type="checkbox"><a href="../pages/telaPerfil.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        <p><input type="checkbox"><a href="../pages/cursos.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        </div>
    </details>
    <details>
        <summary>Sessão 3.Variáveis Java</summary>
        <div class="scrollCursos"> <p><input type="checkbox"><a href="../pages/inicial.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        <p><input type="checkbox"><a href="../pages/telaPerfil.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        <p><input type="checkbox"><a href="../pages/cursos.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        </div>
    </details>
    <details>
        <summary>Sessão 4.Funções Java</summary>
        <div class="scrollCursos"> <p><input type="checkbox"><a href="../pages/inicial.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        <p><input type="checkbox"><a href="../pages/telaPerfil.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        <p><input type="checkbox"><a href="../pages/cursos.php"><img src="../imgs/java.jpg" alt="">galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</a></p>
        </div>
    </details>
</div>
</div>

