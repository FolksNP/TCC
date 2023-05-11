<?php require('sec.php'); ?>
<html lang="en">
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
        @session_start();
    ?>


    <div class="conteiner-video">
        <div class="lado-esquerdo">
            <div class="conteudo">
                <h1>Conteúdo</h1>
                <?php
                   $capaCurso = $_GET['capaCurso'];
                   $nomeCurso = $_GET['nomeCurso'];
                   
                   for ($i=1; $i < 10; $i++) { 
                    # code...
                    echo"<div class=caixa-cont>

                    <img src= $capaCurso id=\"thumbAula\" ><Button class=\"video-button-check\" onclick=\"checked()\">$i. $nomeCurso - Aula #00$i</Button>
                   
                </div>";}
                    ?>
                
                <!-- <div class="caixa-cont">
                    <img src="../imgs/php.jpg" id="thumbAula" alt=""><Button class="video-button-check">2. PHP - Aula #002</Button>
                </div>

                <div class="caixa-cont">
                    <img src="../imgs/php.jpg" id="thumbAula" alt=""><Button class="video-button-check">3. PHP - Aula #003</Button>
                </div>

                <div class="caixa-cont">
                    <img src="../imgs/php.jpg" id="thumbAula" alt=""><Button class="video-button-check">4. PHP - Aula #004</Button>
                </div>

                <div class="caixa-cont">
                    <img src="../imgs/php.jpg" id="thumbAula" alt=""><Button class="video-button-check">5. PHP - Aula #005</Button>
                </div>

                <div class="caixa-cont">
                    <img src="../imgs/php.jpg" id="thumbAula" alt=""><Button class="video-button-check">6. PHP - Aula #006</Button>
                </div>

                <div class="caixa-cont">
                    <img src="../imgs/php.jpg" id="thumbAula" alt=""><Button class="video-button-check">7. PHP - Aula #007</Button>
                </div>

                <div class="caixa-cont">
                    <img src="../imgs/php.jpg" id="thumbAula" alt=""><Button class="video-button-check">8. PHP - Aula #008</Button>
                </div>

                <div class="caixa-cont">
                    <img src="../imgs/php.jpg" id="thumbAula" alt=""><Button class="video-button-check">9. PHP - Aula #009</Button>
                </div>

                <div class="caixa-cont">
                    <img src="../imgs/php.jpg" id="thumbAula" alt=""><Button class="video-button-check">10. PHP - Aula #010</Button>
                </div> -->

            </div>
        </div>
            
        <div class="lado-direito">
            <div class="conteudo">
               <?php echo "<h1 id=titulo-aula>Curso $nomeCurso</h1> "?>
                <iframe width="1260" height="710" src="https://www.youtube.com/embed/8E-7iPhM3CI" title="Aula1 ‐ Introdução a Programação Geral" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                <div class="links-inferiores">
                    <ul>
                        <a href="" id="links"><li>Descrição</li></a>
                        <a href="" id="links"><li>Comentários</li></a>
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