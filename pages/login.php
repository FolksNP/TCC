<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <title>Login - Patrono Neves</title>
    <script src="../scripts/login.js"> </script>
    
</head>
<body>
    
    <?php
        include('header.php');
    ?>
        <div class="tudoLogin" id="tudoLogin">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <form action="cadastro.act.php" method="post" class="ladoEsquerdoLogin">

            <div class="loginTitulo"><p>Crie sua Conta na Patrono Neves!</p></div>
            
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
			<input type="submit" value="Cadastrar-se" id="btnCad" class="form-control" onclick="btnDisable()"/>
				
			</div>
    
  
</form>

<div class="linhaLogin">
    
</div>
        <form action="login.act.php" method="post" class="ladoDireitoLogin">
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