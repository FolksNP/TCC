@charset "UTF-8";
@import url("https://fonts.googleapis.com/css2?family=Fira+Sans&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Fira+Sans&display=swap");
@import '3-paginas/inicial.css';
@import url("https://fonts.googleapis.com/css2?family=Fira+Sans&family=Genos:wght@600&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;600&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;600&display=swap");
@import url("https://fonts.cdnfonts.com/css/itc-benguiat-std");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body::-webkit-scrollbar {
  width: 12px;
}

body::-webkit-scrollbar-track {
  background: black;
}

body::-webkit-scrollbar-thumb {
  background-color: #116798;
  border-radius: 10px;
  border: 1px solid black;
}

.container {
  background-color: #fff;
  margin-top: 20px;
}
@media (max-width: 500px) {
  .container {
    width: 100%;
  }
}
.container .pn {
  color: gray;
  padding: 1rem;
  text-align: center;
  border-bottom: 2px solid #116798;
}
.container .superior {
  margin: 10px;
  padding: 1em;
}
.container .superior .conteudos {
  display: flex;
  justify-content: space-between;
}
@media (max-width: 500px) {
  .container .superior .conteudos {
    flex-direction: column;
    justify-content: center;
  }
}
.container .superior .conteudos .sobre, .container .superior .conteudos .listagem, .container .superior .conteudos .links, .container .superior .conteudos .endereco {
  width: 20%;
  margin: 0px 10px;
}
@media (max-width: 500px) {
  .container .superior .conteudos .sobre, .container .superior .conteudos .listagem, .container .superior .conteudos .links, .container .superior .conteudos .endereco {
    width: 70%;
    margin-top: 10px;
  }
}
.container .superior .conteudos .sobre h2, .container .superior .conteudos .listagem h2, .container .superior .conteudos .links h2, .container .superior .conteudos .endereco h2 {
  font-style: normal;
  margin-bottom: 10px;
}
.container .superior .conteudos .sobre ul, .container .superior .conteudos .listagem ul, .container .superior .conteudos .links ul, .container .superior .conteudos .endereco ul {
  list-style-type: none;
}
.container .superior .conteudos .sobre ul li, .container .superior .conteudos .listagem ul li, .container .superior .conteudos .links ul li, .container .superior .conteudos .endereco ul li {
  margin: 5px 0;
}
.container .superior .conteudos .sobre ul a, .container .superior .conteudos .listagem ul a, .container .superior .conteudos .links ul a, .container .superior .conteudos .endereco ul a {
  text-decoration: none;
  color: black;
  border-bottom: 3px solid transparent;
}
.container .superior .conteudos .sobre ul a:hover, .container .superior .conteudos .listagem ul a:hover, .container .superior .conteudos .links ul a:hover, .container .superior .conteudos .endereco ul a:hover {
  border-bottom: 3px solid #116798;
}
.container .superior .conteudos .sobre p {
  text-align: justify;
}
.container .inferior {
  padding: 3em;
  border-top: 2px solid #116798;
  text-align: center;
}

.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
  margin-right: 10px;
}

