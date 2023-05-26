<?php @session_start(); ?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <script type="module" src="http://localhost:8080/shared"></script>
    <script type="module" src="http://localhost:8080/tema"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="  crossorigin="anonymous"></script>
    <script>
    function pesquisar(texto){
        $.ajax({
            type: "post",
            url: "pesquisar.act.php?texto="+texto,
            data: "texto",
            success: function (response) {
                $('#result').html(response);
                
            }
        });
    }
  </script>
    <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
</head>
<body>
    <div class="navbarAzul" id="navbar" id="header">
        <div class="logoPesquisa">
            <div class="logoImg"><a href="inicial.php"><img src="../imgs/logoTCC.png" alt="" id="logo-header"></a><a href="inicial.php">Patrono Neves</a></div>
            <!-- <p><input type="text" placeholder="Digite aqui sua pesquisa"></p> -->

             <a href="pesquisar.php" class="pagPesquisa"><p id="algo-especifico">Procuro algo especifico</p> <img src="../imgs/lupa.png" alt=""></a>

            <div class="login-perfil">
                
            <!-- <label class="switch">
    <input type="checkbox" id="switch-shadow" onclick="darkMode()" >
    <span class="slider round"></span> -->
<!-- </label> -->
                <div class="perfil">
                <?php  require('connect.php');
                @$cod = $_SESSION['cod'];
                @$nome = $_SESSION['nome'];
                if(isset($_SESSION['arquivo'])){
                    $_SESSION['foto'] = $_SESSION['arquivo'];
               }
             
              $perfil = mysqli_query($con, "Select * from `alunos` where `codAluno` = '$cod'");
              $perfil =mysqli_fetch_array($perfil);

             if(!isset($_SESSION['login']) || $_SESSION['login'] != true){
               //echo" <p class=perfilImg> <img src=../imgs/logoTCC.png class=perfil> </p>";
            }
               else{
                   
                echo "<a href=telaPerfil.php?cod=$perfil[codAluno]> <p class=perfilImg> <img src= $_SESSION[foto] class=perfil> </p></a>";
                
            }
             ?>
                    <!-- <p class="perfilImg"><a href="../pages/telaPerfil.php"><img src="../imgs/rony.jpg" alt=""></a></p> -->
                </div>
                <div class="link-cadastrar">
                <?php
                    if(!isset($_SESSION['login']) || $_SESSION['login'] != true){
                        echo "<a href=login.php>Login</a>";
                    }else{
                      //  echo "<a href=logoff.php>Sair</a>";
                    }
                ?>

                </div>
            </div>



        </div>



        <div class="catNavbar">
            <ul>
                <li><a href="../pages/inicial.php">Inicio</a></li>
                <li><a href="../pages/cursos.php">Cursos</a></li>
                <li><a href="../pages/sobre.php">Sobre </a></li>
                <li><a href="../pages/telaPerfil.php">Dashboard</a></li>
            </ul>
        </div>
    </div>

    <div id="container-hamburguer">
        <div class="topnav">
            <div id="myLinks">
                <li><a href="../pages/inicial.php">Inicio</a></li>
                <li><a href="../pages/cursos.php">Cursos</a></li>
                <li><a href="../pages/sobre.php">Sobre </a></li>
                <li><a href="../pages/telaPerfil.php">Suporte</a></li>
            </div>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <button id="hmb-menu">Menu</button>
            </a>
        </div>
    </div>

    <script>
        function myFunction() {
            var x = document.getElementById("myLinks");
            if (x.style.display === "block") {
                x.style.display = "none";
            } else {
                x.style.display = "block";
            }
        }
    </script>

</body>
</html>
