import { verifyConfig, verifyAlterarTema, verifyEstiloFonte } from "./shared"

const corDark = "rgb(0, 16, 23)";
const corDark2 = "#686868";
const corLight = "#f3f3f3";

const banner = document.getElementById("banner");
const loginPag = document.getElementById("tudoLogin");
const perfil = document.getElementById("pagProf");
const cursosArea = document.getElementById("cursosArea");
const linkFooter = document.getElementById("linkFooter");
const linksUteis = document.getElementById("linksUteis");
const product = document.getElementById("product");
const lado_direito = document.getElementById("lado-direito");
const cards = document.getElementById("cards");
const patrono_neves = document.getElementById("patrono-neves");
const fundoPreto = document.getElementById("fundoPreto");
const videoCurso = document.getElementById("videoCurso");
const fundoCinza2 = document.getElementById("fundoCinza2");
const parcerias = document.getElementById("parcerias");
const estati = document.getElementById("estati");
const desc = document.getElementById("descPerfil");
const acesso = document.getElementById("form-acess");
const estAlunosInfs = document.getElementById("estAlunosInfs");
const estViewsInfs = document.getElementById("estViewsInfs");
const estAvaliacoesInfs = document.getElementById("estAvaliacoesInfs");
const topoConteudosCurso = document.getElementById("topoConteudosCurso");
const secao = document.querySelectorAll(".secao");
const header = document.querySelectorAll("header")

// verifyEstiloFonte(verifyConfig(), () => {
//     document.style.font
// })