/* Hide default HTML checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: 0.4s;
  transition: 0.4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: 0.4s;
  transition: 0.4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

.navbarAzul {
  display: flex;
  flex-direction: column;
  font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
  background-color: white;
}
.navbarAzul .logoPesquisa {
  display: flex;
  justify-content: space-around;
  align-items: center;
  font-family: "Fira Sans", sans-serif;
  font-size: 25px;
}
@media (max-width: 500px) {
  .navbarAzul .logoPesquisa {
    flex-direction: column;
  }
}
.navbarAzul .logoPesquisa input[type=text] {
  height: 40px;
  width: 400px;
  padding: 10px;
  border-radius: 10px;
  border: solid 2px #116798;
  outline: none;
}
.navbarAzul .logoPesquisa .logoImg {
  display: flex;
  align-items: center;
  font-size: 25px;
  color: #116798;
}
.navbarAzul .logoPesquisa .logoImg img {
  position: relative;
  top: 6px;
  margin-right: 25px;
  max-width: 70px;
  max-height: 70px;
}
.navbarAzul .logoPesquisa .logoImg a {
  display: inline;
  text-decoration: none;
  color: #156aaa;
}
.navbarAzul .perfilImg img {
  width: 35px;
  height: 35px;
  border-radius: 100%;
  border: solid 2px #116798;
}
.navbarAzul .login-perfil {
  display: flex;
}
.navbarAzul .login-perfil .link-cadastrar a {
  text-decoration: none;
  color: #156aaa;
  padding: 5px 15px;
  margin-left: 10px;
  line-height: 35px;
}
.navbarAzul .login-perfil .link-cadastrar a:hover {
  background-color: #156aaa;
  color: white;
  padding: 5px 15px;
  border-radius: 10px;
}
.navbarAzul .catNavbar ul {
  display: flex;
  justify-content: space-evenly;
  list-style: none;
  border-top: 2px solid #116798;
  padding-top: 12px;
}
.navbarAzul .catNavbar ul :nth-child(1) {
  color: #116798;
}
.navbarAzul .catNavbar ul li {
  font-size: 15px;
  margin-bottom: 10px;
}
.navbarAzul .catNavbar a {
  text-decoration: none;
}

.topnav {
  overflow: hidden;
  position: relative;
  list-style-type: none;
}

.topnav #myLinks {
  display: none;
}

.topnav a {
  color: white;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  display: block;
}

.topnav a img {
  display: block;
  position: absolute;
  right: 0;
  top: 0;
  width: 60px;
  height: 50px;
}

.topnav a:hover {
  color: black;
}

.active {
  background-color: #04AA6D;
  color: white;
}

#hmb-menu {
  width: 100%;
  border-radius: 0px;
}

@media (min-width: 741px) {
  #container-hamburguer {
    display: none;
  }
}

button {
  background-color: #116798;
  color: #fff;
  border: 3px solid transparent;
  padding: 10px;
  border-radius: 20px;
}
button:hover {
  cursor: pointer;
  background-color: #fff;
  border: 3px solid #116798;
  color: #116798;
}

.button {
  background-color: #116798;
  color: #fff;
  border: 2px solid transparent;
  padding: 10px;
}
.button:hover {
  cursor: pointer;
  background-color: #fff;
  border: 2px solid #116798;
  color: #116798;
}

.swiper {
  width: 100%;
}

.swiper-slide {
  text-align: center;
  font-size: 18px;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 5px;
}
.swiper-slide a {
  text-decoration: none;
  color: rgb(255, 255, 255);
  margin: 10px;
}

.swiper-slide:hover {
  transform: scale(1.1);
  transition: 0.3s;
}

.txtCursosSlider p {
  width: 100%;
  font-size: 35px;
  text-align: center;
  color: white;
  margin-bottom: 20px;
}

.swiper {
  width: 100%;
  margin: 20px auto;
  align-items: center;
}

.append-buttons {
  text-align: center;
  margin-top: 20px;
  align-items: center;
}

.append-buttons button {
  display: inline-block;
  cursor: pointer;
  border: 1px solid #007aff;
  color: #007aff;
  text-decoration: none;
  padding: 4px 10px;
  border-radius: 4px;
  margin: 0 10px;
  font-size: 15px;
}

.container-carrossel {
  padding: 5px;
}
.container-carrossel img {
  width: 300px;
  height: 250px;
  margin-top: 5px;
  border-radius: 5px;
  -webkit-box-shadow: 5px 5px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 5px 5px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 5px 5px 5px 0px rgba(0, 0, 0, 0.75);
}
.container-carrossel p {
  padding: 10px;
  text-align: justify;
}

* {
  margin: 0;
  padding: 0;
}

body {
  font-family: "Fira Sans", sans-serif;
}

.fundoCinza {
  display: flex;
  align-items: center;
  width: 100%;
  flex-direction: column;
  height: 30vh;
}
.fundoCinza .txt {
  color: white;
  text-align: center;
  align-items: center;
  text-align: center;
  max-width: 500px;
  margin: 40px;
  border-bottom: solid 1px #116798;
}
.fundoCinza .txt p {
  font-size: 15px;
  margin-top: 30px;
  border-top: 1px solid #116798;
  padding-top: 5px;
  margin-bottom: 5px;
}
.fundoCinza .txt h2 {
  font-size: 30px;
}
.fundoCinza .btnInscrevase input[type=button] {
  padding: 1em 2em;
  cursor: pointer;
  border: none;
  border-radius: 5px;
  font-weight: bold;
  letter-spacing: 5px;
  text-transform: uppercase;
  color: #116798;
  transition: all 1000ms;
  font-size: 15px;
  position: relative;
  overflow: hidden;
  outline: 2px solid #116798;
}
.fundoCinza .btnInscrevase input[type=button]:hover {
  color: #116798;
  transform: scale(1.1);
  outline: 2px solid #116798;
  box-shadow: 4px 5px 17px -4px #116798;
}
.fundoCinza .btnInscrevase input[type=button]::before {
  content: "";
  position: absolute;
  left: -50px;
  top: 0;
  width: 0;
  height: 100%;
  background-color: #116798;
  transform: skewX(45deg);
  z-index: -1;
  transition: width 1000ms;
}
.fundoCinza .btnInscrevase input[type=button]:hover::before {
  width: 250%;
}

.videoCurso {
  background-image: linear-gradient(to bottom, rgba(0, 0, 255, 0) 0, rgba(0, 0, 255, 0) 70%, #f3f3f3 30%);
  width: 100%;
  align-items: center;
  display: flex;
  justify-content: center;
  margin-top: 50px;
}
.videoCurso > img {
  height: 500px;
  width: 500px;
  border-radius: 5px;
  border: solid 3px #116798;
  margin-top: 50px;
}

.fundoPreto {
  color: rgb(0, 0, 0);
  display: flex;
  flex-direction: column;
  background-color: #f3f3f3;
  align-items: center;
  height: 50vh;
  width: 100%;
  padding-top: 50px;
}
.fundoPreto .interatividades {
  justify-content: center;
  align-items: center;
}
.fundoPreto .interatividades .imgTxt {
  display: flex;
  justify-content: center;
  align-items: center;
}
.fundoPreto .interatividades .txtInt {
  display: flex;
  flex-direction: column;
}
.fundoPreto .interatividades .txtInt > p {
  padding-left: 10px;
  max-width: 1000px;
}
.fundoPreto .interatividades img {
  max-width: 50px;
  max-height: 50px;
}
.fundoPreto .txt {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.fundoPreto .txt h2 {
  margin-bottom: 10px;
}

.fundoCinza2 {
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background-color: #116798;
  border-top: solid 2px #116798;
  height: 60vh;
  border-bottom: solid 2px #116798;
}
.fundoCinza2 h3 {
  color: white;
  margin-bottom: 20px;
  font-size: 30px;
}
.fundoCinza2 .coment {
  max-height: 100px;
  display: flex;
  flex-direction: column;
  margin: 15px;
  width: 70%;
  justify-content: center;
  background-color: rgb(236, 236, 236);
  padding: 10px 10px 10px 20px;
  border-radius: 10px;
}
.fundoCinza2 .coment .perfilComent {
  display: flex;
}
.fundoCinza2 .coment .perfilComent > p {
  margin-left: 15px;
}
.fundoCinza2 .coment img {
  border-radius: 100%;
  height: 33px;
  width: 33px;
}

.fundoPreto2 {
  width: 100%;
  height: 60vh;
  background-color: rgb(27, 27, 27);
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.fundoPreto2 .btnEntrar input[type=button] {
  padding: 1em 2em;
  border: none;
  border-radius: 5px;
  font-weight: bold;
  letter-spacing: 5px;
  text-transform: uppercase;
  color: #116798;
  transition: all 1000ms;
  font-size: 15px;
  position: relative;
  overflow: hidden;
  outline: 2px solid #116798;
  bottom: 10px;
}
.fundoPreto2 .btnEntrar input[type=button]:hover {
  color: #116798;
  transform: scale(1.1);
  outline: 2px solid #116798;
  box-shadow: 4px 5px 17px -4px #116798;
}
.fundoPreto2 .btnEntrar input[type=button]::before {
  content: "";
  position: absolute;
  left: -50px;
  top: 0;
  width: 0;
  height: 100%;
  background-color: #116798;
  transform: skewX(45deg);
  z-index: -1;
  transition: width 1000ms;
}
.fundoPreto2 .btnEntrar input[type=button]:hover::before {
  width: 250%;
}
.fundoPreto2 img {
  max-width: 500px;
  max-height: 500px;
}

.conteiner-video {
  margin: 0 auto;
  padding: 15px 40px;
  margin-top: 10px;
  display: flex;
  width: 95%;
  background-color: rgba(214, 214, 214, 0.8235294118);
  border-radius: 5px;
}
.conteiner-video .lado-esquerdo {
  margin-top: 13px;
  background-color: #fff;
  width: 35%;
  border: 2px solid #116798;
  background-color: black;
  border-radius: 5px;
}
.conteiner-video .lado-esquerdo .conteudo h1 {
  background-color: #116798;
  color: white;
  text-align: center;
  padding: 10px;
  border-radius: 0px 0px 15px 15px;
  border-bottom: 2px solid #116798;
}
.conteiner-video .lado-esquerdo .conteudo .caixa-cont {
  display: flex;
  margin: 20px 10px;
  color: black;
  border: 2px solid #116798;
  border-radius: 4px;
  font-size: 20px;
  height: 80px;
  cursor: pointer;
}
.conteiner-video .lado-esquerdo .conteudo .caixa-cont #thumbAula {
  height: 100%;
}
.conteiner-video .lado-esquerdo .conteudo .caixa-cont .video-button-check {
  border-radius: 0px;
  width: 100%;
  font-size: 23px;
}
.conteiner-video .lado-esquerdo .conteudo .caixa-cont .video-button-check:hover {
  color: white;
  background-color: #649614;
}
.conteiner-video .lado-esquerdo .conteudo .caixa-cont .video-button-check:focus {
  background-color: green;
}
.conteiner-video .lado-direito {
  background-color: transparent;
  width: 100%;
}
.conteiner-video .lado-direito .conteudo {
  margin: 0 auto;
  margin-top: 0px;
  width: 1290px;
  padding: 15px;
}
.conteiner-video .lado-direito .conteudo #titulo-aula {
  background-color: #116798;
  color: white;
  padding: 10px;
  width: 100%;
}
.conteiner-video .lado-direito .links-inferiores {
  margin: 10px 0px;
  padding: 10px;
  border-radius: 10px;
  background-color: #120a8f;
}
.conteiner-video .lado-direito .links-inferiores ul {
  display: flex;
  list-style-type: none;
}
.conteiner-video .lado-direito .links-inferiores ul a {
  text-decoration: none;
}
.conteiner-video .lado-direito .links-inferiores ul li {
  color: white;
  padding: 10px;
  font-size: 25px;
}
.conteiner-video .lado-direito .links-inferiores ul li:hover {
  background-color: white;
  color: #120a8f;
}
.conteiner-video .lado-direito .conteudo-inferior {
  background-color: #116798;
  border-radius: 5px;
  padding: 20px;
}
.conteiner-video .lado-direito .conteudo-inferior p {
  font-size: 20px;
  text-align: justify;
  padding: 5px;
  color: white;
}

.footer {
  height: 1000px;
  color: orange;
}

/* Estilos para o slider */
.cardes-sliders {
  display: flex;
  overflow-x: scroll;
  scrollbar-width: none; /* Oculta a barra de rolagem do navegador */
  -ms-overflow-style: none; /* Oculta a barra de rolagem do IE/Edge */
  white-space: nowrap; /* Impede que os cartões se quebrem em várias linhas */
}

.cardes-sliders::-webkit-scrollbar {
  display: none; /* Oculta a barra de rolagem do Chrome/Safari */
}

.cardes {
  flex: 0 0 300px; /* Largura de cada cartão */
  margin-right: 16px; /* Espaçamento entre os cartões */
  padding: 16px;
  background-color: #f0f0f0;
  border: 1px solid #ccc;
}

* {
  margin: 0;
  padding: 0;
}

body {
  margin: auto;
  overflow: auto;
  background: linear-gradient(50deg, #C9FBFA, #116798, #002B5C);
}

.banner {
  display: flex;
  margin: 50px;
  background-color: white;
  padding: 10px;
  border-radius: 20px;
  align-items: center;
  -webkit-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.75);
}
@media (max-width: 500px) {
  .banner {
    flex-direction: column;
  }
}
@media (max-width: 900px) {
  .banner {
    flex-direction: column;
  }
}
@media (max-width: 1280px) {
  .banner {
    flex-direction: column;
  }
}
@media (max-width: 1400px) {
  .banner {
    flex-direction: column;
  }
}
.banner > img {
  width: 550px;
  height: 550px;
}
@media (max-width: 500px) {
  .banner > img {
    width: 100%;
    height: 100%;
  }
}
@media (max-width: 900px) {
  .banner > img {
    width: 100%;
    height: 100%;
  }
}

