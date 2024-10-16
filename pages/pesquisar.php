<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
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
    <title>Document</title>
</head>
<body>
    <?php include('header.php'); ?>

        <div class="pBusca">
            <p><img src="../imgs/procurar.png" alt=""></p>
            <p>Olá <?php echo $_SESSION['nome'] ?>. Insira abaixo sua pesquisa.</p>
            <input type="text" name="" class="pesquisa" placeholder="Digite aqui" id="txtPesquisar" onkeyup="pesquisar(this.value)">
        </div>

    <div id="result"></div>
    <?php include('footer.php'); ?>
</body>
</html>