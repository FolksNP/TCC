<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
    <title>Login - Patrono Neves</title>
</head>



<body>
    <script src="../scripts/login.js"> </script>
    <div class="bodyRegistro">
        <a href="inicial.php" class="voltar"><img src="../imgs/home.png" alt=""></a>
    <div class="containerRegistro" id="containerRegistro">
        <div class="content1  sign-in-containerRegistro"> 
            <form class="loginCadastro" action="login.act.php" method="post" enctype="multipart/form-data">
                <h2 class="tituloForm1">Login</h2> 
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
                <?php  
                session_start();
                @$cod= $_SESSION['cod'];
                if(isset($_SESSION['msgLogin'])){
                echo "<p class=alert>$_SESSION[msgLogin]</p>";
                unset($_SESSION['msgLogin']);          
        }

    ?>

                <div class="floating-label-group">
                    <input type="submit" value="Entrar" class="form-control"/>
                </div>
            </form>
        </div> 
        <div class="content1 sign-up-containerRegistro"> 
            <form class="loginCadastro" action="cadastro.act.php" method="post" enctype="multipart/form-data">
                <h2 class="tituloForm2">Crie sua Conta</h2> 
                
                <p class="texto">Será um enorme prazer te-lo conosco!</p>

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
             


            <div class="floating-label-group">
			<input type="submit" value="Cadastrar-se" class="form-control" id="cadastroBtn"  onclick="btnDisable()"/>	
			</div>
            </form>
        </div>  
        
        <div class="overlay-containerRegistro">
            <div class="overlay">
                <div class="content2 contentEsq">
                 <h2 class="tituloInform">Bem vindo, novamente!</h2>
                    <p class="texto2">Se você ja tem uma conta faça o seu login</p>
                    <button class="btn2 btnLogin2" id="signIn">Entrar</button>
                </div>
                <div class="content2 contentDir">
                    <h2 class="tituloInform">Olá, novo Amigo</h2>
                    <p class="texto2">Cadastre-se com seu e-mail para se juntar a nós</p>
                    <button class="btn2 btnCadastro2" id="signUp"></span>Cadastro</span></button>
                </div>
           </div>
        </div>
    </div>

    <div class="noturno">
		<input type="checkbox" class="checkbox" id="checkbox">
			<label for="checkbox" class="label">
				<i class="fas fa-moon"></i>
				<i class="fas fa-sun"></i>
				<div class ="ball"></div>
			</label>
		</div>

    </div>
    <script src="../scripts/loginTeste.js"></script>

</body>
</html>
<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <title>Document</title>
</head>
<body>
    

<div class="LoginPageContainerRegistro">
    <div class="LoginPageInnerContainer">
        <div class="ImageContianer">
            <img src="../imgs/logoTCC.png" class="GroupImage">
            
        </div>
        <div class="LoginFormContainer">
            <div class="LoginFormInnerContainer">
                <div class="LogoContainer">
                    <h2>Patrono Neves</h2>
                </div>
                <header class="header">Login</header>
                <header class="subHeader">Bem vindo de volta à <b>Patrono Neves!</b> entre com sua conta. </header>

                <form action="login.act.php" method="post" enctype="multipart/form-data">
                    <div class="inputContainer">
                        <label class="label" for="emailAddress"><img src="https://i.imgur.com/Hn13wvm.png" class="labelIcon"><span>Email*</span></label>
                        <input type="email" name="email" class="input"  id="usuario" placeholder="Enter your Email Address" autocomplete="off" required="required" >
                        
                    </div>
                    <div class="inputContainer">
                        <label class="label" for="emailAddress"><img src="https://i.imgur.com/g5SvdfG.png"
                                class="labelIcon"><span>Senha*</span></label>
                        <input type="password" name="password" id="senhaLogin" class="input" autocomplete="off" required="required"  placeholder="Enter your Password" />
                        
                    </div>
                    <div class="OptionsContainer">
                        <div class="checkboxContainer">
                            <input type="checkbox" id="RememberMe" class="checkbox"> <label for="RememberMe">Lembre-me</label>
                        </div>
                        <a href="#" class="ForgotPasswordLink">Esqueceu a senha?</a>
                    </div>
                    
                    <input type="submit" value="Entrar" class="LoginButton"/>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html> -->