.beneficios {
  display: flex;
  width: 100%;
  justify-content: space-evenly;
}
@media (max-width: 500px) {
  .beneficios {
    flex-direction: column;
    justify-content: center;
  }
}
@media (max-width: 900px) {
  .beneficios {
    flex-direction: column;
    justify-content: center;
  }
}
@media (max-width: 1280px) {
  .beneficios {
    margin-bottom: 40px;
  }
}
.beneficios .card {
  width: 190px;
  height: 254px;
  transition: all 0.2s;
  position: relative;
  cursor: pointer;
}
@media (max-width: 500px) {
  .beneficios .card {
    margin: 0 auto;
    margin-bottom: 40px;
  }
}
@media (max-width: 900px) {
  .beneficios .card {
    margin: 0 auto;
    margin-bottom: 40px;
  }
}
@media (max-width: 1400px) {
  .beneficios .card {
    margin: 0 auto;
    margin-bottom: 40px;
  }
}
.beneficios .card-inner {
  width: inherit;
  height: inherit;
  background: rgba(255, 255, 255, 0.05);
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(10px);
  border-radius: 8px;
}
.beneficios .card-inner img {
  max-width: 80px;
  position: absolute;
  left: 5px;
  bottom: 5px;
}
.beneficios .card-inner :nth-child(2) {
  padding-top: 100px;
}
.beneficios .card-inner :nth-child(2) p {
  height: 100%;
  text-align: center;
  font-size: 18px;
}
.beneficios .card:hover {
  transform: scale(1.04) rotate(1deg);
}
.beneficios .circle {
  width: 100px;
  height: 100px;
  background: radial-gradient(rgb(0, 98, 255), #116798);
  border-radius: 50%;
  position: absolute;
  animation: move-up6 2s ease-in infinite alternate-reverse;
}
.beneficios .circle:nth-child(1) {
  top: -25px;
  left: -25px;
}
.beneficios .circle:nth-child(2) {
  bottom: -25px;
  right: -25px;
  animation-name: move-down1;
}
@keyframes move-up6 {
  to {
    transform: translateY(-10px);
  }
}
@keyframes move-down1 {
  to {
    transform: translateY(10px);
  }
}

.txtCursos {
  width: 100%;
  text-align: center;
  margin-bottom: 50px;
  color: white;
  margin-top: 5%;
}

.cursosAreas {
  display: flex;
  justify-content: space-around;
  margin-bottom: 5%;
}
@media (max-width: 500px) {
  .cursosAreas {
    flex-direction: column;
    justify-content: center;
  }
}
@media (max-width: 900px) {
  .cursosAreas {
    flex-wrap: wrap;
    justify-content: center;
  }
}
@media (max-width: 1280px) {
  .cursosAreas {
    flex-wrap: wrap;
    justify-content: center;
  }
}

.cardCurso {
  width: 190px;
  height: 254px;
  background: rgb(255, 255, 255);
  position: relative;
  display: flex;
  place-content: center;
  place-items: center;
  overflow: hidden;
  border-radius: 20px;
  -webkit-box-shadow: 10px 9px 20px -5px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 10px 9px 20px -5px rgba(0, 0, 0, 0.75);
  box-shadow: 10px 9px 20px -5px rgba(0, 0, 0, 0.75);
}
@media (max-width: 500px) {
  .cardCurso {
    margin: 0 auto;
    margin-top: 10px;
    width: 80%;
  }
}
@media (max-width: 900px) {
  .cardCurso {
    margin: 0 auto;
    margin-top: 10px;
    width: 40%;
  }
}
@media (max-width: 1280px) {
  .cardCurso {
    margin: 0 auto;
    margin-top: 10px;
    width: 40%;
  }
}

.cardCurso h2 {
  z-index: 1;
  color: white;
  align-items: center;
  font-size: 20px;
}

.cardCurso::before {
  content: "";
  position: absolute;
  width: 100px;
  background-image: linear-gradient(180deg, rgb(0, 183, 255), rgb(0, 247, 255));
  height: 130%;
  animation: rotBGimg 3s linear infinite;
  transition: all 0.2s linear;
}

@keyframes rotBGimg {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}
.cardCurso::after {
  content: "";
  position: absolute;
  background: #116798;
  inset: 5px;
  border-radius: 15px;
}

/* .card:hover:before {
  background-image: linear-gradient(180deg, rgb(81, 255, 0), purple);
  animation: rotBGimg 3.5s linear infinite;
} */
.perguntasFrequentesTudo {
  margin-top: 10px;
  display: flex;
  align-items: center;
  justify-content: space-evenly;
}
.perguntasFrequentesTudo img {
  max-width: 500px;
}
@media (max-width: 500px) {
  .perguntasFrequentesTudo img {
    display: none;
  }
}
@media (max-width: 900px) {
  .perguntasFrequentesTudo img {
    display: none;
    color: #002b5c;
  }
}
.perguntasFrequentesTudo .perguntasFAQ {
  color: white;
  padding: 20px;
  border-radius: 20px;
}
.perguntasFrequentesTudo .perguntasFAQ .perguntasTxt {
  width: 100%;
  text-align: center;
  font-size: 50px;
  font-weight: bold;
}
.perguntasFrequentesTudo .perguntasFAQ p {
  border-radius: 10px;
  padding: 10px;
  margin: 5px;
}
.perguntasFrequentesTudo .perguntasFAQ p a {
  text-decoration: none;
  font-style: italic;
  color: white;
  font-size: 20px;
}
.perguntasFrequentesTudo .perguntasFAQ a:hover {
  color: #116798;
  transition: 0.3s;
  border-bottom: solid 2px white;
}

.busqueCursos {
  width: 100%;
  background-color: white;
  padding: 50px;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.busqueCursos > p {
  margin-top: 30px;
}
.busqueCursos > p a {
  color: #116798;
}
.busqueCursos .busqueCursosTxt :nth-child(1) {
  font-size: 30px;
  font-style: italic;
  font-weight: bold;
}
.busqueCursos .busqueCursosTxt :nth-child(2) {
  margin-top: 10px;
  margin-bottom: 20px;
}
.busqueCursos .inputPesquisaInicial {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
}
.busqueCursos .inputPesquisaInicial img {
  width: 40px;
  height: 40px;
  background-color: #f3f3f3;
  padding: 5px;
  border-bottom-left-radius: 10px;
  border-top-left-radius: 10px;
}
@media (max-width: 500px) {
  .busqueCursos .inputPesquisaInicial {
    width: 90%;
  }
}
.busqueCursos .inputPesquisaInicial > div {
  -webkit-box-shadow: 1px 1px 28px -8px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 1px 1px 28px -8px rgba(0, 0, 0, 0.75);
  box-shadow: 1px 1px 28px -8px rgba(0, 0, 0, 0.75);
  display: flex;
  align-items: center;
  background-color: #116798;
  color: white;
  border-radius: 20px;
}
.busqueCursos .inputPesquisaInicial p {
  margin: 10px;
}
.busqueCursos .inputPesquisaInicial input[type=text] {
  height: 40px;
  width: 300px;
  border: none;
  padding-left: 10px;
  outline: none;
}

@media screen and (max-width: 740px) {
  .navbarAzul {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    min-width: 100%;
  }
  .navbarAzul .logoPesquisa {
    display: flex;
    flex-direction: row;
    width: 100%;
  }
  .navbarAzul .logoPesquisa img {
    margin-left: 5px;
  }
  .navbarAzul .logoPesquisa li {
    display: none;
  }
  .navbarAzul .logoPesquisa .logoImg {
    font-size: 20px;
  }
  .navbarAzul .logoPesquisa .logoImg img {
    width: 80px;
    height: 80px;
    margin-right: 5px;
  }
  .navbarAzul .logoPesquisa .listaMenu {
    display: flex;
    flex-direction: column;
    height: 100%;
    width: 10px;
    align-items: center;
    justify-content: center;
    margin: 0px 25px;
  }
  .navbarAzul .logoPesquisa .listaMenu div {
    display: flex;
    height: 3px;
    width: 25px;
    margin: 3px 0px;
    background-color: #116798;
  }
  .navbarAzul input {
    display: none;
  }
  .navbarAzul ul li {
    display: none;
  }
}
.login-container .content {
  display: flex;
  justify-content: center;
}
@media (max-width: 500px) {
  .login-container .content {
    flex-direction: column;
  }
}
.login-container .content .description, .login-container .content .formulario {
  width: 40%;
  color: #fff;
}
.login-container .content .description {
  margin-top: 70px;
}
.login-container .content .description #pn, .login-container .content .description #descubra {
  text-align: center;
}
.login-container .content .description #pn {
  font-size: 80px;
}
.login-container .content .description #descubra {
  font-size: 50px;
}
@media (max-width: 500px) {
  .login-container .content .description {
    width: 100%;
    margin-bottom: 10px;
  }
}
.login-container .content .formulario {
  margin: 0 auto;
  margin-top: 30px;
  justify-content: center;
  padding: 1rem;
  background-color: rgba(226, 255, 207, 0.15);
}
@media (max-width: 500px) {
  .login-container .content .formulario {
    width: 100%;
    justify-content: center;
    margin-bottom: 30px;
  }
}
.login-container .content .formulario h2 {
  margin: 0 auto;
  text-align: center;
  background-color: #116798;
  padding: 0.5rem;
  border-radius: 20px;
  width: 70%;
}
.login-container .content .formulario form {
  margin: 0 auto;
  width: 70%;
}
.login-container .content .formulario form input {
  display: block;
  width: 100%;
  padding: 0.5rem;
  border-radius: 25px;
  font-size: 15px;
  margin-top: 10px;
  border: 2px solid #116798;
}
.login-container .content .formulario form button {
  width: 100%;
  margin-top: 10px;
  font-size: 20px;
}

