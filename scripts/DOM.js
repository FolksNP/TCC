function alterar(alterar){
    alter = document.querySelector('#direitaPerfilInfs') ;
    alterCursos = document.querySelector('#direitaPerfilCursos');
    alterEstatisticas = document.querySelector('#direitaPerfilEst');
    alterarPerfil = document.querySelector('#direitaPerfilAlterar');

    

if(alterar == 'cursos'){
    alterCursos.style.display = "block";
    alter.style.display = "none";
    alterEstatisticas.style.display = "none";
    alterarPerfil.style.display = "none";
}
if(alterar == 'perfil'){          
    alterCursos.style.display = "none";
    alterEstatisticas.style.display = "none";
    alterarPerfil.style.display = "none";
    alter.style.display = "block";
}
if(alterar == 'alterPerfil'){          
    alterCursos.style.display = "none";
    alterEstatisticas.style.display = "none";
    alter.style.display = "none";
    alterarPerfil.style.display = "block";
}
if(alterar == 'est'){           
    alterCursos.style.display = "none";
    alter.style.display = "none";
    alterarPerfil.style.display = "none";
    alterEstatisticas.style.display = "block";
}
}