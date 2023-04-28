<?php @session_start(); ?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
   <script src="../scripts/tema.js"></script>
   <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
</head>
<body>
    <div class="navbarAzul" id="navbar">
        <div class="logoPesquisa">
            <div class="logoImg"><a href="inicial.php"><img src="../imgs/logoTCC.png" alt=""></a><a href="inicial.php">Patrono Neves</a></div>
            <p><input type="text" placeholder="Digite aqui sua pesquisa"></p>
            <div class="listaMenu">
                <div></div>
                <div></div>
                <div></div>
            </div>

            <div class="login-perfil">
                <a href="cadCurso.php"><input type="button" value="cadastrarCurso"></a>
            <label class="switch">
  <input type="checkbox" id="switch-shadow" onclick="darkMode()" >
  <span class="slider round"></span>
</label>
                <div class="perfil">
                <?php  require('connect.php');
                @$cod= $_SESSION['cod'];
                @$nome= $_SESSION['nome'];
        
              $perfil = mysqli_query($con, "Select * from `alunos` where `codAluno` = '$cod'");
              $perfil =mysqli_fetch_array($perfil);

             if(!isset($_SESSION['login']) || $_SESSION['login'] != true){
               //echo" <p class=perfilImg> <img src=../imgs/logoTCC.png class=perfil> </p>";
            }
               else{
                   
                echo "<a href=telaPerfilProfessor.php?cod=$perfil[codAluno]> <p class=perfilImg> <img src= $_SESSION[foto] class=perfil> </p></a>";
                
            }
             ?>
                    <!-- <p class="perfilImg"><a href="../pages/telaPerfilProfessor.php"><img src="../imgs/rony.jpg" alt=""></a></p> -->
                </div>
                <div class="link-cadastrar">
                <?php
                    if(!isset($_SESSION['login']) || $_SESSION['login'] != true){
                        echo "<a href=login.php>Login</a>";
                    }else{
                        echo "<a href=logoff.php>Sair</a>";
                    }
                ?>

                </div>
            </div>

        </div>

        <div class="catNavbar">
            <ul>
                <li><a href="../pages/inicial.php">Inicio</a></li>
                <li><a href="../pages/cursos.php">Cursos</a></li>
                <li><a href="../pages/sobre.html">Sobre nós</a></li>
                <li><a href="../pages/telaPerfilProfessor.php">Suporte</a></li>
            </ul>
        </div>
    </div>
</body>
</html>
