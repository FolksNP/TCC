<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="script" href="carrossel.js">
    <link rel="stylesheet" href="../style.css">
    <script src="script.js" defer></script>
    <title>Document</title>
</head>
<body>
    <?php
    include('header.php'); 
    ?>
    <div class="tudo-sugest">

        <div class="esquerda">

                <div class="esquerda-cima">
                            <div class="esquerda-img">
                                <img src="imgs/html.jpg" alt="">
                            </div>
                            <div class="esquerda-txt">
                                    <p><h2>CURSO DE HTML</h2></p>
                                    <P>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni animi nobis accusantium perspiciatis natus dicta,
                                         amet repellat exercitationem aliquid id. Perspiciatis optio adipisci recusandae est nihil nemo labore nisi eius!</P>
                                         <div class="estrela">☆☆☆☆☆</div>
                            </div>
                            <div class="inf">
                                <div class="inf-turmas">
                                <p><input type="button" value="Ver Turmas"></p>
                                </div>
                              <div class="inf-cursos">
                                    <p><input type="button" value="Grade Currícular"></p>
                                </div>
                                <div class="inf-fav">
                                <p><input type="button" value="Adicionar Aos Favoritos"></p>
                                </div>
                            </div>
                    </div>

                 <div class="esquerda-baixo">
                        <h2>Avaliações </h2>
                        <P>Muito bom (50%) </P>
                        <p>Ótimo (40%)</p>
                        <p>Regular (9%)</p>
                        <P>Ruim (1%)</P>
                    </div>

        </div>

        <div class="direita">

            <div class="direita-txt">
                <h2>SUGESTÕES</h2>
                </div>

                <div class="direita-curso">
                    <div class="img-curso">
                    <img src="imgs/php" alt="">
                   <div class="avaliacao">
                    <p>Curso PHP</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                   <p> ☆☆☆☆☆</p></div>
                   </div> 
                   <div class="img-curso">
                    <img src="imgs/java.jpg" alt="">
                   <div class="avaliacao">
                    <p>Curso JavaScript</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                   <p> ☆☆☆☆☆</p></div>
                   </div> <div class="img-curso">
                    <img src="imgs/html.jpg" alt="">
                   <div class="avaliacao">
                    <p>Curso HTML 5</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                   <p> ☆☆☆☆☆</p></div>
                   </div> <div class="img-curso">
                    <img src="imgs/php" alt="">
                   <div class="avaliacao">
                    <p>Curso PHP</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                   <p> ☆☆☆☆☆</p></div>
                   </div>
                </div>
        </div>
    </div>
    <?php
    include('footer.php');
    ?>
</body>
</html>
