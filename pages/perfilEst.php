<div class="direitaPerfil" id="direitaPerfilEst">
<div class="topoEst">
    <div><p>Estatísticas Do Curso</p></div>
    <p><input type="text" placeholder="Pesquise Aqui"><img src="../imgs/lupa.png" alt=""></p>
</div>
<div class="selecioneCurso">
    <div class="selecioneCursoTxt"><p>Selecione o Curso</p></div>
    <div class="selecioneCursoImg" id="selecioneCursoImg">
    <?php $cursos = mysqli_query($con, "SELECT * FROM `cursos` WHERE `professor` = $codProf ");
    
    while($curso = mysqli_fetch_array($cursos)){
        echo "<a href=telaCurso.php?codCurso=$curso[codCurso] ><img src= $curso[capaCurso]></a>";

    }; ?>
    </div>
</div>
<div class="estCursos" id="estCursos">
<div class="estAlunos" id="estAlunos">
    <div class="estAlunosTxt">Alunos</div>
        <div class="estAlunosInfs" id="estAlunosInfs">
            
            <div><p>Alunos Ativos</p> <p>0</p></div>
            <div><p>Alunos Graduados</p> <p>0</p></div>
            <div><p>Novos Alunos Essa Semana</p><p>0</p></div>
            <div><p>Total de Alunos</p><p>0</p></div>
            
        </div>
</div>
<div class="estViews">
    <div class="estViewsTxt">Visualizações</div>
            <div class="estViewsInfs" id="estViewsInfs">
                <div><p>Total de Visualizações</p><p>0</p></div>
                <div><p>Média de Visualizações</p><p>0</p></div>
                <div><p>Visualizações Essa Semana</p><p>0</p></div>
                <div><p>Total de horas Assistidas</p><p>0</p></div>
            </div>
</div>

<div class="estAvaliacoes">
    <div class="estAvaliacoesTxt">Avaliações</div>
        <div class="estAvaliacoesInfs" id="estAvaliacoesInfs">
            <div><p>Nota média por Sessão</p><p>0</p></div>
            <div><p>Média Total de Avaliações</p><p>0</p></div>
            <div><p>Avaliações Essa Semana</p><p>0</p></div>
            <div><p>Total de Visualizações</p><p>0</p></div>
        </div>
</div>

</div>
</div>