* {
  margin: 0;
  padding: 0%;
  box-sizing: border-box;
  transition: 0.3s;
}

.pagTodaPerfil {
  font-family: "Fira Sans", sans-serif;
  margin: 20px;
  border-radius: 20px;
  background-color: #f3f3f3;
  display: flex;
  justify-content: space-between;
}
.pagTodaPerfil .colunaEsquerdaPerfil {
  width: 30%;
  background-color: white;
  margin: 10px;
  border-radius: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  padding: 5px;
}
.pagTodaPerfil .colunaEsquerdaPerfil .edit {
  display: flex;
  flex-direction: row;
  margin: 5px 0px;
}
.pagTodaPerfil .colunaEsquerdaPerfil .edit p {
  cursor: pointer;
}
.pagTodaPerfil .colunaEsquerdaPerfil .edit img {
  width: 20px;
}
.pagTodaPerfil .colunaEsquerdaPerfil .fotoPerfil {
  padding: 10px;
  background-color: #f3f3f3;
  margin: 10px;
  border-radius: 20px;
  align-items: center;
  display: flex;
  flex-direction: column;
  justify-content: center;
  text-align: center;
}
.pagTodaPerfil .colunaEsquerdaPerfil .fotoPerfil > img {
  width: 100px;
  height: 100px;
  border-radius: 100%;
}
.pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes {
  display: flex;
  flex-direction: column;
  width: 100%;
  background-color: #f3f3f3;
  padding-bottom: 5px;
}
.pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes input {
  background: linear-gradient(45deg, #116798 0%, #116798 50%, rgb(0, 0, 0) 50%);
  width: 100%;
  height: 40px;
  margin: 10px 0;
  color: white;
  cursor: pointer;
  transition: 0.8s;
  border: none;
  border-radius: 5px;
  font-size: 15px;
}
.pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes input:hover {
  background: linear-gradient(45deg, rgb(0, 0, 0) 0%, rgb(0, 0, 0) 50%, #116798 50%);
  transition: 0.8s;
}
.pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes button {
  background: linear-gradient(45deg, #116798 0%, #116798 50%, rgb(0, 0, 0) 50%);
  width: 100%;
  height: 40px;
  margin: 10px 0;
  color: white;
  cursor: pointer;
  transition: 0.8s;
  border: none;
  border-radius: 5px;
  font-size: 15px;
}
.pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes button:hover {
  background: linear-gradient(45deg, rgb(0, 0, 0) 0%, rgb(0, 0, 0) 50%, #116798 50%);
  transition: 0.8s;
}
.pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes .txtIfProf {
  background-color: #156aaa;
  text-align: center;
  border-bottom-left-radius: 20px;
  border-bottom-right-radius: 20px;
  padding: 10px;
  margin-top: 5px;
}
.pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes > div {
  align-items: center;
  display: flex;
  flex-direction: row;
  margin-top: 10px;
  border-bottom: solid 1px #156aaa;
  width: 100%;
  cursor: pointer;
}
.pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes img {
  width: 30px;
  height: 30px;
  margin: 5px;
}
.pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes p:hover {
  color: rgb(0, 189, 189);
}

.direitaPerfil {
  margin: 10px;
  margin-left: 50px;
  border-radius: 20px;
  padding: 10px;
  width: 100%;
  display: flex;
  flex-direction: column;
}
.direitaPerfil .alterLogin {
  background-color: white;
  display: flex;
  flex-direction: column;
  justify-content: center;
  width: 100%;
  align-items: center;
  border-radius: 20px;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
}
.direitaPerfil .alterLogin input {
  margin: 10px 5px;
  height: 35px;
  width: 100%;
  outline: none;
  padding-left: 5px;
}
.direitaPerfil .alterLogin img {
  width: 250px;
  height: 250px;
  border-radius: 100%;
  border: solid 3px black;
}
.direitaPerfil .alterLogin .arquivoPerfil {
  display: none;
}
.direitaPerfil .nomeEmail {
  padding: 20px;
  background-color: white;
  border-radius: 20px;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
}
.direitaPerfil .nomeEmail .nomePerfil :nth-child(1) {
  margin-left: 5px;
}
.direitaPerfil .nomeEmail .nomePerfil :nth-child(2) {
  background-color: #f3f3f3;
  padding: 5px;
  border-radius: 10px;
}
.direitaPerfil .emailPerfil :nth-child(1) {
  margin-left: 5px;
}
.direitaPerfil .emailPerfil :nth-child(2) {
  background-color: #f3f3f3;
  padding: 5px;
  border-radius: 10px;
}
.direitaPerfil .estudos {
  display: flex;
  align-items: center;
  flex-direction: column;
}
.direitaPerfil .estudos .estudosTxt {
  margin-bottom: 20px;
  margin-top: 20px;
  font-size: 20px;
}
.direitaPerfil .estudos .cursandoTerminados {
  display: flex;
  justify-content: space-around;
  width: 100%;
  background-color: white;
  border-radius: 20px;
  padding-top: 20px;
  padding-bottom: 20px;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
}
.direitaPerfil .estudos .cursandoTerminados p {
  margin-bottom: 10px;
}
.direitaPerfil .estudos .cursando {
  text-align: center;
}
.direitaPerfil .estudos .cursando img {
  width: 100px;
  height: 100px;
  border-radius: 10px;
  margin: 0 5px;
}
.direitaPerfil .estudos .terminados {
  text-align: center;
}
.direitaPerfil .estudos .terminados img {
  width: 100px;
  height: 100px;
  border-radius: 10px;
  margin: 0 5px;
}
.direitaPerfil .estat .estatTxt {
  width: 100%;
  text-align: center;
  margin-top: 20px;
  margin-bottom: 20px;
  font-size: 20px;
}
.direitaPerfil .estat .resp-perg-aulas-exe {
  background-color: white;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  display: flex;
  flex-direction: column;
  padding: 20px;
  border-radius: 20px;
}
.direitaPerfil .estat .resp-perg-aulas-exe .estPerfil {
  display: flex;
  justify-content: space-between;
  background-color: #f3f3f3;
  border-radius: 10px;
  margin: 5px;
  padding: 5px;
}
.direitaPerfil .estat .resp-perg-aulas-exe .estPerfil p {
  margin-top: 5px;
}
.direitaPerfil .desc :nth-child(1) {
  width: 100%;
  text-align: center;
  margin-top: 20px;
  margin-bottom: 20px;
  font-size: 20px;
}
.direitaPerfil .desc :nth-child(2) {
  background-color: white;
  padding: 20px;
  border-radius: 20px;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
}
.direitaPerfil .redeSociais {
  display: flex;
  justify-content: space-evenly;
  margin-top: 20px;
}
.direitaPerfil .redeSociais img {
  width: 50px;
  height: 50px;
}
.direitaPerfil .cursoTopo {
  width: 100%;
  background-color: #ffffff;
  border-radius: 20px;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  display: flex;
  flex-direction: column;
}
.direitaPerfil .cursoTopo .txtCursos {
  display: flex;
  justify-content: space-between;
  font-size: 20px;
  margin-left: 30px;
  height: 40px;
  color: black;
  margin-bottom: 0;
  margin-top: 10px;
}
.direitaPerfil .cursoTopo .txtCursos p > img {
  max-width: 35px;
  margin: 5px;
  margin-right: 40px;
  border: solid 2px #116798;
  border-radius: 5px;
}
.direitaPerfil .imgsCursos a img {
  width: 100px;
  margin: 10px;
  height: 100px;
  border-radius: 10px;
}
.direitaPerfil .imgsCursos > img {
  width: 100px;
  margin: 10px;
  height: 100px;
  border-radius: 10px;
}
.direitaPerfil .tudo-videos-atvd {
  display: flex;
}
.direitaPerfil .tudo-videos-atvd :nth-child(1) {
  border-bottom: solid 2px #116798;
}
.direitaPerfil .tudo-videos-atvd p {
  margin: 10px 5px 5px;
  font-size: 20px;
}
.direitaPerfil .conteudosTelaCursos .topoConteudosCurso {
  display: flex;
  align-items: center;
  background-color: white;
  justify-content: space-around;
  padding: 5px;
  border-radius: 10px;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
}
.direitaPerfil .conteudosTelaCursos .topoConteudosCurso input[type=text] {
  width: 400px;
  height: 30px;
  border-radius: 5px;
  outline: none;
  border: none;
  margin-right: 10px;
  padding-left: 5px;
  -webkit-box-shadow: 3px 3px 0px 0px #116798;
  -moz-box-shadow: 3px 3px 0px 0px #116798;
  box-shadow: 3px 3px 0px 0px #116798;
}
.direitaPerfil .conteudosTelaCursos .topoConteudosCurso input[type=checkbox] {
  height: 30px;
  width: 30px;
}
.direitaPerfil .conteudosTelaCursos .topoConteudosCurso > p {
  background-color: #f3f3f3;
  align-items: center;
  text-align: center;
  padding: 10px;
  display: flex;
  border-radius: 10px;
  border-left: solid 2px #116798;
}
.direitaPerfil .conteudosTelaCursos .topoConteudosCurso img {
  max-width: 25px;
}
.direitaPerfil .conteudosTelaCursos details {
  cursor: pointer;
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  display: flex;
}
.direitaPerfil .conteudosTelaCursos details .scrollCursos {
  height: 200px;
  overflow-y: scroll;
}
.direitaPerfil .conteudosTelaCursos details p {
  display: flex;
  background-color: #116798;
  margin: 10px 0px;
  padding: 10px;
  align-items: center;
  border-radius: 10px;
}
.direitaPerfil .conteudosTelaCursos details p input[type=checkbox] {
  height: 50px;
  width: 50px;
  border: none;
}
.direitaPerfil .conteudosTelaCursos details summary {
  background-color: white;
  margin: 10px 0px;
  padding: 10px;
  border-radius: 10px;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
}
.direitaPerfil .conteudosTelaCursos details img {
  width: 100px;
  height: 100px;
  border-radius: 10px;
  margin: 0px 10px;
}
.direitaPerfil .conteudosTelaCursos details a {
  text-decoration: none;
  color: rgb(255, 255, 255);
  display: flex;
}
.direitaPerfil .topoEst {
  display: flex;
  justify-content: space-between;
}
.direitaPerfil .topoEst :nth-child(1) p {
  font-size: 20px;
  border-bottom: solid 2px #116798;
}
.direitaPerfil .topoEst :nth-child(2) {
  height: 30px;
  align-items: center;
  display: flex;
}
.direitaPerfil .topoEst :nth-child(2) img {
  width: 30px;
  height: 30px;
  padding: 5px;
  background-color: #d7d7d7;
  margin-left: -3px;
  border-radius: 5px;
}
.direitaPerfil .topoEst :nth-child(2) input {
  border: none;
  outline: none;
  height: 100%;
  border-bottom-left-radius: 5px;
  border-top-left-radius: 5px;
  padding-left: 5px;
  width: 200px;
}
.direitaPerfil .selecioneCurso {
  display: flex;
  flex-direction: column;
  margin-top: 20px;
}
.direitaPerfil .selecioneCurso :nth-child(1) {
  font-size: 20px;
}
.direitaPerfil .selecioneCurso .selecioneCursoImg {
  padding: 10px;
  background-color: white;
  border-radius: 15px;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
}
.direitaPerfil .selecioneCurso img {
  width: 80px;
  height: 80px;
  border-radius: 15px;
}
.direitaPerfil .estCursos {
  display: flex;
  flex-direction: column;
}
.direitaPerfil .estCursos .estAlunos .estAlunosTxt {
  width: 100%;
  text-align: center;
  font-size: 20px;
  margin: 15px 0px;
}
.direitaPerfil .estCursos .estAlunos .estAlunosInfs {
  column-count: 2;
  gap: 150px;
  background-color: white;
  padding: 15px;
  border-radius: 15px;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
}
.direitaPerfil .estCursos .estAlunos .estAlunosInfs div {
  display: flex;
  justify-content: space-between;
  border-radius: 15px;
  padding: 10px;
  margin: 10px 0px;
  background-color: #f3f3f3;
}
.direitaPerfil .estCursos .estViews .estViewsTxt {
  width: 100%;
  text-align: center;
  margin: 15px 0px;
  font-size: 20px;
}
.direitaPerfil .estCursos .estViews .estViewsInfs {
  column-count: 2;
  gap: 150px;
  background-color: white;
  padding: 15px;
  border-radius: 15px;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
}
.direitaPerfil .estCursos .estViews .estViewsInfs div {
  display: flex;
  justify-content: space-between;
  border-radius: 15px;
  padding: 10px;
  margin: 10px 0px;
  background-color: #f3f3f3;
}
.direitaPerfil .estCursos .estAvaliacoes .estAvaliacoesTxt {
  width: 100%;
  text-align: center;
  margin: 15px 0px;
  font-size: 20px;
}
.direitaPerfil .estCursos .estAvaliacoes .estAvaliacoesInfs {
  column-count: 2;
  gap: 150px;
  background-color: white;
  padding: 15px;
  border-radius: 15px;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
}
.direitaPerfil .estCursos .estAvaliacoes .estAvaliacoesInfs > div {
  display: flex;
  justify-content: space-between;
  background-color: #f3f3f3;
  border-radius: 15px;
  padding: 10px;
  margin: 10px 0px;
}
.direitaPerfil .graficos {
  height: 100%;
  background-color: white;
  margin-top: 10px;
  border-radius: 15px;
  padding: 20px;
  -webkit-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75);
}
.direitaPerfil .graficos p {
  width: 100%;
  text-align: center;
  align-items: center;
  height: 100%;
  font-size: 20px;
}

#direitaPerfilEst, #direitaPerfilCursos, #direitaPerfilAlterar {
  display: none;
}

@media screen and (max-width: 740px) {
  .pagTodaPerfil {
    display: flex;
    flex-direction: column;
    background: none;
  }
  .pagTodaPerfil .colunaEsquerdaPerfil {
    justify-content: center;
    height: 100%;
    width: 100%;
    margin: 0;
    justify-content: center;
  }
  .pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes {
    display: flex;
    flex-direction: row;
    background: none;
  }
  .pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes div {
    border: none;
  }
  .pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes div p {
    display: none;
    border: none;
  }
  .pagTodaPerfil .colunaEsquerdaPerfil .listaAcoes a {
    display: none;
  }
  .pagTodaPerfil .direitaPerfil {
    margin: 0;
    width: 100%;
    padding: 0;
  }
  .pagTodaPerfil .direitaPerfil .nomeEmail {
    margin-top: 40px;
    display: flex;
    flex-direction: column;
  }
  .pagTodaPerfil .direitaPerfil .nomeEmail p {
    width: 100%;
    text-align: center;
    padding: 10px 0px;
  }
  .pagTodaPerfil .cursandoTerminados {
    display: flex;
    flex-direction: column;
  }
  .pagTodaPerfil .cursandoTerminados .terminados img {
    width: 80px;
    height: 80px;
  }
  .pagTodaPerfil .cursandoTerminados .cursando img {
    width: 80px;
    height: 80px;
  }
  .pagTodaPerfil .cursandoTerminados .resp-perg-aulas-exe {
    display: flex;
    flex-direction: column;
    columns: 1;
    gap: 0;
  }
}
* {
  box-sizing: border-box;
}

.bodyRegistro {
  font-family: "Montserrat", sans-serif;
  background: white;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vH;
  transition: 580ms ease-in;
}
.bodyRegistro .voltar {
  position: absolute;
  z-index: 99;
  left: 1%;
  top: 1%;
}
.bodyRegistro .voltar img {
  max-width: 30px;
}
.bodyRegistro a {
  color: #116798;
  font-size: 18x;
  text-decoration: none;
  margin: 15px 0;
}
.bodyRegistro h2 {
  font-weight: bold;
  margin: 0;
}
.bodyRegistro form input {
  height: 40px;
  width: 100%;
  border: none;
  background-color: #ecf0f1;
}
.bodyRegistro input {
  border-radius: 5px;
  outline: none;
}
.bodyRegistro button {
  border-radius: 20px;
  border: 1px solid white;
  background: #116798;
  font-weight: bold;
  padding: 12px 45px;
  letter-spacing: 1PX;
  text-transform: uppercase;
  transition: 580ms ease-in;
  color: white;
  cursor: pointer;
}
.bodyRegistro button:hover {
  transition: all 580ms ease-in-out;
  box-shadow: 20px 20px 50px rgba(0, 0, 0, 0.5);
  color: white;
  border: rgba(255, 255, 255, 0.1);
}
.bodyRegistro button:active {
  transform: scale(0.5);
}
.bodyRegistro button:focus {
  outline: none;
}

.tituloInform {
  font-size: 24px;
}

.tituloForm1 {
  color: #116798;
}

.tituloForm2 {
  color: #116798;
}

.texto2 {
  font-size: 14px;
  font-weight: 100;
  line-height: 20px;
  letter-spacing: 0.5px;
  margin: 20px 0 50px;
  margin-bottom: 10px;
}

.texto {
  font-size: 12px;
  color: black;
  margin-bottom: 10px;
}

.containerRegistro {
  position: relative;
  background: rgba(255, 255, 255, 0.1);
  backdrop-filter: none;
  -webkit-backdrop-filter: blur(5px);
  box-shadow: 20px 20px 50px rgba(0, 0, 0, 0.5);
  border-radius: 15px;
  overflow: hidden;
  width: 800px;
  max-width: 100%;
  min-height: 500px;
}

.content1 form {
  background: rgba(255, 255, 255, 0.1);
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  border-left: 1px solid rgba(255, 255, 255, 0.1);
  backdrop-filter: blur(5px);
  display: flex;
  flex-direction: column;
  padding: 0 50px;
  height: 100%;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.socialMedia {
  margin: 20px 0;
}

.socialMedia a {
  border: 1px solid #116798;
  border-radius: 50%;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  margin: 0 5px;
  height: 40px;
  width: 40px;
  transition: all 580ms ease-in-out;
}

.socialMedia a:hover {
  transition: all 580ms ease-in-out;
  box-shadow: 20px 20px 50px rgba(0, 0, 0, 0.5);
  background: #116798;
  border: 1px solid white;
  color: white;
}

.label-input {
  background-color: #ecf0f1;
  display: flex;
  align-items: center;
  margin: 8px;
  border-radius: 10px;
}

.icon-modificado {
  color: #7f8c8d;
  padding: 0 6px;
}

.btn2 {
  background: white;
  color: #116798;
}

.btn2:hover {
  border: 1px solid white;
  background: #116798;
  box-shadow: 20px 20px 50px rgba(0, 0, 0, 0.5);
  color: white;
}

.content1 {
  position: absolute;
  top: 0;
  height: 100%;
  transition: all 0.6s ease-in-out;
}

.sign-in-containerRegistro {
  left: 0;
  width: 50%;
  z-index: 2;
}

.sign-up-containerRegistro {
  left: 0;
  width: 50%;
  opacity: 0;
  z-index: 1;
}

.overlay-containerRegistro {
  position: absolute;
  top: 0;
  left: 50%;
  width: 50%;
  height: 100%;
  overflow: hidden;
  transition: transform 0.6s ease-in-out;
  z-index: 100;
}

.overlay {
  background: #116798;
  color: white;
  position: relative;
  left: -100%;
  height: 100%;
  width: 200%;
  transform: translateX(0);
  transition: transform 0.6s ease-in-out;
  transition: 580ms ease-in;
}

.content2 {
  position: absolute;
  top: 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 0 40px;
  height: 100%;
  width: 50%;
  text-align: center;
  transform: translateX(0);
  transition: transform 0.6s ease-in-out;
}

.contentDir {
  right: 0;
  transform: translateX(0);
}

.contentEsq {
  transform: translateX(-20%);
}

.containerRegistro.right-panel-active .contentDir {
  transform: translateX(20%);
}

.containerRegistro.right-panel-active .contentEsq {
  transform: translateX(0%);
}

.containerRegistro.right-panel-active .sign-in-containerRegistro {
  transform: translateX(100%);
  opacity: 0;
}

.containerRegistro.right-panel-active .sign-up-containerRegistro {
  transform: translateX(100%);
  opacity: 1;
  z-index: 5;
  animation: show 0.6s;
}

.containerRegistro.right-panel-active .overlay-containerRegistro {
  transform: translateX(-100%);
}

.containerRegistro.right-panel-active .overlay {
  transform: translateX(50%);
}

.label {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 3px;
  height: 26px;
  width: 56px;
  background-color: #E6E6E6;
  display: flex;
  border-radius: 50px;
  position: relative;
  top: 10px;
  right: 10px;
  box-shadow: 0 3px 10px rgba(1, 1, 1, 0.3);
  cursor: pointer;
}

.ball {
  background-color: #E6E6E6;
  position: absolute;
  top: 2px;
  border-radius: 50%;
  height: 22px;
  width: 22px;
  transition: transform 0.2s linear;
  -webkit-box-shadow: inset 2px 0px 6px 1px rgba(0, 0, 0, 0.54);
  box-shadow: inset 2px 0px 6px 1px rgba(0, 0, 0, 0.54);
}

.checkbox:checked + .label .ball {
  transform: translateX(28px);
}

.fa-moon {
  color: blue;
}

fa-sun .fa-sun {
  color: #116798;
}

.checkbox {
  opacity: 0;
  position: absolute;
}

@keyframes show {
  0%, 49.99% {
    opacity: 0;
    z-index: 1;
  }
  50%, 100% {
    opacity: 1;
    z-index: 5;
  }
}
.bodyRegistro:before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(164deg, rgb(32, 136, 255) 24%, #116798 91%);
  clip-path: circle(30% at right 70%);
}

.bodyRegistro::after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(114deg, #116798 50%, rgb(16, 17, 88) 61%);
  clip-path: circle(20% at 10% 10%);
}

.floating-label-group {
  position: relative;
  margin-top: 15px;
  margin-bottom: 25px;
  width: 100%;
  display: flex;
}
.floating-label-group > div {
  height: 100%;
  align-items: center;
  display: flex;
  justify-content: center;
  margin-right: 5px;
}
.floating-label-group input {
  height: 35px;
  width: 100%;
  outline: none;
  padding-left: 10px;
  border: none;
  border-bottom: solid 2px #116798;
  background: none;
}
.floating-label-group input[type=submit] {
  background-color: #116798;
  color: white;
  cursor: pointer;
  margin-bottom: 20px;
  width: 100%;
  padding: 10px;
}
.floating-label-group .floating-label {
  font-size: 13px;
  color: #b4b3b3;
  position: absolute;
  pointer-events: none;
  top: 9px;
  left: 12px;
  transition: all 0.1s ease;
  width: 100%;
  align-items: center;
}
.floating-label-group input:focus ~ .floating-label,
.floating-label-group input:not(:focus):valid ~ .floating-label {
  top: -15px;
  bottom: 0px;
  left: 0px;
  font-size: 11px;
  opacity: 1;
  color: #404040;
}

#senhaInput {
  background-color: #ecf0f1;
  border-radius: 5px;
}
#senhaInput img {
  max-width: 20px;
}
#senhaInput input {
  border: none;
}

