<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <title>Login - Patrono Neves</title>
   
    
    
</head>
<body>
    
    <?php
        include('header.php');
    ?>
        <div class="tudoLogin">
            <div class="ladoEsquerdoLogin">

            <div class="loginTitulo"><p>Crie sua Conta na Patrono Neves!</p></div>
            
        <div class="inputLogin">
         <input type="text" name="nome" placeholder="Nome Completo">
        </div>
        <div class="inputLogin">
        <input type="text" name="usuario" placeholder="Usuário">
        </div>
        <div class="inputLogin">
     <input type="email" name="email" placeholder="email">
    </div>
    <div class="inputLogin">
    <input type="password" name="senha" placeholder="Senha">
    </div>
    <div class="inputLogin">
     <input type="password" name="senha" placeholder="Confirme sua Senha">
    </div>
    <div class="inputLogin">
     <input type="submit" name="cadastrar" value="Cadastrar-se">
    </div>
    
  
            </div>

 <div class="imgLogin">
            <!-- <img src="../imgs/logoTCC.png" alt=""> -->
            </div> 

            <div class="ladoDireitoLogin">
            <div class="loginTitulo"><p>Seja bem-vindo de volta!</p></div>
    <div class="inputLogin">
    <input type="email" name="email" placeholder="email">
    </div>
    <div class="inputLogin">
     <input type="password" name="senha" placeholder="Senha">
    </div>
    <div class="inputLogin">
     <input type="submit" name="entrar" value="Entrar">
    </div>
    <div class="inputLogin">
     <input type="checkbox" name="lembrar"><p>Mantenha-me conectado </p>
    </div>
    <div class="redefinirSenha">
        <a href="#"><p>Esqueci meu login</p></a>
    </div>
    </div>
    
        </div>
    <?php
        include('footer.php');
    ?>

</body>
</html>