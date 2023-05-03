<?php
@session_start();
            @$codigo = $_GET['cod'];
            require('connect.php');
            $busca = mysqli_query($con, "Select * from `alunos` where `codAluno` = '$codigo'");
            $perfil = mysqli_fetch_array($busca);
    ?>
<div class="direitaPerfil" id="direitaPerfilAlterar">
         <form class="alterLogin" action="alterarPerfil.act.php" method="post" enctype="multipart/form-data">
            <input type="hidden" name="codigo" value="<?php echo @$perfil['codAluno']; ?>">
            <input type="hidden" name="foto_anterior" value="<?php echo @$perfil['fotoAluno']; ?>">
            <p>Nome: <input type="text" name="nome" value="<?php echo @$perfil['nomeAluno'];?>"></p>
            <p><input type="file" name="foto" id="arquivo" class="arquivoPerfil">
 
            <div id="img-container">
            <p><label class="btnFoto" for="arquivo"><img id="previewPerfil" src="<?php echo @$perfil['fotoAluno'];?>"></label></p>
            </div></p>
            <p>Email: <input type="email" name="email" value="<?php echo @$perfil['emailAluno'];?>"></"></p>
            <p>Senha: <input type="password" name="password"></p>

            <p><label class="btnFoto" for="arquivo">Foto</label></p>
            <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" 
        crossorigin="anonymous"></script>
    
        <script>
            $(function(){
                $('#arquivo').change(function(){
                    const file = $(this)[0].files[0]
                    const fileReader = new FileReader()
                    fileReader.onloadend = function(){
                        $('#previewPerfil').attr('src', fileReader.result)
                    }
                    fileReader.readAsDataURL(file)
                })
            })
        </script>

            <p><input type="submit" value="Alterar"></p>


        </form>

</div>