#senhaInput2 {
  background-color: #ecf0f1;
  border-radius: 5px;
}
#senhaInput2 img {
  max-width: 20px;
}
#senhaInput2 input {
  border: none;
  background: none;
}

.allPageCadCurso {
  font-family: "ITC Benguiat Std", sans-serif;
  font-style: italic;
  background-color: white;
  margin: 5%;
  border-radius: 20px;
  padding: 3%;
  align-items: center;
  display: flex;
  flex-direction: column;
  justify-content: center;
}
@keyframes move-up6 {
  to {
    transform: translateY(-10px);
  }
}
.allPageCadCurso img {
  max-width: 100px;
  animation: move-up6 2s ease-in infinite alternate-reverse;
}
.allPageCadCurso .topCadCurso {
  width: 100%;
  display: flex;
  justify-content: space-between;
}
.allPageCadCurso .centerCadCurso {
  width: 100%;
  text-align: center;
  font-size: 20px;
}
.allPageCadCurso .centerCadCurso .btnCurso {
  width: 50%;
  height: 45px;
  margin: 45px;
  --border-color: linear-gradient(-45deg, #00ff9d, #0367aa, #00fffb);
  --border-width: .125em;
  --curve-size: .5em;
  --blur: 30px;
  --bg: #080312;
  --color: #afffff;
  color: var(--color);
  /* use position: relative; so that BG is only for .btnCurso */
  position: relative;
  isolation: isolate;
  display: inline-grid;
  place-content: center;
  padding: 0.5em 1.5em;
  font-size: 17px;
  border: 0;
  text-transform: uppercase;
  box-shadow: 10px 10px 20px rgba(0, 0, 0, 0.6);
  clip-path: polygon(0% var(--curve-size), var(--curve-size) 0, 100% 0, 100% calc(100% - var(--curve-size)), calc(100% - var(--curve-size)) 100%, 0 100%);
  transition: color 250ms;
}
.allPageCadCurso .centerCadCurso .btnCurso::after,
.allPageCadCurso .centerCadCurso .btnCurso::before {
  content: "";
  position: absolute;
  inset: 0;
}
.allPageCadCurso .centerCadCurso .btnCurso::before {
  background: var(--border-color);
  background-size: 300% 300%;
  animation: move-bg7234 5s ease infinite;
  z-index: -2;
}
@keyframes move-bg7234 {
  0% {
    background-position: 31% 0%;
  }
  50% {
    background-position: 70% 100%;
  }
  100% {
    background-position: 31% 0%;
  }
}
.allPageCadCurso .centerCadCurso .btnCurso::after {
  background: var(--bg);
  z-index: -1;
  clip-path: polygon(var(--border-width) calc(var(--curve-size) + var(--border-width) * 0.5), calc(var(--curve-size) + var(--border-width) * 0.5) var(--border-width), calc(100% - var(--border-width)) var(--border-width), calc(100% - var(--border-width)) calc(100% - (var(--curve-size) + var(--border-width) * 0.5)), calc(100% - (var(--curve-size) + var(--border-width) * 0.5)) calc(100% - var(--border-width)), var(--border-width) calc(100% - var(--border-width)));
  transition: clip-path 500ms;
}
.allPageCadCurso .centerCadCurso .btnCurso:where(:hover, :focus)::after {
  clip-path: polygon(calc(100% - var(--border-width)) calc(100% - (var(--curve-size) + var(--border-width) * 0.5)), calc(100% - var(--border-width)) var(--border-width), calc(100% - var(--border-width)) var(--border-width), calc(100% - var(--border-width)) calc(100% - (var(--curve-size) + var(--border-width) * 0.5)), calc(100% - (var(--curve-size) + var(--border-width) * 0.5)) calc(100% - var(--border-width)), calc(100% - (var(--curve-size) + var(--border-width) * 0.5)) calc(100% - var(--border-width)));
  transition: 200ms;
}
.allPageCadCurso .centerCadCurso .btnCurso:where(:hover, :focus) {
  color: #fff;
}
.allPageCadCurso .pf-frase {
  margin-top: 20px;
  width: 100%;
  display: flex;
  border: 3px solid #0367aa;
  padding: 10px;
  border-radius: 1px;
  background-color: #080312;
}
.allPageCadCurso .pf-frase h3 {
  text-align: center;
  width: 100%;
  color: #fff;
}

.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  background-color: rgb(0, 0, 0); /* Fallback color */
  background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
  margin: 5% auto; /* 15% from the top and centered */
  padding: 20px;
  border: 2px solid rgb(0, 0, 0);
  width: 60%; /* Could be more or less, depending on screen size */
  height: 80%;
  border-radius: 20px;
  background-image: linear-gradient(70deg, #116798 0, #116798 70%, #ffffff 30%);
}
.modal-content .cadCursoModal {
  padding: 10px;
  border-radius: 20px;
  color: white;
  display: flex;
  width: 100%;
  justify-content: space-between;
}
.modal-content .cadCursoModal > img {
  max-width: 500px;
  max-height: 500px;
}
.modal-content .cadCursoModal form {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  width: 45%;
  text-align: center;
  gap: 5px;
}
.modal-content .cadCursoModal form input[type=text] {
  height: 35px;
  border: none;
  outline: none;
  padding: 5px;
  border-radius: 5px;
}
.modal-content .cadCursoModal form input[type=file] {
  display: none;
}
.modal-content .cadCursoModal form input[type=submit] {
  width: 10em;
  position: relative;
  height: 3.5em;
  border: 3px ridge #149CEA;
  outline: none;
  background-color: rgb(61, 61, 61);
  color: white;
  transition: 1s;
  border-radius: 0.3em;
  font-size: 16px;
  font-weight: bold;
  cursor: pointer;
  margin-top: 20px;
}
.modal-content .cadCursoModal form input[type=submit]::after {
  content: "";
  position: absolute;
  top: -10px;
  left: 3%;
  width: 95%;
  height: 40%;
  background-color: #212121;
  transition: 0.5s;
  transform-origin: center;
}
.modal-content .cadCursoModal form input[type=submit]::before {
  content: "";
  transform-origin: center;
  position: absolute;
  top: 80%;
  left: 3%;
  width: 95%;
  height: 40%;
  background-color: #212121;
  transition: 0.5s;
}
.modal-content .cadCursoModal form input[type=submit]:hover:before, .modal-content .cadCursoModal form input[type=submit]:hover::after {
  transform: scale(0);
}
.modal-content .cadCursoModal form input[type=submit]:hover {
  background-color: #0b2646;
}
.modal-content .cadCursoModal form select {
  border: none;
  outline: none;
  height: 35px;
  border-radius: 5px;
}
.modal-content .cadCursoModal form option {
  font-size: 15px;
  padding-left: 2px;
}
.modal-content .cadCursoModal form textarea {
  resize: none;
  outline: none;
  border: none;
  border-radius: 5px;
  padding-left: 5px;
  padding-top: 5px;
}

.thumbCurso {
  border: 1px solid black;
  border-radius: 5px;
  width: 300px;
  height: 150px;
}

/* The Close Button */
.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.closeAula:hover,
.closeAula:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

.closeAula {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

.close2 {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close2:hover,
.close2:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

.enderModal, .teachUpModal {
  padding: 10px;
  border-radius: 20px;
  color: white;
  display: flex;
  width: 100%;
  justify-content: space-between;
}
.enderModal > img, .teachUpModal > img {
  max-width: 250px;
  max-height: 400px;
}

.teachUpModal > img {
  max-width: 250px;
  max-height: 500px;
}

.container-sobre {
  display: flex;
  flex-direction: column;
  justify-content: center;
  background-color: transparent;
  margin-top: 20px;
}

.paulo-freire, .patrono-neves {
  margin: 0 auto;
  display: flex;
  width: 1280px;
  background-color: white;
  border-top: 25px solid #020d3f;
  border-radius: 20px;
  box-shadow: 10px 10px 50px #001242;
}

.paulo-freire {
  margin: 0 auto;
  display: flex;
  width: 1280px;
  margin-bottom: 10px;
}
@media (max-width: 500px) {
  .paulo-freire {
    width: 90%;
    margin: 0 auto;
    flex-direction: column;
    margin-bottom: 30px;
  }
}
@media (max-width: 900px) {
  .paulo-freire {
    width: 90%;
    margin: 0 auto;
    margin-bottom: 30px;
  }
}
@media (max-width: 1280px) {
  .paulo-freire {
    width: 90%;
    margin: 0 auto;
    margin-bottom: 30px;
  }
}
.paulo-freire .lado-esquerdo {
  width: 40%;
  padding: 10px;
  background-color: #116798;
  border-bottom-left-radius: 20px;
}
.paulo-freire .lado-esquerdo img {
  width: 100%;
  border-radius: 10px;
}
@media (max-width: 500px) {
  .paulo-freire .lado-esquerdo {
    width: 100%;
    border-radius: 0px;
  }
}
@media (max-width: 900px) {
  .paulo-freire .lado-esquerdo {
    width: 100%;
    border-radius: 0px;
  }
}
.paulo-freire .lado-direito {
  padding: 15px;
  width: 60%;
  align-items: center;
}
@media (max-width: 500px) {
  .paulo-freire .lado-direito {
    width: 100%;
  }
}
@media (max-width: 900px) {
  .paulo-freire .lado-direito {
    width: 100%;
  }
}
.paulo-freire .lado-direito #paulo-freire-texto {
  position: relative;
  top: 10%;
  margin-top: 15px;
  font-size: 20px;
  text-align: justify;
  line-height: 1.8rem;
  text-indent: 4rem;
}
@media (max-width: 1280px) {
  .paulo-freire .lado-direito #paulo-freire-texto {
    top: 0%;
  }
}

.patrono-neves {
  margin: 0 auto;
  display: flex;
  width: 1280px;
  margin-bottom: 40px;
}
@media (max-width: 500px) {
  .patrono-neves {
    width: 90%;
    margin: 0 auto;
    flex-direction: column-reverse;
  }
}
@media (max-width: 900px) {
  .patrono-neves {
    width: 90%;
    margin: 0 auto;
  }
}
@media (max-width: 1280px) {
  .patrono-neves {
    width: 90%;
    margin: 0 auto;
    flex-direction: column-reverse;
  }
}
.patrono-neves p.txt-indent {
  text-indent: 4rem;
}
.patrono-neves .lado-direito {
  width: 40%;
  padding: 10px;
  background-color: #116798;
  align-content: center;
  align-items: center;
  border-bottom-right-radius: 20px;
}
.patrono-neves .lado-direito img {
  position: relative;
  top: 20%;
  width: 100%;
}
@media (max-width: 500px) {
  .patrono-neves .lado-direito {
    width: 100%;
    border-radius: 0px;
  }
}
@media (max-width: 900px) {
  .patrono-neves .lado-direito {
    width: 100%;
    border-radius: 0px;
  }
}
@media (max-width: 1280px) {
  .patrono-neves .lado-direito {
    width: 100%;
    border-radius: 0px;
  }
}
.patrono-neves .lado-esquerdo {
  padding: 15px;
  width: 60%;
  align-items: center;
}
@media (max-width: 500px) {
  .patrono-neves .lado-esquerdo {
    width: 100%;
  }
}
@media (max-width: 900px) {
  .patrono-neves .lado-esquerdo {
    width: 100%;
  }
}
@media (max-width: 1280px) {
  .patrono-neves .lado-esquerdo {
    width: 100%;
  }
}
@media (max-width: 500px) {
  .patrono-neves .lado-esquerdo h1 {
    width: 100%;
    font-size: 25px;
    margin-top: 10px;
    margin-bottom: 20px;
  }
}
@media (max-width: 900px) {
  .patrono-neves .lado-esquerdo h1 {
    width: 100%;
    font-size: 25px;
    margin-top: 10px;
    margin-bottom: 20px;
  }
}
.patrono-neves .lado-esquerdo #paulo-freire-texto {
  position: relative;
  top: 20%;
  margin-top: 15px;
  font-size: 20px;
  text-align: justify;
  line-height: 1.8rem;
  text-indent: 4rem;
}
.patrono-neves .lado-esquerdo .cards {
  justify-content: space-between;
}
@media (max-width: 500px) {
  .patrono-neves .lado-esquerdo .cards {
    width: 100%;
  }
}
@media (max-width: 900px) {
  .patrono-neves .lado-esquerdo .cards {
    width: 100%;
  }
}
.patrono-neves .lado-esquerdo .cards .missao, .patrono-neves .lado-esquerdo .cards .visao, .patrono-neves .lado-esquerdo .cards .valores {
  text-align: justify;
  line-height: 1.8rem;
  font-size: 18px;
  margin: 10px;
  border: 3px solid #0d3254;
  padding: 10px;
  border-radius: 15px;
}
.patrono-neves .lado-esquerdo .cards h2 {
  margin-bottom: 10px;
}

