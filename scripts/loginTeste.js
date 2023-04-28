const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('containerRegistro');

signUpButton.addEventListener('click', () => {
	containerRegistro.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	containerRegistro.classList.remove("right-panel-active");
});



var checkbox = document.getElementById('checkbox')
var i = 0
checkbox.addEventListener('click', () => {
	var fundo = document.querySelector(".bodyRegistro")
    var overlay = document.querySelector(".overlay")
    var btn = document.querySelector("#cadastroBtn")
    var btn2 = document.querySelector(".btnCadastro2")
    var btn3 = document.querySelector(".btnLogin2")
    var tituloForm1 = document.querySelector(".tituloForm1")
    var tituloForm2 = document.querySelector(".tituloForm2")

    var esqueciSenha = document.querySelector(".esqueciSenha")
    
	
	
	if(i<=0){
		fundo.style.backgroundColor ="#001017"
        overlay.style.backgroundColor ="#116798"
        btn.style.backgroundColor ="#116798"
        btn2.style.color="black"
        btn3.style.color="#116798"
        tituloForm1.style.color ="#116798"
        tituloForm2.style.color ="#116798"

        
	}
    console.log('passou');
	i++
	if(i>=2){
		fundo.style.backgroundColor="white"
        overlay.style.backgroundColor="#116798"
        btn.style.backgroundColor ="#116798"
        btn2.style.color ="white"
        btn3.style.color ="#116798"
        tituloForm1.style.color ="#116798"
        tituloForm2.style.color ="#116798"
        

        

		i=0
	}
});