function darkMode() {
    document.getElementById("navbar").style.backgroundColor='#001017';
    document.querySelector('body').style.background = '#293342';
    document.getElementById("footer").style.color='white';  
    document.getElementById("footer").style.backgroundColor= corDark;

    if(header){
        document.getElementById("algo-especifico").style.color = corLight;
    }

    if(linkFooter) {
        for (let i = 0; i < linkFooter.childElementCount; i++) {
            document.getElementById("linkFooter").children[i].children[0].style.color = 'white';                        
        }
    }

    if(linksUteis) {
        for (let i = 0; i < linksUteis.childElementCount; i++) {
            document.getElementById("linksUteis").children[i].children[0].style.color = 'white';      
        }
    }


    if(banner) {
        document.getElementById("banner").style.backgroundColor= corDark;  
        document.getElementById("buscaCurso").style.backgroundColor= corDark;
        document.getElementById("banner").style.color='white';
        document.getElementById("buscaCurso").style.color='white';
    }

    if(loginPag) {
        document.getElementById("tudoLogin").style.backgroundColor= corDark;
    }

    if(fundoPreto) {
        document.getElementById("fundoPreto").style.backgroundColor= corDark;
        document.getElementById("fundoPreto").style.color= 'white';
    }

    if(fundoCinza2) {
        document.getElementById("fundoCinza2").style.backgroundColor= 'rgba(0, 0, 255, 0)';
    }

    if(videoCurso) {
        document.getElementById("videoCurso").style.background= 'linear-gradient(to bottom, rgba(0, 0, 255, 0) 0, rgba(0, 0, 255, 0) 70%, '+corDark+' 30%)';
        document.getElementById("videoCurso").style.color= 'white';
    }
    
    if(product) {
        document.getElementById("product").style.backgroundColor= corDark;
        document.getElementById("product").style.color= 'white';
        document.getElementById("product").children[0].style.color= 'white';
        document.getElementById("product").children[1].style.backgroundColor = 'red';
    }

    if(perfil) {
        document.getElementById("pagProf").style.backgroundColor= corDark;
        document.getElementById("pagProf").style.color= 'white';
        document.getElementById("fotoPerfil").style.backgroundColor= corDark;
        document.getElementById("listaAcoes").style.backgroundColor= corDark;
        document.getElementById("colEsq").style.backgroundColor= corDark2;
        document.getElementById("nomeEmail").style.backgroundColor= corDark2;
        document.getElementById("estudos").style.backgroundColor= corDark2;
        document.getElementById("estudos").style.color= 'white';
        //nome = document.getElementById("nomePerfil");
        //nome.children[0].style.color= 'white';
        //nome.children[1].style.backgroundColor= corDark;
        
       // email = document.getElementById("emailPerfil");
        //email.children[0].style.color= 'white';
        //email.children[1].style.backgroundColor= corDark;

        document.getElementById("resp-perg-aulas-exe").style.backgroundColor = corDark2;
        document.getElementById("descPerfil").children[1].style.backgroundColor= corDark2;
        document.getElementById("descPerfil").children[1].style.color= 'white';
        document.querySelectorAll(".estPerfil")[0].style.backgroundColor = corDark;
        document.querySelectorAll(".estPerfil")[1].style.backgroundColor = corDark;
        document.querySelectorAll(".estPerfil")[2].style.backgroundColor = corDark;
        document.querySelectorAll(".estPerfil")[3].style.backgroundColor = corDark;

        document.getElementById("sair-btn").style.color = corLight;


        document.getElementById("nomePerfil").children[1].style.backgroundColor = corDark;
        document.getElementById("emailPerfil").children[1].style.backgroundColor = corDark;

        document.getElementById("estAlunosInfs").style.backgroundColor = corDark2;
        document.getElementById("estViewsInfs").style.backgroundColor = corDark2;
        // document.getElementById("estAvaliacoesInfs").style.backgroundColor = corDark2;
        

        for (let i = 0; i < estAlunosInfs.childElementCount; i++) {
            document.getElementById("estAlunosInfs").children[i].style.backgroundColor = corDark;                        
        }
        for (let i = 0; i < estViewsInfs.childElementCount; i++) {
            document.getElementById("estViewsInfs").children[i].style.backgroundColor = corDark;                        
        }
        for (let i = 0; i < estAvaliacoesInfs.childElementCount; i++) {
            document.getElementById("estAvaliacoesInfs").children[i].style.backgroundColor = corDark;                        
        }
    
        // document.getElementById("topoConteudosCurso").style.backgroundColor = corDark;
        // document.getElementById("topoConteudosCurso").style.color = corLight;
        // document.getElementById("cursoTopo").style.backgroundColor = corDark;
        // document.getElementById("cursoTopo").style.color = corLight;

        // document.getElementById("selecioneCursoImg").style.backgroundColor = corDark2;

        // for (let i = 0; i < topoConteudosCurso.childElementCount; i++) {
        //     document.getElementById("topoConteudosCurso").children[i].style.backgroundColor = corDark2;                        
        // }

        document.getElementById("txtCursos").style.color = corLight;

        for(let element of acesso) {
            element.style.color = "#000"
        }

        for(let element of secao) {
            element.style.backgroundColor = corDark2;
            element.style.color = "#fff"
        }

    }
    
    if (parcerias) {
        document.getElementById("parcerias").style.backgroundColor = corDark;
        document.getElementById("parcerias").style.color = corLight;
        document.getElementById("parceiro1-img").style.backgroundColor = corLight;
    }

    if (estati) {
        document.getElementById("estati").style.backgroundColor = corDark;
        document.getElementById("estati").style.color = corLight;
    }

    if(acesso){
        document.querySelector(".caixa-acess").style.backgroundColor = corDark;
        document.querySelector(".video-acess").style.backgroundColor = corDark;
    }

    if (desc) {
        document.getElementById("descPerfil").style.backgroundColor = corDark;
        document.getElementById("descPerfil").style.color = corLight;
    }

    if (lado_direito) {
        document.getElementById("lado-direito").style.backgroundColor = corDark;
        document.getElementById("lado-direito").style.color = corLight;
    }

    if (cards) {
        document.getElementById("cards").style.backgroundColor = corDark;
        document.getElementById("cards").style.color = corLight;
    }

    if (patrono_neves) {
        document.getElementById("patrono-neves").style.backgroundColor = corDark;
        document.getElementById("patrono-neves").style.color = corLight;
    }

    if(cursosArea) {
        for (let i = 0; i < cursosArea.childElementCount; i++) {
            document.getElementById("cursosArea").children[i].style.backgroundColor= corDark;
        }
    }


} 
    
