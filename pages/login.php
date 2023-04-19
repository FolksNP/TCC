<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <title>Login - Patrono Neves</title>
    <script>
        // função para mostrar e ocultar senha
function myFunction(pass) {

if(pass=='senha1'){
        var a = document.getElementById("senha1");
        if (a.type === "password") {
            a.type = "text";
            } else {
                a.type = "password";
            }

}if(pass == 'senha2'){
    var b = document.getElementById("senha2");
if (b.type === "password") {
  b.type = "text";
} else {
    b.type = "password";
}
}

// Confirmação no login
if(pass=='senhaLogin'){
        var c = document.getElementById("senhaLogin");
        if (c.type === "password") {
            c.type = "text";
            } else {
                c.type = "password";
            }

}
}




// função para conferir se a senha está correta

function validarSenha(name1, name2)
{
  document.getElementById("btnCad").disabled = true;
    var senha1 = document.getElementById(name1).value;
    var senha2 = document.getElementById(name2).value;
		
    if (senha1 != "" && senha2 != "" && senha1 === senha2)
    {
    	//alert('senha iguais');
      document.getElementById("btnCad").disabled = false;
      document.getElementById("btnCad").style.backgroundColor='#116798';
      fundo.style.backgroundColor = 'white';
      confira = document.querySelector('#confira');                
      confira.style.display = 'none';
      
    }
    else
    {
      fundo = document.querySelector('#senhaInput2');
      confira = document.querySelector('#confira');                
      confira.style.display = 'block';
      fundo.style.backgroundColor = '#FF4343';      
      document.getElementById("btnCad").disabled = true;
      document.getElementById("btnCad").style.backgroundColor='red';
    }
}

</script>
    
</head>
<body>
    
    <?php
        include('header.php');
    ?>
        <div class="tudoLogin">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <form class="ladoEsquerdoLogin">

            <div class="loginTitulo"><p>Crie sua Conta na Patrono Neves!</p></div>
            
            <div class="floating-label-group">
			<input type="text" id="username" class="form-control" autocomplete="off"  required="required" />
				<label class="floating-label">Nome Completo</label>
			</div>
		
        
            <div class="floating-label-group">
			<input type="text" id="username" class="form-control" autocomplete="off"  required="required" />
				<label class="floating-label">Usuário</label>
			</div>
            <div class="floating-label-group">
			<input type="email" id="username" class="form-control" autocomplete="off"  required="required" />
				<label class="floating-label">Email</label>
			</div>
            <div class="floating-label-group" id="senhaInput">
                <input type="password" name="password" id="senha1" class="form-control" autocomplete="off" required="required" />
                <div>
            <img src="../imgs/olho.png" onclick="myFunction('senha1');"  id="olho" class="olho"/>
            </div>
				<label class="floating-label">Senha</label>
			</div>
            <div class="floating-label-group" id="senhaInput2">
                <input type="password" name="password" id="senha2" class="form-control" oninput="validarSenha('senha1','senha2')" autocomplete="off" required="required" />
                <div id="fundoOlho">
            <img src="../imgs/olho.png"  onclick="myFunction('senha2');" id="olho" class="olho"/>
            </div>
				<label class="floating-label">Confirme Sua Senha</label>
			</div><p id="confira" style="display: none; color:#FF4343">CONFIRA SUA SENHA</p>
            
            <div class="floating-label-group">
			<input type="submit" value="Cadastrar-se" id="btnCad" class="form-control" onclick="btnDisable()"/>
				
			</div>
    
  
</form>

<div class="linhaLogin">
    
</div>

            <form class="ladoDireitoLogin">
            <div class="loginTitulo"><p>Seja bem-vindo de volta!</p></div>
            <div class="floating-label-group">
			<input type="text" id="usuario" class="form-control" autocomplete="off" required="required" />
				<label class="floating-label">Usuário</label>
			</div>
            <div class="floating-label-group" id="senhaInput">
                <input type="password" name="password" id="senhaLogin" class="form-control" autocomplete="off" required="required" />
                <div>
            <img src="../imgs/olho.png" onclick="myFunction('senhaLogin');"  id="olho" class="olho"/>
            </div>
				<label class="floating-label">Senha</label>
			</div>
    
    <div class="floating-label-group">
			<input type="submit" value="Entrar" class="form-control"/>
				
			</div>

    <div class="redefinirSenha">
        <a href="#"><p>Esqueci meu login</p></a>
    </div>
</form>
    

</div>
    <?php
        include('footer.php');
    ?>

</body>
</html>