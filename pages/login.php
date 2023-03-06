<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Patrono Neves</title>
    <link rel="stylesheet" href="../styles/css/main.css">
    <link rel="stylesheet" href="bootstrap.5.2/css/bootstrap.css">
</head>
<body>
    
    <?php
        include('header.php');
    ?>

    <div class="container px-4 py-5 mx-auto">
        <div style="background-color: #25BE71;" class="card card0">
            <div class="d-flex flex-lg-row flex-column-reverse">
                <div class="card card1">
                    <div class="row justify-content-center my-auto">
                        <div class="col-md-8 col-10 my-5">
                            <form action="login.act.php" method="post">
                            <div class="row justify-content-center px-3 mb-3"> <img src="../imgs/logoTCC.png" alt="" srcset=""> </div>
                            <h3 class="mb-5 text-center heading">Patrono neves</h3>
                            <h4 class="msg-info">Acesse sua conta aqui!</h4>
                            <div class="form-group"> 
                                <label class="form-control-label text-muted">Usuario/Email</label> 
                                <input type="email" id="email" name="email" placeholder="Email@mail.com" class="form-control"> 
                            </div>
                            <div class="form-group"> 
                                <label class="form-control-label text-muted">Senha</label> 
                                <input type="password" id="psw" name="senha" placeholder="Password" class="form-control"> 
                            </div>
                            <div class="row justify-content-center my-3 px-3"> 
                                <button class="btn-block btn-color" type="submit">Login</button> 
                            </div>
                            </form>
                            <div class="row justify-content-center my-2"> 
                                <a href="#"><p class="text-muted">Esqueceu sua senha?</p></a> 
                            </div>
                        </div>
                    </div>
                    <div class="bottom  text-center mb-5">
                        <p href="#" class="sm-text mx-auto mb-3">Não tem conta?><a href="cadastro-cliente.php"><button class="btn btn-white ml-2">Cadastre!</button></a></p>
                    </div>
                </div>
                <div class="bg-success card card2">
                    <div class="my-auto mx-md-5 px-md-5 right">
                        <h1 class="text-white">Patrono Neves</h1> <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    


    <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js'></script>


    <?php
        include('footer.php');
    ?>

</body>
</html>