function whiteMode() {

    document.querySelector('body').style.background = 'linear-gradient(50deg, #C9FBFA, #116798, #002B5C )';
    document.getElementById("navbar").style.backgroundColor='white';
    document.getElementById("footer").style.backgroundColor='white';
    document.getElementById("footer").style.color='black';
    document.getElementById("navbar").style.color='black';

    if(banner) {
        document.getElementById("banner").style.backgroundColor='white';
        document.getElementById("buscaCurso").style.backgroundColor='white';
        document.getElementById("banner").style.color='black';
        document.getElementById("buscaCurso").style.color='black';
    }
    
    if (loginPag) {
        document.getElementById("tudoLogin").style.backgroundColor='white';
    }

    if(fundoPreto) {
        document.getElementById("fundoPreto").style.backgroundColor= '#f3f3f3';
        document.getElementById("fundoPreto").style.color= 'black';
    }

    if(fundoCinza2) {
        document.getElementById("fundoCinza2").style.backgroundColor= 'rgba(0, 0, 255, 0)';
    }

    if(videoCurso) {
        document.getElementById("videoCurso").style.background= 'linear-gradient(to bottom, rgba(0, 0, 255, 0) 0, rgba(0, 0, 255, 0) 70%, #f3f3f3 30%)';
        document.getElementById("videoCurso").style.color= 'white';
    }

    if(perfil) {
        document.getElementById("pagProf").style.backgroundColor= corLight;
        document.getElementById("pagProf").style.color= 'black';
        document.getElementById("fotoPerfil").style.backgroundColor= corLight;
        document.getElementById("listaAcoes").style.backgroundColor= corLight;
        document.getElementById("colEsq").style.backgroundColor= 'white';
        document.getElementById("nomeEmail").style.backgroundColor= 'white';
        document.getElementById("estudos").style.backgroundColor= 'white';
        document.getElementById("estudos").style.color= 'black';
        nome = document.getElementById("nomePerfil");
        nome.children[0].style.color= 'black';
        nome.children[1].style.backgroundColor= corLight;
        
        email = document.getElementById("emailPerfil");
        email.children[0].style.color= 'black';
        email.children[1].style.backgroundColor= corLight;

        document.getElementById("resp-perg-aulas-exe").style.backgroundColor= 'white';
        document.getElementById("descPerfil").children[1].style.backgroundColor= 'white';
        document.getElementById("descPerfil").children[1].style.color= 'black';
        document.querySelectorAll(".estPerfil")[0].style.backgroundColor = corLight;
        document.querySelectorAll(".estPerfil")[1].style.backgroundColor = corLight;
        document.querySelectorAll(".estPerfil")[2].style.backgroundColor = corLight;
        document.querySelectorAll(".estPerfil")[3].style.backgroundColor = corLight;   

    }

    if (lado_direito) {
        document.getElementById("lado-direito").style.backgroundColor = corLight;
        document.getElementById("lado-direito").style.color = 'black';
    }

    if (cards) {
        document.getElementById("cards").style.backgroundColor = corLight;
        document.getElementById("cards").style.color = 'black';
    }

    if (patrono_neves) {
        document.getElementById("patrono-neves").style.backgroundColor = corLight;
        document.getElementById("patrono-neves").style.color = 'black';
    }

    if(cursosArea){
        for (let i = 0; i < cursosArea.childElementCount; i++) {
            document.getElementById("cursosArea").children[i].style.backgroundColor= corLight;
        }
    }

    if(linkFooter){
        for (let i = 0; i < linkFooter.childElementCount; i++) {
            document.getElementById("linkFooter").children[i].children[0].style.color = 'black';     
        }
    }

    if(linksUteis){
        for (let i = 0; i < linksUteis.childElementCount; i++) {
            document.getElementById("linksUteis").children[i].children[0].style.color = 'black';       
        }
    }
}

verifyAlterarTema(verifyConfig(), darkMode, whiteMode)