<script> function alterar(alterar){
            alter = document.querySelector('#direitaPerfilProfessorInfs') ;
            alterCursos = document.querySelector('#direitaPerfilProfessorCursos');
            alterEstatisticas = document.querySelector('#direitaPerfilProfessorEst');


        if(alterar == 'cursos'){
            alterCursos.style.display = "block";
            alter.style.display = "none";
            alterEstatisticas.style.display = "none";
        }
        if(alterar == 'perfil'){          
            alterCursos.style.display = "none";
            alterEstatisticas.style.display = "none";
            alter.style.display = "block";
        }
        if(alterar == 'est'){           
            alterCursos.style.display = "none";
            alter.style.display = "none";
            alterEstatisticas.style.display = "block";
        }
}
</script>
    <div class="listaAcoesProfessor">
                    <div onclick="alterar('perfil')" ><img src="../imgs/perfilAluno.png" alt=""><p>Perfil</p></div>
                    <div onclick="alterar()"><img src="../imgs/notificacaoAluno.png" alt=""><p>Notificações</p></div>
                    <div onclick="alterar('cursos')"><img src="../imgs/certificado.png" alt=""><p> Cursos</p></div>
                    <div onclick="alterar('est')"><img src="../imgs/est.png" alt=""><p>Estatísticas</p></div>
                    <div onclick="alterar()"><img src="../imgs/acessibilidade.png" alt=""><p>Acessibilidade</p></div>
                    <div><img src="../imgs/sairAluno.png" alt=""><a href="login.php"> Sair</a></p></div>
            </div>