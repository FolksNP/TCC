function darkMode(){

    corDark = "rgb(34, 34, 34)";
    corDark2 = "#686868";
    corLight = "#f3f3f3";


    btnTema = document.getElementById("switch-shadow")
    banner = document.getElementById("banner");
    loginPag = document.getElementById("tudoLogin");
    perfil = document.getElementById("pagProf");
    cursosArea = document.getElementById("cursosArea");
    linkFooter = document.getElementById("linkFooter");
    linksUteis = document.getElementById("linksUteis");
    product = document.getElementById("product");
    if(btnTema.checked){

        document.querySelector('body').style.background = 'linear-gradient(50deg, '+corDark2+', black )';
        document.getElementById("footer").style.color='white';  
        document.getElementById("footer").style.backgroundColor= corDark;
        document.getElementById("navbar").style.backgroundColor= corDark;
        
        if(banner){

            document.getElementById("banner").style.backgroundColor= corDark;  
            document.getElementById("buscaCurso").style.backgroundColor= corDark;
            document.getElementById("banner").style.color='white';
            document.getElementById("buscaCurso").style.color='white';
         }
         if(loginPag){
            document.getElementById("tudoLogin").style.backgroundColor= corDark;
         }
         if(product){
            document.getElementById("product").style.backgroundColor= corDark;
            document.getElementById("product").style.color= 'white';
            document.getElementById("product").children[0].style.color= 'white';
            document.getElementById("product").children[1].style.backgroundColor = 'red';
            
         }
         if(perfil){
            document.getElementById("pagProf").style.backgroundColor= corDark2;
            document.getElementById("fotoPerfil").style.backgroundColor= corDark2;
            document.getElementById("listaAcoes").style.backgroundColor= corDark2;
            document.getElementById("colEsq").style.backgroundColor= corDark;
            document.getElementById("nomeEmail").style.backgroundColor= corDark;
            document.getElementById("estudos").style.backgroundColor= corDark;
            document.getElementById("estudos").style.color= 'white';
            nome = document.getElementById("nomePerfil");
            nome.children[0].style.color= 'white';
            nome.children[1].style.backgroundColor= corDark2;
            
            email = document.getElementById("emailPerfil");
            email.children[0].style.color= 'white';
            email.children[1].style.backgroundColor= corDark2;

            document.getElementById("resp-perg-aulas-exe").style.backgroundColor= corDark;
            document.getElementById("descPerfil").children[1].style.backgroundColor= corDark;
            document.getElementById("descPerfil").children[1].style.color= 'white';
            document.querySelectorAll(".estPerfilProfessor")[0].style.backgroundColor = corDark2;
            document.querySelectorAll(".estPerfilProfessor")[1].style.backgroundColor = corDark2;
            document.querySelectorAll(".estPerfilProfessor")[2].style.backgroundColor = corDark2;
            document.querySelectorAll(".estPerfilProfessor")[3].style.backgroundColor = corDark2;
            
        }
        if(cursosArea){
            for (i = 0; i < 5; i++) {

                document.getElementById("cursosArea").children[i].style.backgroundColor= corDark;
                
            }
           
        }
        if(linkFooter){
             for (i = 0; i < 5; i++) {

                document.getElementById("linkFooter").children[i].children[0].style.color = 'white';     
               
                   
             }
         }
         if(linksUteis){
            for (i = 0; i < 5; i++) {
    
               document.getElementById("linksUteis").children[i].children[0].style.color = 'white';     
              
                  
            }
        }

}
else{
    document.querySelector('body').style.background = 'linear-gradient(50deg, #C9FBFA , rgba(48, 238, 226, 1), #002B5C )';
    document.getElementById("navbar").style.backgroundColor='white';
    document.getElementById("footer").style.backgroundColor='white';
    document.getElementById("footer").style.color='black';
    document.getElementById("navbar").style.color='black';

    if(banner){

        document.getElementById("banner").style.backgroundColor='white';
        document.getElementById("buscaCurso").style.backgroundColor='white';
        document.getElementById("banner").style.color='black';
        document.getElementById("buscaCurso").style.color='black';
    }
    if (loginPag) {

        document.getElementById("tudoLogin").style.backgroundColor='white';
    }
    if(perfil){
        document.getElementById("pagProf").style.backgroundColor= corLight;
        document.getElementById("fotoPerfil").style.backgroundColor= corLight;
        document.getElementById("listaAcoes").style.backgroundColor= corLight;
        document.getElementById("colEsq").style.backgroundColor= 'white';
        document.getElementById("nomeEmail").style.backgroundColor= 'white';
        document.getElementById("estudos").style.backgroundColor= 'white';
        document.getElementById("estudos").style.color= 'white';
        nome = document.getElementById("nomePerfil");
        nome.children[0].style.color= 'black';
        nome.children[1].style.backgroundColor= corLight;
        
        email = document.getElementById("emailPerfil");
        email.children[0].style.color= 'black';
        email.children[1].style.backgroundColor= corLight;

        document.getElementById("resp-perg-aulas-exe").style.backgroundColor= 'white';
        document.getElementById("descPerfil").children[1].style.backgroundColor= 'white';
        document.getElementById("descPerfil").children[1].style.color= 'black';
        document.querySelectorAll(".estPerfilProfessor")[0].style.backgroundColor = corLight;
        document.querySelectorAll(".estPerfilProfessor")[1].style.backgroundColor = corLight;
        document.querySelectorAll(".estPerfilProfessor")[2].style.backgroundColor = corLight;
        document.querySelectorAll(".estPerfilProfessor")[3].style.backgroundColor = corLight;
        
    }
    if(cursosArea){
        for (i = 0; i < 5; i++) {

            document.getElementById("cursosArea").children[i].style.backgroundColor= corLight;
            
        }
       
    }
    if(linkFooter){
        for (i = 0; i < 5; i++) {

           document.getElementById("linkFooter").children[i].children[0].style.color = 'black';     
          
              
        }
    }
    if(linksUteis){
        for (i = 0; i < 5; i++) {

           document.getElementById("linksUteis").children[i].children[0].style.color = 'black';     
          
              
        }
    }

    }

}