.parcerias {
  margin: 0 auto;
  display: block;
  width: 1280px;
  height: 815px;
  background-color: white;
  border-top: 25px solid #020d3f;
  border-radius: 20px;
  box-shadow: 10px 10px 50px #001242;
}
.parcerias .parceria-cont h2 {
  text-align: center;
  line-height: 1.8rem;
  font-size: 19px;
  margin: 10px;
  margin-top: 20px;
  border: 3px solid #0d3254;
  padding: 10px;
  border-radius: 15px;
}
.parcerias .parceiros {
  margin: 0 auto;
  display: flex;
}

.matriculaPag {
  width: 100%;
  background-image: linear-gradient(to bottom, rgb(82, 183, 255) 0, rgb(82, 183, 255) 60%, #f3f3f3 40%);
  align-items: center;
  display: flex;
  flex-direction: column;
  justify-content: center;
}
.matriculaPag .matriculaForm {
  padding-top: 10px;
  margin: 0px 0px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 60%;
  margin-bottom: 20px;
}
.matriculaPag .matriculaForm h2 {
  width: 100%;
  text-align: center;
  margin: 20px 0px;
}
.matriculaPag .matriculaForm .capaCurso {
  border: solid 2px black;
  padding: 10px;
  margin-top: 10px;
  border-radius: 5px;
  display: flex;
  width: 100%;
  align-items: center;
  justify-content: center;
  background-image: linear-gradient(to bottom, rgba(0, 0, 255, 0) 0, rgba(0, 0, 255, 0) 60%, #f3f3f3 40%);
  margin-bottom: 20px;
}
.matriculaPag .matriculaForm .capaCurso img {
  height: 500px;
  width: 500px;
  border-radius: 5px;
}
.matriculaPag .matriculaForm .descCurso {
  width: 100%;
  text-align: center;
  margin: 10px;
  font-size: 20px;
}
.matriculaPag .matriculaForm form {
  display: flex;
  flex-direction: column;
  justify-content: center;
}
.matriculaPag .matriculaForm form img {
  width: 500px;
}
.matriculaPag .matriculaForm form input[type=text] {
  display: none;
}
.matriculaPag .matriculaForm form input[type=date] {
  display: none;
}
.matriculaPag .matriculaForm form .btnsMat {
  display: flex;
  width: 100%;
  justify-content: center;
  height: 35px;
  margin-top: 50px;
  margin-bottom: 50px;
  gap: 50px;
  align-items: center;
}
.matriculaPag .matriculaForm form .btnsMat a {
  width: 50%;
}
.matriculaPag .matriculaForm form .btnsMat a input {
  width: 100%;
  height: 50px;
  border-radius: 5px;
  border: solid 2px black;
  font-size: 20px;
  background-color: rgb(209, 120, 120);
}
.matriculaPag .matriculaForm form .btnsMat a input:hover {
  cursor: pointer;
  background-color: rgb(255, 36, 36);
  color: white;
}
.matriculaPag .matriculaForm form .btnsMat > input {
  width: 50%;
  height: 50px;
  border-radius: 5px;
  border: solid 2px black;
  font-size: 20px;
  background-color: rgb(0, 176, 132);
}
.matriculaPag .matriculaForm form .btnsMat input:hover {
  cursor: pointer;
  background-color: rgb(36, 255, 182);
  color: white;
}

.principal-certificado {
  margin: 0 auto;
  margin-top: 20px;
  display: flex;
  width: 1280px;
  height: 720px;
  background-color: white;
  border: 1px solid black;
  justify-content: space-between;
}
@media (max-width: 500px) {
  .principal-certificado {
    width: 100%;
  }
}
.principal-certificado .patrono-neves-certificado {
  background-color: #05347e;
  height: 720px;
  width: 120px;
  z-index: 1;
}
.principal-certificado .patrono-neves-certificado .caixa-pn {
  margin-top: 40px;
}
.principal-certificado .patrono-neves-certificado .caixa-pn .pn-letter {
  color: white;
  text-align: center;
  font-size: 40px;
  font-family: "Cocomat";
}
.principal-certificado .conteudo-principal {
  text-align: center;
  width: 41%;
}
.principal-certificado .conteudo-principal #certi {
  font-size: 60px;
  margin-top: 50px;
}
.principal-certificado .conteudo-principal #conc {
  font-size: 30px;
}
.principal-certificado .conteudo-principal #dedicacao {
  font-size: 25px;
  margin-top: 100px;
}
.principal-certificado .conteudo-principal #nome-aluno {
  margin-top: 60px;
  margin-bottom: 5px;
  font-family: "dance";
  font-size: 50px;
}
.principal-certificado .conteudo-principal #concli {
  margin-top: 10px;
  font-size: 16px;
}
.principal-certificado .assinaturas {
  display: flex;
  margin-top: 100px;
  justify-content: space-between;
}
.principal-certificado .assinaturas .instrutor, .principal-certificado .assinaturas .plataforma {
  width: 40%;
}
.principal-certificado .assinaturas #nome-instrutor, .principal-certificado .assinaturas #plataforma-ass {
  font-family: "dance";
  margin-bottom: 5px;
}
.principal-certificado .assinaturas #instrutor, .principal-certificado .assinaturas #plat-resp {
  margin-top: 5px;
}
.principal-certificado .conteudo-lateral-direito {
  padding: 0px 90px;
  width: 300px;
}
.principal-certificado .conteudo-lateral-direito .bloco-superior {
  width: 100px;
  height: 200px;
  background-color: #1c2143;
}
.principal-certificado .conteudo-lateral-direito .logo img {
  width: 200%;
  position: relative;
  top: -80px;
  left: -70px;
}
.principal-certificado .conteudo-lateral-direito .bloco-inferior {
  width: 100px;
  height: 200px;
  background-color: #1c2143;
  position: relative;
  bottom: -75px;
}

