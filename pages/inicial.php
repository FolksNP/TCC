<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
    <title>Patrono Neves</title>
    <script type="module" src="http://localhost:8080/shared"></script>
    <script type="module" src="http://localhost:8080/tema"></script>
</head>
    <body>
    <?php include('header.php') ?>

  

    <div class="tudoInicial">
       
        <div class="banner" id="banner">

        <img src="../imgs/logoTCC.png" alt="">

        <div class="beneficios">
        <div class="card">
            <div class="circle"></div>
            <div class="circle"></div>
             <div class="card-inner">
                <div><img src="../imgs/certificado.png" alt=""></div>
                <div><p>Conquiste seu certificado</p></div>
            </div>
        </div>
        <div class="card">
            <div class="circle"></div>
            <div class="circle"></div>
            <div class="card-inner">
                <div><img src="../imgs/foguete.png" alt=""></div>
                <div><p>Turbine seu Currículo</p></div>
            </div>
        </div>
        <div class="card">
            <div class="circle"></div>
            <div class="circle"></div>
             <div class="card-inner">
                <div><img src="../imgs/real.png" alt=""></div>
                <div><p>Educação que cabe no Bolso</p></div>
            </div>
        </div>
            <!-- <div class="card">
                <div class="card2"> 
                <img src="../imgs/real.png" alt="">
                <p>Educação que cabe <br> no bolso</p>
                <p>Tenha acesso aos melhores cursos, descubra novos conhecimentos e adentre no mundo da educação </p>
                
            </div>
            </div>

         <div class="card">
                <div class="card2"> 
                <img src="../imgs/foguete.png" alt="">
                <p>Turbine seu Currículo</p>
                <p>Cursos para você estudar, enriquecer seu currículo e aumentar suas chances de ingresso no mercado de trabalho.</p>
                
            </div>
         </div>
         <div class="card">
                <div class="card2"> 
                <img src="../imgs/certificado.png" alt="">
                <p>Consquiste seu certificado</p>
                <p>Ao ser aprovado nos cursos, você mesmo imprime o seu certificado!</p>
                
            </div> -->
         </div>
        </div>
           
            
          
        </div>
        <div class="txtCursos">
            <h2>Cursos Nas Áreas de:</h2>
        </div>
        <div class="cursosAreas" id="cursosArea">
            
            <div class="cardCurso" id="cardCurso0">
        <h2>Tecnologia</h2>
        </div>
        <div class="cardCurso" id="cardCurso1">
        <h2>Marcenaria</h2>
        </div>
        <div class="cardCurso" id="cardCurso2">
        <h2>Artes</h2>
        </div>
        <div class="cardCurso" id="cardCurso3">
        <h2>Culinária</h2>
        </div>
        </div>
     
        <div class="busqueCursos" id="buscaCurso">
    <div class="busqueCursosTxt">
        <p>Escolha Seu Futuro</p>
        <p>Busque por um curso de seu interesse</p>
    </div>
    <div class="inputPesquisaInicial">
        <div>
            <a href="pesquisar.php">
            <img src="../imgs/lupa.png" alt="lupa" ><input type="button" name="pesquisaCurso" value="Procure um curso" id="lupa"><p><label for="lupa">Buscar</label></p>
            </a>
        </div>
    </div>
    <p><a href="cursos.php">Ver todos os cursos</a></p>
</div>

        <div class="perguntasFrequentesTudo" id="pergFreq">
            <div class="perguntasImg">
                <img src="../imgs/faq (4).png" alt="">
            </div>
            
            <div class="perguntasFAQ">
                <div class="perguntasTxt"><p>Perguntas que talvez você possa fazer</p></div>
                    <p><a href="">Posso fazer dois cursos ao mesmo tempo? <strong>R:Sim</strong></a></p>
                    <p><a href="">Posso fazer algum curso mesmo sendo professor? <strong> R:Sim</strong></a></p>
                    <p><a href="">É preciso ter conhecimento prévio para fazer os cursos?<strong> R:Não</strong></a></p>
                    <p><a href="">Os curso possuem prazos para sua conclusão? <strong>R:Não</strong></a></p>
                    
            </div>
        </div>
    </div>

    <?php include('footer.php') ?>

 
</body>
</html>