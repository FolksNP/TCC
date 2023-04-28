<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <title>Login - Patrono Neves</title>
    <script src="../scripts/login.js"> </script>
    <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
    <script>
function readImage() {
    if (this.files && this.files[0]) {
        var file = new FileReader();
        file.onload = function(e) {
            document.getElementById("preview").src = e.target.result;
        };       
        file.readAsDataURL(this.files[0]);
    }
}
document.getElementById("img-input").addEventListener("change", readImage, false);
</script>
</head>
<body>
    
    <?php
        include('header.php');
    ?>
        <div class="tudoLogin" id="tudoLogin">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <form action="cadastro.act.php" method="post" class="ladoEsquerdoLogin" enctype="multipart/form-data">

            <div class="loginTitulo"><p>Crie sua Conta na Patrono Neves!</p></div>
            <label for="arquivo"> 
            <div class="imgLogin" id="img-container"> 
            <img id="preview" src="../imgs/iconLogin.png">
            </div>
            </label>
            <div class="floating-label-group">
			    <input type="text" name="nome" id="username" class="form-control" autocomplete="off"  required="required" />
				<label class="floating-label">Nome Completo</label>
			</div>
		
            <div class="floating-label-group">
			    <input type="email" name="email" id="username" class="form-control" autocomplete="off"  required="required" />
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
            <div class="floating-label-group" style="display: none;">



            <input type="file" name="foto" id="arquivo" class="arquivo">
				<label class="floating-label">Escolha sua foto</label>
                

                <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" 
                 crossorigin="anonymous"></script>
    
        <script>
            $(function(){
                $('#arquivo').change(function(){
                    const file = $(this)[0].files[0]
                    const fileReader = new FileReader()
                    fileReader.onloadend = function(){
                        $('#preview').attr('src', fileReader.result)
                    }
                    fileReader.readAsDataURL(file)
                })
            })
       
            
        </script>
            </div>
        
            
            <div class="floating-label-group">
			<input type="submit" value="Cadastrar-se" class="form-control" id="btnCad"  onclick="btnDisable()"/>
				
			</div>
    
  
</form>

<div class="linhaLogin">
    
</div>
        <form action="login.act.php" method="post" class="ladoDireitoLogin" enctype="multipart/form-data">
                <div class="loginTitulo"><p>Seja bem-vindo de volta!</p></div>

                <div class="floating-label-group">
                    <input type="email" name="email" id="usuario" class="form-control" autocomplete="off" required="required" />
                    <label class="floating-label">Email:</label>
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