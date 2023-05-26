<?php require('sec.php'); ?>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patrono Neves - Aulas</title>
    <link rel="stylesheet" href="../styles/css/main.css">
    <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
</head>
<body>
    
    <?php
        include ('header.php');
        require ('connect.php');

        $codVideo =  $_GET['codCurso'];
        $capaCurso =  $_GET['capaCurso'];
        $nomeCurso =  $_GET['nomeCurso'];
        $videos = mysqli_query($con, " SELECT * FROM `aulas` WHERE `codCurso` = '$codVideo'");
        $video =  mysqli_fetch_array($videos);
    ?>

    <div class="conteiner-video">
        <div class="lado-esquerdo">
            <div class="conteudo">
                <h1>Conteúdo</h1>
                <?php
               
                    # code...
                
             echo "<div class=caixa-cont>
            <img src=$capaCurso id=thumbAula alt=><Button class=video-button-check onclick=checked()>1. Introdução a programação geral - Aula #001</Button>
                </div>"  ;
                
            ?>

            </div>
        </div>
            
        <div class="lado-direito">
            <div class="conteudo">
                <h1 id="titulo-aula">Introdução a programação geral - Aula #001</h1>                   
                <!-- 1260 710 -->
                <!-- <video width="100%" height="50%" src="" title="Aula1 ‐ Introdução a Programação Geral" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></video> -->
                <!-- player de video personalizado -->
                <div class="custom-video-player">
                    <video width="100%" height="500px" controls>
                        <?php //echo " <source src=$video[video] type=video/mp4> "; ?>
                        <source src="../videos/int.mp4" type=video/mp4>
                        Your browser does not support the video tag.
                    </video>
                 
                </div>
                
                <div class="links-inferiores">
                    <ul>
                        <a href="" id="links"><li>Descrição</li></a>
                        <a href="" id="links"><li>Arquivos</li></a>
                        <a href="" id="links"><li>Referências</li></a>
                    </ul>
                </div>
                <div class="conteudo-inferior">
                    <p>Sobre a aula: Lorem ipsum dolor sit amet consectetur, adipisicing elit. Optio, consequatur eaque magnam deserunt nulla iste? Commodi, et? Voluptates harum quas deleniti optio est nostrum nemo, numquam, saepe non illo officiis.</p>
                    <br>
                    <p>Outras Redes Sociais:</p>
                    <p>https://twitter.com</p>
                    <p>https://youtube.com</p>
                    <p>https://www.instagram.com</p>
                    <p>https://www.facebook.com</p>

                </div>
            </div>
        </div>
    </div>
    
    <?php 


        // $queryProgressos = "SELECT codProgresso FROM progressos WHERE matricula = $matricula";
        // $queryAulas = "SELECT codProgressoAula FROM progressosaulas WHERE codProgresso = $codProgresso AND aula = $aula";
        
        // // Inserir um novo registro na tabela "progressos"
        // $query1 = "INSERT INTO progressos (matricula) VALUES ($matricula)";
        // // Executar a consulta acima e obter o código de progresso gerado
        // $codProgresso = mysqli_insert_id($con);

        // // Inserir um novo registro na tabela "progressosaulas" com base no código de progresso gerado
        // $query2 = "INSERT INTO progressosaulas (codProgressoAula, aula) VALUES ($codProgresso, $aula)";

        // Verificar se o progresso já existe para a matrícula do aluno
        @$scan = "SELECT codProgresso FROM progressos WHERE matricula = $matricula";
        $retorno = mysqli_query($con, $scan);
        
        if (@mysqli_num_rows($retorno) == 0) {
            // Não há progresso existente para a matrícula fornecida
        
            // Inserir um novo registro na tabela "progressos"
            @$query1 = "INSERT INTO progressos (matricula) VALUES ($matricula)";
            mysqli_query($con, $query1);
        
            // Obter o código de progresso gerado
            $codProgresso = mysqli_insert_id($con);
        
            // Inserir um novo registro na tabela "progressosaulas" com base no código de progresso gerado
            @$query2 = "INSERT INTO progressosaulas (codProgressoAula, aula) VALUES ($codProgresso, $aula)";
            mysqli_query($con, $query2);
        
            //echo "Registros de progresso e progresso de aula criados com sucesso!";
        } else {
            //echo "O progresso já existe para a matrícula fornecida.";
        }
        //var_dump($con);

        // essa variavel $progresso é de onde deve-se tirar todo o progresso do aluno para posteriormente cadastrar no banco de dados.
        // aonde temos os valores 12 1 2 é onde vai ser implementado variaveis para extrair informações do progresso do alumo
        $progresso = array(
            'codProgresso' => NULL,
        );

        $progressoJSON = json_encode($progresso);

        $requestHandle = curl_init('http://localhost:8080/progresso');
        curl_setopt($requestHandle, CURLOPT_CUSTOMREQUEST, 'POST');
        curl_setopt($requestHandle, CURLOPT_POSTFIELDS, $progressoJSON);
        curl_setopt($requestHandle, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json',
            'Content-Length: ' . strlen($progressoJSON)
        ));
        curl_close($requestHandle);
    ?>

    <script type="module" src="http://localhost:8080/shared"></script>
    <script type="module" src="http://localhost:8080/video"></script>
    <script>

        function checked(){
            let caixa = document.querySelector(".caixa-cont")
            caixa.style.background = 'green'
        }
    </script>

    <?php
        include ('footer.php');
    ?>  
</body>
</html>