.caixa-linha {
  position: relative;
  left: -80px;
}
.caixa-linha #detalhe {
  height: 718px;
}

.botoes {
  display: flex;
  justify-content: center;
  width: 100%;
  margin-top: 20px;
}
.botoes .button-pdf {
  margin: 0 auto;
  width: 80%;
  height: 50px;
  font-size: 25px;
  border-radius: 10px;
  background-color: green;
}
@media (max-width: 500px) {
  .botoes .button-pdf {
    height: 100px;
  }
}

.principal-acesso {
  width: 90%;
  margin: 0 auto;
  margin-top: 40px;
}
.principal-acesso #dis-acess {
  background-color: #116798;
  padding: 10px;
  color: #fff;
  text-align: center;
}
.principal-acesso .geral-e-video {
  padding: 10px;
  text-align: center;
  background-color: #116798;
  color: #fff;
}

form {
  display: flex;
}

.caixa-acess, .video-acess {
  position: relative;
  background-color: #fff;
  width: 50%;
  border: 2px solid black;
}
.caixa-acess .selecaoUnica, .video-acess .selecaoUnica {
  margin: 10px;
  display: block;
  padding: 5px;
}
.caixa-acess .selecaoUnica input[type=checkbox], .video-acess .selecaoUnica input[type=checkbox] {
  height: 25px;
  width: 25px;
  margin-left: 5px;
}
.caixa-acess .selecaoUnica label, .video-acess .selecaoUnica label {
  font-size: 30px;
}
.caixa-acess .selecaoMultipla, .video-acess .selecaoMultipla {
  display: block;
  padding: 5px;
  margin: 10px;
}
.caixa-acess .selecaoMultipla select, .video-acess .selecaoMultipla select {
  padding: 5px;
  font-size: 25px;
}
.caixa-acess .selecaoMultipla label, .video-acess .selecaoMultipla label {
  font-size: 30px;
}

#alter-button {
  border-top-left-radius: 0px;
  border-top-right-radius: 0px;
  width: 100%;
  font-size: 30px;
}

@font-face {
  font-family: "Cocomat";
  src: url("./fonts/CocomatPro-Light.ttf") format("truetype");
}
@font-face {
  font-family: "dance";
  src: url("./fonts/DancingScript-Regular.otf") format("opentype");
}

/*# sourceMappingURL=main.csc.map */
