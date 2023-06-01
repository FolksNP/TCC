function alterar(alterar){
    alter = document.querySelector('#direitaPerfilInfs') ;
    alterCursos = document.querySelector('#direitaPerfilCursos');
    alterEstatisticas = document.querySelector('#direitaPerfilEst');
    alterarPerfil = document.querySelector('#direitaPerfilAlterar');
    acessibilidade = document.querySelector('#acesso');
    atividade = document.querySelector("#atividades")
    

if(alterar == 'cursos'){
    alterCursos.style.display = "block";
    alter.style.display = "none";
    alterEstatisticas.style.display = "none";
    alterarPerfil.style.display = "none";
    acessibilidade.style.display = "none";
    atividade.style.display = "none";
}
if(alterar == 'perfil'){          
    alterCursos.style.display = "none";
    alterEstatisticas.style.display = "none";
    alterarPerfil.style.display = "none";
    alter.style.display = "block";
    acessibilidade.style.display = "none";
    atividade.style.display = "none";
}
if(alterar == 'alterPerfil'){          
    alterCursos.style.display = "none";
    alterEstatisticas.style.display = "none";
    alter.style.display = "none";
    alterarPerfil.style.display = "block";
    acessibilidade.style.display = "none";
    atividade.style.display = "none";
}
if(alterar == 'est'){           
    alterCursos.style.display = "none";
    alter.style.display = "none";
    alterarPerfil.style.display = "none";
    alterEstatisticas.style.display = "block";
    acessibilidade.style.display = "none";
    atividade.style.display = "none";
}
if(alterar == 'atv'){
    alterCursos.style.display = "none";
    alter.style.display = "none";
    alterarPerfil.style.display = "none";
    alterEstatisticas.style.display = "none";
    acessibilidade.style.display = "none";
    atividade.style.display = "block";
}
if(alterar == 'acess'){           
    alterCursos.style.display = "none";
    alter.style.display = "none";
    alterarPerfil.style.display = "none";
    alterEstatisticas.style.display = "none";
    acessibilidade.style.display = "block";
    atividade.style.display = "none";
}
}